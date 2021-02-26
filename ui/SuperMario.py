# -*- coding: utf-8 -*-

"""
Module implementing SuperMario_Dialog.
"""

# ----------------------------------------------------------------
# UI Import
# ----------------------------------------------------------------
#from PyQt5 import QtCore
from PyQt5.QtGui import QTextCursor
from PyQt5.QtCore import pyqtSignal, pyqtSlot, QThread
from PyQt5.QtWidgets import QMainWindow, QApplication, QMessageBox, QFileDialog, QCompleter

from Ui_SuperMario import Ui_SuperMario_Dialog

# ----------------------------------------------------------------
# System Import
# ----------------------------------------------------------------
import os
import time
import datetime
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
from SuperMario_Cmd import *
from SuperMario_Plot import SuperMario_Plot

# ----------------------------------------------------------------
# Function
# ----------------------------------------------------------------
# Get current date and time, e.g., '20200224' -> 2020 Feb 24
def get_date(fraction = 0):
    return datetime.datetime.now().isoformat().replace('-','').replace(':','')[0:8]

# Get current date and time, e.g., '20200224T141323'
def get_date_time(fraction = 0):
    return datetime.datetime.now().isoformat().replace('-','').replace(':','')[0:(15 + (0 if fraction==0 else (1 + fraction)))]

# ----------------------------------------------------------------
# QThread
# ----------------------------------------------------------------
class Update_Serial_Port(QThread):
    status_s    = None
    update_s    = pyqtSignal(list)
    msgbox_s    = None

    def __init__(self, serial, parent=None):
        super(Update_Serial_Port, self).__init__(parent)
        self.serial_obj = serial

    def __del__(self):
        pass

    def run(self):
        self.status_s.emit(True)
        try:
            serial_port = self.serial_obj.list_serial()
            self.update_s.emit(serial_port)
        except:
            pass
        self.status_s.emit(False)

# For commands that need long time to execute
# - Use individual thread for dynamic print
class General_Serial_CMD(QThread):
    status_s    = None
    update_s    = pyqtSignal(str)
    msgbox_s    = None
    
    command     = None
    
    def __init__(self, serial, parent=None):
        super(General_Serial_CMD, self).__init__(parent)
        self.serial_obj = serial

    def run(self):
        self.status_s.emit(True)
        self.serial_obj.set_timeout(10000000)
        # --------------------------------
        try:
            r = self.serial_obj.execute_cmd(self.command)
            self.update_s.emit("R: %s\n" % (r if type(r) is not list else str(r)))
        except:
            pass
        # --------------------------------
        self.serial_obj.set_timeout(100000)
        self.status_s.emit(False)

# Readout
class Readout(QThread):
    status_s    = None
    update_s    = pyqtSignal(int)
    msgbox_s    = None
    done_s      = pyqtSignal(bool)
    
    run         = False
    file_path   = None
    offset_en   = False
    offset_clr  = False
    offset      = np.zeros(128*128)
    
    thread_obj  = []
    thread_cnt  = 0
    
    def __init__(self, serial, plot, parent=None):
        super(Readout, self).__init__(parent)
        self.serial_obj = serial
        self.plot_obj   = plot

    def run(self):
        # Reset readout system
        self.serial_obj.execute_cmd("set_nrst 0")
        time.sleep(0.5)
        self.serial_obj.execute_cmd("set_nrst 1")
        time.sleep(0.5)
        self.tick = time.time()

        # Check connected devices
        numDevices = ftd3xx.createDeviceInfoList()
        if(numDevices==0):
            self.msgbox_s.emit("FT601 not connected !")
            raise IOError
        # Open the first device (index 0)
        self.usb_obj = ftd3xx.create(0, _ft.FT_OPEN_BY_INDEX)
        self.usb_obj.setPipeTimeout(0x82, 0)
        # Set stream pipe 64K
        self.usb_obj.setStreamPipe(0x82, 1024 * 16)
        # --------------------------------
        self.offset = np.zeros(128*128)
        self.run = True
        while(self.run):
            data = self.usb_obj.readPipeEx(0x82, 1024 * 16, raw=True)
            #print(data['bytesTransferred'])
            data = data['bytes']
            threading.Thread(target=self.save_and_plot, args=(data, )).start()
        # --------------------------------
        self.usb_obj.close()
        self.done_s.emit(True)
    
    def data_acquisition(self):
        data = self.usb_obj.readPipeEx(0x82, 1024 * 128, raw=True)
        if(self.run):
            threading.Thread(target=self.data_acquisition).start()
        #print(data['bytesTransferred'])
        data = data['bytes']
        #self.save_and_plot(data)
        
    def save_and_plot(self, data):
        data = np.frombuffer(data, dtype=np.uint8)
        if(self.save):
            data.astype('uint8').tofile(self.file_path + '\F_%s.bin' % get_date_time(2))
        if(self.plot_obj.busy!=True):
            self.plot_obj.busy = True
            if(self.offset_en):
                self.offset_en = False
                self.offset = np.array(data[0:128*128]) - 128
            if(self.offset_clr):
                self.offset_clr = False
                self.offset = np.zeros(128*128)
            self.plot_obj.plot_3d(np.array(data[0:128*128]) - self.offset)
            self.plot_obj.busy = False
        '''if(time.time() - self.tick >=2):
            self.tick  = time.time()
            full = self.serial_obj.execute_cmd('get_fifo_full')
            self.update_s.emit(full)'''
            
    def stop(self):
        self.run = False
        
    def config(self, file_path,  save):
        self.file_path = file_path
        self.save = save
        
