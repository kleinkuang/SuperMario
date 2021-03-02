# File:		SuperMario_Thread.py
# Author: 	Lei Kuang
# Date:		1st March 2021
# @ Imperial College London

# ----------------------------------------------------------------
# UI Import
# ----------------------------------------------------------------
from PyQt5.QtCore import pyqtSignal, QThread

# ----------------------------------------------------------------
# System Import
# ----------------------------------------------------------------
import time
import numpy as np
import threading

# ----------------------------------------------------------------
# FT601Q Import
# ----------------------------------------------------------------
import _ftd3xx_win32 as _ft
import ftd3xx
from ftd3xx_defines import *
from ctypes import *

# ----------------------------------------------------------------
# User Import
# ----------------------------------------------------------------
from SuperMario_Func   import *

# Readout ----------------------------------------------------------------------------------------------------------------------------
class Readout(QThread):
    status_s    = None
    update_s    = pyqtSignal(int)
    msgbox_s    = None
    done_s      = pyqtSignal(bool)
    
    size        = 10240 * 16
    run         = False
    file_path   = None

    def __init__(self, serial, plot, parent=None):
        super(Readout, self).__init__(parent)
        self.serial_obj = serial
        self.plot_obj   = plot

    def run(self):
        try:
            # Power on
            self.serial_obj.execute_cmd("power_on")
            time.sleep(1)
            self.tick = time.time()

            # Initialize FT601Q
            # - Check connected devices
            numDevices = ftd3xx.createDeviceInfoList()
            if(numDevices==0):
                self.msgbox_s.emit("FT601 not connected !")
                raise IOError
            # - Open the first device (index 0)
            self.usb_obj = ftd3xx.create(0, _ft.FT_OPEN_BY_INDEX)
            self.usb_obj.setPipeTimeout(0x82, 0)
            # - Set stream pipe 64K
            self.usb_obj.setStreamPipe(0x82, self.size)

            # ----------------------------------------------------------------------------------------------------------------------------
            self.run = True
            while(self.run):
                data = self.usb_obj.readPipeEx(0x82, self.size, raw=True)
                data = data['bytes']

                threading.Thread(target=self.save_and_plot, args=(data, )).start()
            # ----------------------------------------------------------------------------------------------------------------------------
            
            # Power off
            self.serial_obj.execute_cmd("power_off")
            self.usb_obj.close()
        except Exception as e:
            print(str(e))
            self.done_s.emit(False)
        else:
            self.done_s.emit(True)

    def save_and_plot(self, data):
        data = np.frombuffer(data, dtype=np.uint8)
        
        if(self.save):
            data.astype('uint8').tofile(self.file_path + '\F_%s.bin' % get_date_time(2))
            
        if(self.plot_obj.busy!=True):
            self.plot_obj.busy = True
            self.plot_obj.plot_3d(np.array(data[0:128*128]))
            self.plot_obj.busy = False

    def stop(self):
        self.run = False
        
    def config(self, file_path,  save):
        self.file_path = file_path
        self.save = save

# Serial general command ---------------------------------------------------------------------------------------------------------
class Serial_General_Cmd(QThread):
    done_s = None

    command  = None
    response = True
    
    def __init__(self, serial, parent=None):
        super(Serial_General_Cmd, self).__init__(parent)
        self.serial_obj = serial

    def run(self):
        self.serial_obj.serial_timeout = 10000000
        
        try:
            r = self.serial_obj.execute_cmd(self.command)
            if(self.response):
                self.done_s.emit("R: %s\n" % (r if type(r) is not list else str(r)))
        except Exception as e:
            print(str(e))
            pass
            
        self.serial_obj.serial_timeout = 1000000

# Open a serial port -------------------------------------------------------------------------------------------------------------
class Serial_Open_Port(QThread):
    done_s   = pyqtSignal(list)

    def __init__(self, serial, parent=None):
        super(Serial_Open_Port, self).__init__(parent)
        self.serial_obj = serial

    def run(self):
        try:
            # Open serial
            self.serial_obj.open_serial(self.serial_port)
            self.serial_obj.clear()
            # Firmware version
            ver = self.serial_obj.execute_cmd("get_version")
        except Exception as e:
            print(str(e))
            self.done_s.emit([])
        else:
            self.done_s.emit([self.serial_port, ver])

    def config(self, serial_port):
        self.serial_port = serial_port
    
# List available serial ports ----------------------------------------------------------------------------------------------------
class Serial_List_Port(QThread):
    done_s   = pyqtSignal(list)

    def __init__(self, serial, parent=None):
        super(Serial_List_Port, self).__init__(parent)
        self.serial_obj = serial

    def run(self):
        (port_name, port_list) = self.serial_obj.list_serial()
        self.done_s.emit([port_name, port_list])
