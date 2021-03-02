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
# User Import
# ----------------------------------------------------------------
from SuperMario_Cmd    import *
from SuperMario_Thread import *
from SuperMario_Func   import *
from SuperMario_Plot   import *

class SuperMario_Dialog(QMainWindow, Ui_SuperMario_Dialog):

    # Signal
    serial_status   = pyqtSignal(bool)
    console_s       = pyqtSignal(str)
    msgbox_error_s  = pyqtSignal(str)
    msgbox_info_s   = pyqtSignal(str)
    
    # Variable
    serial_obj      = None
    serial_port     = None
    plot_obj        = None

    def __init__(self, parent=None):
        super(SuperMario_Dialog, self).__init__(parent)
        self.setupUi(self)

        # Initial UI      ------------------------------------------------------------------------------------------------------------
        # - Size
        self.setGeometry(800, 400, 960, 390)
        self.setFixedSize(960, 390)
        # - Auto complete user command
        self.user_cmd_lineEdit.setCompleter(QCompleter(command_list, self.user_cmd_lineEdit))
        
        # Shared System Signals ------------------------------------------------------------------------------------------------------
        self.serial_status  .connect(self.ui_set_serial_status)
        self.console_s      .connect(self.ui_print)
        self.msgbox_error_s .connect(self.ui_send_error)
        self.msgbox_info_s  .connect(self.ui_send_info)
        
        # Serial ---------------------------------------------------------------------------------------------------------------------
        self.serial_obj           = Debug_Command()
        self.serial_obj.status_s  = self.serial_status
        self.serial_obj.console_s = self.console_s
        self.serial_obj.msgbox_s  = self.msgbox_error_s
        
        # Plot Canvas ----------------------------------------------------------------------------------------------------------------
        self.plot_obj = SuperMario_Plot()
        self.plot_obj.show_window()
        
        # Threads --------------------------------------------------------------------------------------------------------------------
        # - List available serial ports
        self.serial_list_port_t             = Serial_List_Port(self.serial_obj)
        self.serial_list_port_t.done_s      .connect(self.serial_list_port_done)
        self.serial_list_port_t             .start()
        
        # - Open serial port
        self.serial_open_port_t             = Serial_Open_Port(self.serial_obj)
        self.serial_open_port_t.done_s      .connect(self.serial_open_port_done)
        # - Auto connection
        [_, self.serial_port]               = self.serial_obj.list_serial()
        if(self.serial_port!=[]):
            self.serial_open_port_t.config(self.serial_port[0])
            self.serial_open_port_t.start()
            
        # - Serial general command
        self.serial_general_cmd_t           = Serial_General_Cmd(self.serial_obj)
        self.serial_general_cmd_t.done_s    = self.console_s
        
        # - Readout
        self.readout_rt                     = Readout(self.serial_obj, self.plot_obj)
        self.readout_rt.update_s            .connect(self.rt_readout_update)
        self.readout_rt.done_s              .connect(self.rt_readout_done)
        self.readout_rt.msgbox_s            = self.msgbox_error_s

    # ================================================================================================================================
    # UI - System I/O
    # ================================================================================================================================
    # Read User input, accept --------------------------------------------------------------------------------------------------------
    # - 1) Dec: '123'
    # - 2) Hex: '0xFF'
    # - 3) Bin: '0b100'
    def str2num(self, str):
        try:
            return int(str, 0)
        except:
            self.ui_send_error("Invalid Input: %s" % str)
            raise ValueError
    
    # Set the color of ui items such as pushbutton -----------------------------------------------------------------------------------
    def ui_set_color_red(self, ui_obj):
        ui_obj.setStyleSheet("background-color: #FF0000")
    
    def ui_set_color_green(self, ui_obj):
        ui_obj.setStyleSheet("background-color: #00FF00")
        
    def ui_set_color_gray(self, ui_obj):
        ui_obj.setStyleSheet("background-color: #E1E1E1")
        
    def ui_get_xy(self):
        return (self.frameGeometry().x(), self.frameGeometry().y())
    
    # UI status ----------------------------------------------------------------------------------------------------------------------
    # - True: Busy
    # - False: Idle
    def ui_set_serial_status(self, status):
        self.serial_status_label.setText('BUSY' if status else 'IDLE')
        self.ui_set_color_red(self.serial_status_label) if status else \
        self.ui_set_color_green(self.serial_status_label)

    def ui_get_serial_status(self):
        return False if self.serial_status_label.text()=='Idle' else True

    # UI message box -----------------------------------------------------------------------------------------------------------------
    def ui_send_question(self, msg):
        box = QMessageBox()
        #(x, y) = self.ui_get_xy()
        #box.setGeometry(x, y)
        box.setStyleSheet('QMessageBox {font: 9pt "Consolas"}')
        return (QMessageBox.question(box, "Question", msg, QMessageBox.Yes | QMessageBox.No) == QMessageBox.Yes)

    def ui_send_error(self, msg):
        box = QMessageBox()
        box.setStyleSheet('QMessageBox {font: 9pt "Consolas"}')
        QMessageBox.critical(box, "Error", msg, QMessageBox.Ok)

    def ui_send_warning(self, msg):
        box = QMessageBox()
        box.setStyleSheet('QMessageBox {font: 9pt "Consolas"}')
        QMessageBox.warning(box, "Warning", msg, QMessageBox.Ok)
        
    def ui_send_info(self, msg):
        box = QMessageBox()
        box.setStyleSheet('QMessageBox {font: 9pt "Consolas"}')
        QMessageBox.information(box, "Information", msg, QMessageBox.Ok)

    # UI file dialog -----------------------------------------------------------------------------------------------------------------
    def ui_select_file(self, path_init='C:/'):
        return QFileDialog.getOpenFileName(self, "Select File", path_init)
        
    def ui_select_folder(self, path_init='C:/'):
        return QFileDialog.getExistingDirectory(self, "Select Folder", path_init)
        
    # ================================================================================================================================
    # UI - File and Folder
    # ================================================================================================================================
    # List files and folders under the folder path -----------------------------------------------------------------------------------
    def list_folder(self, folder_path):
        try:
            folder_list = os.listdir(folder_path)
        except:
            self.ui_send_error("Invalid folder path !")
            raise SystemError
        return folder_list
    
    # Check folder existence and create ----------------------------------------------------------------------------------------------
    def create_folder_if_not_existed(self, folder_path, folder_name, ask = False):
        try:
            folder_list = self.list_folder(folder_path)
        except:
            if(self.ui_send_question("Would you like to create folder %s ?" % folder_path)):
                try:
                    os.mkdir(folder_path)
                    folder_list = self.list_folder(folder_path)
                except:
                    self.ui_send_error("Invalid path for folder creation'%s'" % folder_path)
                    raise IOError
            else:
                raise IOError
                
        if(folder_name in folder_list):
            if(ask):
                if(not self.ui_send_question("Folder '%s' already existed !\nAre you sure to overwrite ?" % folder_name)):
                    raise SystemError
        else:
            try:
                os.mkdir(folder_path + '/' + folder_name)
            except:
                self.ui_send_error("Invalid folder name: %s\nMust not contain space and \\ / : * ? \" < > |" % folder_name)
                raise IOError
    
    # Read TTN binary file under current folder path ---------------------------------------------------------------------------------
    def read_binary_file_in_the_folder(self, folder_path, file_flag):
        # Get the list of file
        folder_list = self.list_folder(folder_path)
        file_list   = []
        for file in folder_list:
            if(file.find(file_flag)!=-1):
                file_list.append(file)

        # Check if existed
        if(file_list==[]):
            self.ui_send_error('No "%s" file found, please set the temperature regulation target manually !' % file_flag)
            raise IOError
        else:
            if(len(file_list)>=2):
                self.ui_send_warning('Multiple "%s" files found, only the latest one will be read !' % file_flag)
                file_list.sort()
        file = file_list[-1]

        # Read data
        return binary_file_read(folder_path + '/' + file)
    
    # Read TTN binary file under parent folder path ----------------------------------------------------------------------------------
    def read_binary_file_in_the_same_parent_folder(self, file_path, file_flag):
        folder_path = os.path.dirname(file_path)
        return self.read_binary_file_in_the_folder(folder_path, file_flag)
    
    # Create experiment folder depends on the date and user information --------------------------------------------------------------
    def create_experiment_folder(self, folder_path):
        folder_name = self.ttn_get_folder_name()
        self.create_folder_if_not_existed(folder_path, folder_name, ask=True)
        folder_path = folder_path + '/' + folder_name
        return folder_path
    
    # Save logs ----------------------------------------------------------------------------------------------------------------------
    def save_log(self, log_path):
        try:
            time_info = get_date_time(2)                # Date and time
            log = self.console_textEdit.toPlainText()   # Log
            self.console_textEdit.clear()               # Clear
            
            file = open(log_path + '/' + 'log.txt', 'a')
            file.write('-'*32 + '\n')               
            file.write(time_info + '\n')
            file.write('-'*32 + '\n')
            file.write(log)
            file.close()
        except:
            # If the user tries to fool the UI (delete the folder during the experiment)
            # - I would not care..., currently...
            pass
            
    # ================================================================================================================================
    # UI Frame - System
    # ================================================================================================================================
    def serial_list_port_done(self, data):
        try:
            [name_list, port_list] = data
            self.serial_port_comboBox.clear()
            self.serial_name = name_list
            self.serial_port = port_list
            self.serial_name.append('Refresh')
            self.serial_port_comboBox.addItems(self.serial_name)
            self.serial_port_comboBox.setCurrentIndex(len(self.serial_name)-1)
        except:
            self.ui_send_error("Error: fail to list serial port")
            
    def serial_open_port_done(self, data):
        try:
            if(data==[]):
                self.serial_port_comboBox.setCurrentIndex(len(self.serial_name)-1)
            else:
                [port, ver] = data
                for n in range(0, len(self.serial_port)):
                    if(self.serial_port[n]==port):
                        self.serial_port_comboBox.setCurrentIndex(n)
                        break
                self.ui_send_info('SuperMario Detected xD\nFirmware:  %d' % ver)
        except:
            self.ui_send_error("Error: fail to open serial port")
            self.serial_port_comboBox.setCurrentIndex(len(self.serial_name)-1)

    @pyqtSlot(int)
    def on_serial_port_comboBox_activated(self, index):
        if(self.serial_obj.is_connected()):
            self.serial_obj.close_serial()

        if(len(self.serial_name)==index+1):
            self.serial_list_port_t.start()
        else:
            self.serial_open_port_t.config(self.serial_port[index])
            self.serial_open_port_t.start()
            
    # ================================================================================================================================
    # UI Frame - Console 
    # ================================================================================================================================
    def ui_print(self, msg):
        self.console_textEdit.moveCursor(QTextCursor.End)
        self.console_textEdit.insertPlainText(msg)
        self.console_textEdit.moveCursor(QTextCursor.End)

    def console_set_progress(self, value):
        self.console_progressBar.setValue(value)
        
    def serial_general_cmd(self, command, response=True):
        self.serial_general_cmd_t.response = response
        self.serial_general_cmd_t.command  = command
        self.serial_general_cmd_t.start()
        
    @pyqtSlot()
    def on_console_clear_pushButton_clicked(self):
        self.console_textEdit.clear()
        
    @pyqtSlot()
    def on_user_cmd_pushButton_clicked(self):
        try:
            user_cmd = self.user_cmd_lineEdit.text()
            self.user_cmd_lineEdit.clear()
            self.ui_print(">> %s\n" % user_cmd)
            self.serial_general_cmd(user_cmd)
        except Exception as e:
            print(str(e))
    
    # --------------------------------------------------------------------------------------------------------------------------------
    # Perpherial - DAC
    # --------------------------------------------------------------------------------------------------------------------------------
    @pyqtSlot() #-------------------------------------------------------------------------------------------------------------------vp
    def on_dac_vp_spinBox_editingFinished(self):
        try:
            val = self.dac_vp_spinBox.value()
            self.serial_obj.execute_cmd("dac_vp_set %d" % val)
        except Exception as e:
            print(str(e))
    
    @pyqtSlot(int)
    def on_dac_vp_spinBox_valueChanged(self, p0):
        vol = mcp4822_val_to_vol(p0)
        self.dac_vp_vol_label.setText("%.2f V" % vol)
        
    @pyqtSlot() #-------------------------------------------------------------------------------------------------------------------vn
    def on_dac_vn_spinBox_editingFinished(self):
        try:
            val = self.dac_vn_spinBox.value()
            self.serial_obj.execute_cmd("dac_vn_set %d" % val)
        except Exception as e:
            print(str(e))
            
    @pyqtSlot(int)
    def on_dac_vn_spinBox_valueChanged(self, p0):
        vol = mcp4822_val_to_vol(p0)
        self.dac_vn_vol_label.setText("%.2f V" % vol)
        
    @pyqtSlot() #-------------------------------------------------------------------------------------------------------------------vb
    def on_dac_vb_spinBox_editingFinished(self):
        try:
            val = self.dac_vb_spinBox.value()
            self.serial_obj.execute_cmd("dac_vb_set %d" % val)
        except Exception as e:
            print(str(e))
    
    @pyqtSlot(int)
    def on_dac_vb_spinBox_valueChanged(self, p0):
        vol = mcp4822_val_to_vol(p0)
        self.dac_vb_vol_label.setText("%.2f V" % vol)
        
    @pyqtSlot() #-------------------------------------------------------------------------------------------------------------------vi
    def on_dac_vi_spinBox_editingFinished(self):
        try:
            val = self.dac_vi_spinBox.value()
            self.serial_obj.execute_cmd("dac_vi_set %d" % val)
        except Exception as e:
            print(str(e))
            
    @pyqtSlot(int)
    def on_dac_vi_spinBox_valueChanged(self, p0):
        vol = mcp4822_val_to_vol(p0)
        self.dac_vi_vol_label.setText("%.2f V" % vol)
        
    @pyqtSlot() #-----------------------------------------------------------------------------------------------------------------vref
    def on_dac_vref_spinBox_editingFinished(self):
        try:
            val = self.dac_vref_spinBox.value()
            self.serial_obj.execute_cmd("dac_vref_set %d" % val)
        except Exception as e:
            print(str(e))
            
    @pyqtSlot(int)
    def on_dac_vref_spinBox_valueChanged(self, p0):
        vol = dac7562_val_to_vol(p0)
        self.dac_vref_vol_label.setText(("+" if vol>=0 else "-") + (" %.2f V" % abs(vol)))
    
    @pyqtSlot() #----------------------------------------------------------------------------------------------------------------reset
    def on_dac_reset_pushButton_clicked(self):
        try:
            self.serial_obj.execute_cmd("dac_reset")
        except Exception as e:
            print(str(e))
            
    @pyqtSlot() #----------------------------------------------------------------------------------------------------------------write
    def on_dac_write_pushButton_clicked(self):
        try:
            self.serial_obj.execute_cmd("dac_vp_set %d"   % self.dac_vp_spinBox.value())
            self.serial_obj.execute_cmd("dac_vn_set %d"   % self.dac_vn_spinBox.value())
            self.serial_obj.execute_cmd("dac_vb_set %d"   % self.dac_vb_spinBox.value())
            self.serial_obj.execute_cmd("dac_vi_set %d"   % self.dac_vi_spinBox.value())
            self.serial_obj.execute_cmd("dac_vref_set %d" % self.dac_vref_spinBox.value())
        except Exception as e:
            print(str(e))  

    # ================================================================================================================================
    # UI Frame - Real-time Data Acqusition
    # ================================================================================================================================
    def get_exp_folder_name(self):
        exp_id      = self.rt_exp_id_spinBox.value()
        chip_id     = self.rt_chip_id_spinBox.value()
        chip_freq   = 40
        user_com    = self.rt_user_com_lineEdit.text()
        folder_name = 'D%s_C%s_E%s_F%sMHz' % (get_date(), str(chip_id).zfill(2), str(exp_id).zfill(2), str(chip_freq).zfill(3))
        if(user_com!=''):
            for n in range(len(user_com)):
                chr = user_com[n]
                if(not (chr.isdigit() or chr.isalpha() or chr=='_')):
                    self.ui_send_error("Only alphabet, digital and underscore are allowed for user comment !")
                    raise SystemError
            folder_name = folder_name + '_U_' + user_com
        return folder_name
        
    @pyqtSlot()
    def on_rt_path_toolButton_clicked(self):
        init_path   = self.rt_path_lineEdit.text()
        folder_path = self.ui_select_folder(init_path)
        self.rt_path_lineEdit.setText(folder_path if folder_path else init_path)
        
    @pyqtSlot(bool)
    def on_rt_debug_checkBox_clicked(self, checked):
        self.serial_obj.execute_cmd("gpio_set 2 %d" % (1 if checked else 0))
    
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
                if(self.ui_send_question('Are you sure to stop Readout ?')):
                    self.readout_rt.stop()
                    self.co_path_lineEdit.setText(self.readout_rt.file_path)
        except Exception as e:
            print(str(e))

    def rt_readout_update(self, status):
        pass
        
    def rt_readout_done(self, status):
        if(status):
            self.ui_send_info("End of Readout")
        else:
            self.ui_send_error("Failed to Readout")
        self.rt_readout_pushButton.setText('Readout')
    
# ----------------------------------------------------------------
# UI Entrance, same as main.py
# ----------------------------------------------------------------
if __name__ == "__main__":
    import sys

    app = QApplication(sys.argv)
    ui = SuperMario_Dialog()
    ui.show()
    
    sys.exit(app.exec_())