# Readout
class Concatenation(QThread):
    status_s    = None
    update_s    = pyqtSignal(int)
    msgbox_s    = None
    done_s      = pyqtSignal(bool)

    file_path   = None
    file_list   = None
    
    def __init__(self, parent=None):
        super(Concatenation, self).__init__(parent)

    def run(self):
        file_len  = len(self.file_list)
        # Write
        fw = open(self.file_path + '/' + 'all.bin', 'ab')
        # Read
        for n in range(0, file_len):
            id = self.file_path + '/' + self.file_list[n]
            fr = open(id, 'rb')
            data = fr.read()
            fr.close()
            os. remove(id)
            fw.write(data)
            self.update_s.emit(int(n*100/(file_len-1)))
        fw.close()
        
    def config(self, file_path,  file_list):
        self.file_path = file_path
        self.file_list = file_list
# ----------------------------------------------------------------
# UI Dialog
# ----------------------------------------------------------------
class SuperMario_Dialog(QMainWindow, Ui_SuperMario_Dialog):
    # Variable
    serial_obj         = None           # Instance of Serial
    serial_port        = ['Refresh']    # List of serial com port
    plot_obj           = None
    
    # Thread
    update_serial_port_t = None
    general_serial_cmd_t = None
    readout_t            = None
    readout_plot_t       = None
    concatenation_t      = None

    # Signal
    serial_status   = pyqtSignal(bool)
    console_s       = pyqtSignal(str)
    error_msgbox_s  = pyqtSignal(str)
    info_msgbox_s   = pyqtSignal(str)

    def __init__(self, parent=None):
        super(SuperMario_Dialog, self).__init__(parent)
        self.setupUi(self)
        self.setGeometry(800, 300, 931, 531)
        self.setFixedSize(930, 440)
        
        # Auto complete user command
        self.user_cmd_lineEdit.setCompleter(QCompleter(command_list, self.user_cmd_lineEdit))
        
        # UI
        self.plot_obj = SuperMario_Plot()
        self.plot_obj.show_window()

        # Serial
        self.serial_obj           = Debug_Command()
        self.serial_obj.status_s  = self.serial_status
        self.serial_obj.console_s = self.console_s
        self.serial_obj.msgbox_s  = self.error_msgbox_s
        
        # Shared System I/O
        self.serial_status.connect(self.set_ui_serial_status)
        self.console_s.connect(self.print)
        self.error_msgbox_s.connect(self.send_error)
        self.info_msgbox_s.connect(self.send_info)
        
        # Thread
        # - Update the list of serial port
        self.update_serial_port_t = Update_Serial_Port(self.serial_obj)
        self.update_serial_port_t.status_s = self.serial_status
        self.update_serial_port_t.update_s.connect(self.update_serial_port_ui)
        self.update_serial_port_t.start()
        # - Execute commands that require long time
        self.general_serial_cmd_t = General_Serial_CMD(self.serial_obj)
        self.general_serial_cmd_t.status_s = self.serial_status
        self.general_serial_cmd_t.msgbox_s = self.info_msgbox_s
        # - Readout
        self.readout_rt = Readout(self.serial_obj, self.plot_obj)
        self.readout_rt.update_s.connect(self.rt_readout_update)
        self.readout_rt.done_s.connect(self.rt_readout_done)
        self.readout_rt.msgbox_s  = self.error_msgbox_s
        # - Concatenation
        self.concatenation_t = Concatenation()
        self.concatenation_t.update_s.connect(self.set_progress)

    # ----------------------------------------------------------------
    # System I/O
    # ----------------------------------------------------------------
    # UI Status: RUNNING(red) vs IDLE(green)
    def set_ui_serial_status(self, status):
        self.ui_status_label.setText('RUNNING' if status else 'IDLE')
        self.ui_status_label.setStyleSheet("background-color: %s" %("#FF0000" if status else "#00FF00"))
        
    def get_ui_serial_status(self):
        return True if self.ui_status_label.text()=='IDLE' else False
    
    # Read User input, accept 1) Dec: '123', Hex: '0xFF' and Bin: '0b100'
    def str2num(self, str):
        try:
            return int(str, 0)
        except:
            self.send_error("Invalid Input: %s" % str)
            raise ValueError
        
    def send_question(self, msg):
        return (QMessageBox.question(self, "Question", msg, QMessageBox.Yes | QMessageBox.No) == QMessageBox.Yes)

    def send_error(self, msg):
        QMessageBox.critical(self, "Error", msg, QMessageBox.Ok)

    def send_warning(self, msg):
        QMessageBox.warning(self, "Warning", msg, QMessageBox.Ok)
        
    def send_info(self, msg):
        QMessageBox.information(self, "Infotmation", msg, QMessageBox.Ok)
        
    def select_file(self, path_init='C:/'):
        return QFileDialog.getOpenFileName(self, "Select File", path_init)
        
    def select_folder(self, path_init='C:/'):
        return QFileDialog.getExistingDirectory(self, "Select Folder", path_init)
        
    def list_folder(self, folder_path):
        try:
            folder_list = os.listdir(folder_path)
        except:
            self.send_error("Invalid folder path !")
            raise SystemError
        return folder_list

    def create_folder_if_not_existed(self, folder_path, folder_name, ask = False):
        try:
            folder_list = self.list_folder(folder_path)
        except:
            if(self.send_question("Would you like to create folder %s?" % folder_path)):
                os.mkdir(folder_path)
                folder_list = self.list_folder(folder_path)
            else:
                raise IOError
                
        if(folder_name in folder_list):
            if(ask):
                if(not self.send_question("Folder '%s' already existed !\nAre you sure to overwrite ?" % folder_name)):
                     raise SystemError
        else:
            try:
                os.mkdir(folder_path + '/' + folder_name)
            except:
                self.send_error("Invalid folder name: %s\nMust not contain space and \\ / : * ? \" < > |" % folder_name)
                raise IOError

    # ----------------------------------------------------------------
    # Console
    # ----------------------------------------------------------------
    def print(self, msg):
        self.console_textEdit.moveCursor(QTextCursor.End)
        self.console_textEdit.insertPlainText(msg)
        self.console_textEdit.moveCursor(QTextCursor.End)
        
    def set_progress(self, value):
        self.console_progressBar.setValue(value)
        
    @pyqtSlot()
    def on_console_clear_pushButton_clicked(self):
        self.console_textEdit.clear()
        
    @pyqtSlot()
    def on_user_cmd_pushButton_clicked(self):
        if(True):
            user_cmd = self.user_cmd_lineEdit.text()
            self.user_cmd_lineEdit.clear()
            self.print(">> %s\n" % user_cmd)
            self.general_serial_cmd(user_cmd)
        #except:
        #    pass
            
    # ----------------------------------------------------------------
    # Serial Port
    # ----------------------------------------------------------------
    def update_serial_port_ui(self, serial_port):
        self.serial_port_comboBox.clear()
        self.serial_port = serial_port
        self.serial_port.append('Refresh')
        self.serial_port_comboBox.addItems(self.serial_port)
        self.serial_port_comboBox.setCurrentIndex(len(self.serial_port)-1)
        self.on_serial_port_comboBox_activated(0)
        self.serial_port_comboBox.setCurrentIndex(0)

    def general_serial_cmd(self, command):
        self.general_serial_cmd_t.command = command
        self.general_serial_cmd_t.start()
 
    @pyqtSlot(int)
    def on_serial_port_comboBox_activated(self, index):
        if(True):
            if(self.serial_obj.is_connected()):
                self.serial_obj.close_serial()
            if(index==len(self.serial_port)-1):
                self.update_serial_port_t.start()
            else:
                self.serial_obj.open_serial(self.serial_port_comboBox.itemText(index))
                # Send cmd to check if serial port is valid
                res = None
                try:
                    res = self.serial_obj.execute_cmd("get_version")
                except:
                    pass
                if(res==None):
                    self.send_error("Invalid Serial Port, Readout Platform not detected !")
                    self.serial_port_comboBox.setCurrentIndex(len(self.serial_port)-1)
                else:
                    # Update current states
                    pass
        #except:
        #    pass

    # ----------------------------------------------------------------
    # Peripheral
    # ----------------------------------------------------------------
    @pyqtSlot()
    def on_power_pushButton_clicked(self):
        if(self.power_pushButton.text()=='OFF'):
            self.general_serial_cmd('power_on')
            self.power_pushButton.setText('ON')
        else:
            self.general_serial_cmd('power_off')
            self.power_pushButton.setText('OFF')

    # ----------------------------------------------------------------
    # DAC
    # ----------------------------------------------------------------
    @pyqtSlot()
    def on_dac_reset_pushButton_clicked(self):
        self.serial_obj.execute_cmd("set_dac_rst %d" % 660)
        self.serial_obj.execute_cmd("set_dac_y %d"   % 1200)
        self.serial_obj.execute_cmd("set_dac_iv %d"  % 800)
        self.serial_obj.execute_cmd("set_dac_ota %d" % 900)
        self.serial_obj.execute_cmd("set_dac_int %d" % 892)
        self.on_dac_read_pushButton_clicked()
        
    @pyqtSlot()
    def on_dac_read_pushButton_clicked(self):
        vol = self.serial_obj.execute_cmd("get_dac_rst")
        self.dac_rst_spinBox.setValue(vol)
        vol = self.serial_obj.execute_cmd("get_dac_y")
        self.dac_y_spinBox.setValue(vol)
        vol = self.serial_obj.execute_cmd("get_dac_iv")
        self.dac_iv_spinBox.setValue(vol)
        vol = self.serial_obj.execute_cmd("get_dac_ota")
        self.dac_ota_spinBox.setValue(vol)
        vol = self.serial_obj.execute_cmd("get_dac_int")
        self.dac_int_spinBox.setValue(vol)
        
    @pyqtSlot()
    def on_dac_write_pushButton_clicked(self):
        if(self.dac_rst_checkBox.isChecked()):
            vol = self.dac_rst_spinBox.value()
            self.serial_obj.execute_cmd("set_dac_rst %d" % vol)
        
        if(self.dac_y_checkBox.isChecked()):
            vol = self.dac_y_spinBox.value()
            self.serial_obj.execute_cmd("set_dac_y %d" % vol)
        
        if(self.dac_iv_checkBox.isChecked()):
            vol = self.dac_iv_spinBox.value()
            self.serial_obj.execute_cmd("set_dac_iv %d" % vol)
        
        if(self.dac_ota_checkBox.isChecked()):
            vol = self.dac_ota_spinBox.value()
            self.serial_obj.execute_cmd("set_dac_ota %d" % vol)
        
        if(self.dac_int_checkBox.isChecked()):
            vol = self.dac_int_spinBox.value()
            self.serial_obj.execute_cmd("set_dac_int %d" % vol)
        
    
    # ----------------------------------------------------------------
    # Real-time Frame Acquisition
    # ----------------------------------------------------------------
    @pyqtSlot()
    def on_rt_test_pushButton_pressed(self):
        val = self.serial_obj.execute_cmd('get_gpio')
        val = val | 0b00000010
        self.serial_obj.execute_cmd('set_gpio %d' % val)
        
    @pyqtSlot()
    def on_rt_offset_pushButton_pressed(self):
        self.readout_rt.offset_en = True
        
    @pyqtSlot()
    def on_rt_raw_pushButton_pressed(self):
        self.readout_rt.offset_clr = True
    
    @pyqtSlot()
    def on_rt_test_pushButton_released(self):
        val = self.serial_obj.execute_cmd('get_gpio')
        val = val & 0b1111111111111101
        self.serial_obj.execute_cmd('set_gpio %d' % val)
    
    def get_exp_folder_name(self):
        exp_id      = self.rt_exp_id_spinBox.value()
        chip_id     = self.rt_chip_id_spinBox.value()
        chip_freq   = 10
        user_com    = self.rt_user_com_lineEdit.text()
        folder_name = 'D%s_C%s_E%s_F%sMHz' % (get_date(), str(chip_id).zfill(2), str(exp_id).zfill(2), str(chip_freq).zfill(3))
        if(user_com!=''):
            for n in range(len(user_com)):
                chr = user_com[n]
                if(not (chr.isdigit() or chr.isalpha() or chr=='_')):
                    self.send_error("Only alphabet, digital and underscore are allowed for user comment !")
                    raise SystemError
            folder_name = folder_name + '_U_' + user_com
        return folder_name
        
    def rt_readout_update(self, status):
        if(status==1):
            self.fifo_check_label.setStyleSheet("background-color: #FF0000")
            self.fifo_check_label.setText("FULL")
        else:
            self.fifo_check_label.setStyleSheet("background-color: #00FF00")
            self.fifo_check_label.setText("FINE")
        
    def rt_readout_done(self, status):
        # Reset readout system
        self.serial_obj.execute_cmd("set_nrst 0")
        time.sleep(0.5)
        self.serial_obj.execute_cmd("set_nrst 1")
        
        if(status):
            self.send_info("End of Readout :)")
        self.rt_readout_pushButton.setText('Readout')
    
    @pyqtSlot()
    def on_rt_readout_pushButton_clicked(self):
        try:
            if(self.rt_readout_pushButton.text()=='Readout'):
                save = self.rt_save_checkBox.isChecked()
                if(save):
                    # Check if experimental folder exists
                    folder_path = self.rt_path_lineEdit.text()
                    folder_name = self.get_exp_folder_name()
                    self.create_folder_if_not_existed(folder_path, folder_name, ask=True)
                    file_path   = folder_path + '/' + folder_name
                
                # Start readout thread
                self.readout_rt.config(file_path if save else None, save)
                self.readout_rt.start()
                self.rt_readout_pushButton.setText('Running')
            else:
                if(self.send_question('Are you sure to stop Readout ?')):
                    self.readout_rt.stop()
                    self.co_path_lineEdit.setText(self.readout_rt.file_path)
        except Exception as e:
            print(str(e))
            
    @pyqtSlot()
    def on_co_path_toolButton_clicked(self):
        # Open experiment folder path
        exp_path = self.co_path_lineEdit.text()
        folder = self.select_folder(exp_path)
        self.co_path_lineEdit.setText(folder if folder else exp_path)
 
    @pyqtSlot()
    def on_rt_concatenation_pushButton_clicked(self):
        file_path = self.co_path_lineEdit.text()
        file_list = self.list_folder(file_path)
        file_len  = len(file_list)
        # Check length
        if(file_len==0):
            self.send_error('No files found')
            return
        # Check valid
        for file in file_list:
            if(file[-4:]!='.bin'):
                self.send_error('Invalid file found')
                return
        # Check if all.bin
        if(file_list[0]=='all.bin'):
            self.send_error('Concatenation has been done')
            return
        # Start thread
        self.concatenation_t.config(file_path, file_list)
        self.concatenation_t.start()

# ----------------------------------------------------------------
# UI Entrance, same as main.py
# ----------------------------------------------------------------
if __name__ == "__main__":
    import sys

    app = QApplication(sys.argv)
    ui = SuperMario_Dialog()
    ui.show()
    
    sys.exit(app.exec_())
