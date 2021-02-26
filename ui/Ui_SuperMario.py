# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'F:\SuperMario\ui\SuperMario.ui'
#
# Created by: PyQt5 UI code generator 5.15.2
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_SuperMario_Dialog(object):
    def setupUi(self, SuperMario_Dialog):
        SuperMario_Dialog.setObjectName("SuperMario_Dialog")
        SuperMario_Dialog.resize(930, 801)
        self.centralWidget = QtWidgets.QWidget(SuperMario_Dialog)
        self.centralWidget.setObjectName("centralWidget")
        self.peripheral_frame = QtWidgets.QFrame(self.centralWidget)
        self.peripheral_frame.setEnabled(True)
        self.peripheral_frame.setGeometry(QtCore.QRect(10, 150, 211, 281))
        self.peripheral_frame.setFrameShape(QtWidgets.QFrame.StyledPanel)
        self.peripheral_frame.setFrameShadow(QtWidgets.QFrame.Plain)
        self.peripheral_frame.setObjectName("peripheral_frame")
        self.dac_groupBox = QtWidgets.QGroupBox(self.peripheral_frame)
        self.dac_groupBox.setGeometry(QtCore.QRect(10, 10, 191, 201))
        self.dac_groupBox.setObjectName("dac_groupBox")
        self.dac_rst_spinBox = QtWidgets.QSpinBox(self.dac_groupBox)
        self.dac_rst_spinBox.setGeometry(QtCore.QRect(90, 20, 51, 21))
        self.dac_rst_spinBox.setMaximum(1800)
        self.dac_rst_spinBox.setObjectName("dac_rst_spinBox")
        self.dac_y_spinBox = QtWidgets.QSpinBox(self.dac_groupBox)
        self.dac_y_spinBox.setGeometry(QtCore.QRect(90, 50, 51, 21))
        self.dac_y_spinBox.setMaximum(1800)
        self.dac_y_spinBox.setObjectName("dac_y_spinBox")
        self.dac_rst_label = QtWidgets.QLabel(self.dac_groupBox)
        self.dac_rst_label.setGeometry(QtCore.QRect(10, 20, 51, 21))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.dac_rst_label.sizePolicy().hasHeightForWidth())
        self.dac_rst_label.setSizePolicy(sizePolicy)
        self.dac_rst_label.setObjectName("dac_rst_label")
        self.dac_y_label = QtWidgets.QLabel(self.dac_groupBox)
        self.dac_y_label.setGeometry(QtCore.QRect(10, 50, 51, 21))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.dac_y_label.sizePolicy().hasHeightForWidth())
        self.dac_y_label.setSizePolicy(sizePolicy)
        self.dac_y_label.setObjectName("dac_y_label")
        self.dac_iv_label = QtWidgets.QLabel(self.dac_groupBox)
        self.dac_iv_label.setGeometry(QtCore.QRect(10, 80, 51, 21))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.dac_iv_label.sizePolicy().hasHeightForWidth())
        self.dac_iv_label.setSizePolicy(sizePolicy)
        self.dac_iv_label.setObjectName("dac_iv_label")
        self.dac_iv_spinBox = QtWidgets.QSpinBox(self.dac_groupBox)
        self.dac_iv_spinBox.setGeometry(QtCore.QRect(90, 80, 51, 21))
        self.dac_iv_spinBox.setMaximum(1800)
        self.dac_iv_spinBox.setObjectName("dac_iv_spinBox")
        self.dac_ota_label = QtWidgets.QLabel(self.dac_groupBox)
        self.dac_ota_label.setGeometry(QtCore.QRect(10, 110, 51, 21))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.dac_ota_label.sizePolicy().hasHeightForWidth())
        self.dac_ota_label.setSizePolicy(sizePolicy)
        self.dac_ota_label.setObjectName("dac_ota_label")
        self.dac_ota_spinBox = QtWidgets.QSpinBox(self.dac_groupBox)
        self.dac_ota_spinBox.setGeometry(QtCore.QRect(90, 110, 51, 21))
        self.dac_ota_spinBox.setMaximum(1800)
        self.dac_ota_spinBox.setObjectName("dac_ota_spinBox")
        self.dac_int_label = QtWidgets.QLabel(self.dac_groupBox)
        self.dac_int_label.setGeometry(QtCore.QRect(10, 140, 71, 21))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.dac_int_label.sizePolicy().hasHeightForWidth())
        self.dac_int_label.setSizePolicy(sizePolicy)
        self.dac_int_label.setObjectName("dac_int_label")
        self.dac_int_spinBox = QtWidgets.QSpinBox(self.dac_groupBox)
        self.dac_int_spinBox.setGeometry(QtCore.QRect(90, 140, 51, 21))
        self.dac_int_spinBox.setMaximum(1800)
        self.dac_int_spinBox.setObjectName("dac_int_spinBox")
        self.dac_read_pushButton = QtWidgets.QPushButton(self.dac_groupBox)
        self.dac_read_pushButton.setGeometry(QtCore.QRect(70, 170, 51, 21))
        self.dac_read_pushButton.setObjectName("dac_read_pushButton")
        self.dac_write_pushButton = QtWidgets.QPushButton(self.dac_groupBox)
        self.dac_write_pushButton.setGeometry(QtCore.QRect(130, 170, 51, 21))
        self.dac_write_pushButton.setObjectName("dac_write_pushButton")
        self.dac_rst_checkBox = QtWidgets.QCheckBox(self.dac_groupBox)
        self.dac_rst_checkBox.setGeometry(QtCore.QRect(150, 20, 31, 21))
        self.dac_rst_checkBox.setObjectName("dac_rst_checkBox")
        self.dac_y_checkBox = QtWidgets.QCheckBox(self.dac_groupBox)
        self.dac_y_checkBox.setGeometry(QtCore.QRect(150, 50, 31, 21))
        self.dac_y_checkBox.setObjectName("dac_y_checkBox")
        self.dac_iv_checkBox = QtWidgets.QCheckBox(self.dac_groupBox)
        self.dac_iv_checkBox.setGeometry(QtCore.QRect(150, 80, 31, 21))
        self.dac_iv_checkBox.setObjectName("dac_iv_checkBox")
        self.dac_ota_checkBox = QtWidgets.QCheckBox(self.dac_groupBox)
        self.dac_ota_checkBox.setGeometry(QtCore.QRect(150, 110, 31, 21))
        self.dac_ota_checkBox.setObjectName("dac_ota_checkBox")
        self.dac_int_checkBox = QtWidgets.QCheckBox(self.dac_groupBox)
        self.dac_int_checkBox.setGeometry(QtCore.QRect(150, 140, 31, 21))
        self.dac_int_checkBox.setObjectName("dac_int_checkBox")
        self.dac_reset_pushButton = QtWidgets.QPushButton(self.dac_groupBox)
        self.dac_reset_pushButton.setGeometry(QtCore.QRect(10, 170, 51, 21))
        self.dac_reset_pushButton.setObjectName("dac_reset_pushButton")
        self.ttn_frame = QtWidgets.QFrame(self.centralWidget)
        self.ttn_frame.setGeometry(QtCore.QRect(230, 10, 331, 421))
        self.ttn_frame.setFrameShape(QtWidgets.QFrame.StyledPanel)
        self.ttn_frame.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.ttn_frame.setObjectName("ttn_frame")
        self.rt_groupBox = QtWidgets.QGroupBox(self.ttn_frame)
        self.rt_groupBox.setGeometry(QtCore.QRect(10, 10, 311, 181))
        self.rt_groupBox.setObjectName("rt_groupBox")
        self.rt_path_lineEdit = QtWidgets.QLineEdit(self.rt_groupBox)
        self.rt_path_lineEdit.setGeometry(QtCore.QRect(10, 40, 251, 16))
        self.rt_path_lineEdit.setReadOnly(True)
        self.rt_path_lineEdit.setObjectName("rt_path_lineEdit")
        self.rt_path_title_label = QtWidgets.QLabel(self.rt_groupBox)
        self.rt_path_title_label.setGeometry(QtCore.QRect(10, 20, 291, 16))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.rt_path_title_label.sizePolicy().hasHeightForWidth())
        self.rt_path_title_label.setSizePolicy(sizePolicy)
        self.rt_path_title_label.setObjectName("rt_path_title_label")
        self.rt_path_toolButton = QtWidgets.QToolButton(self.rt_groupBox)
        self.rt_path_toolButton.setGeometry(QtCore.QRect(270, 40, 31, 16))
        self.rt_path_toolButton.setObjectName("rt_path_toolButton")
        self.rt_info_title_label = QtWidgets.QLabel(self.rt_groupBox)
        self.rt_info_title_label.setGeometry(QtCore.QRect(10, 60, 291, 16))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.rt_info_title_label.sizePolicy().hasHeightForWidth())
        self.rt_info_title_label.setSizePolicy(sizePolicy)
        self.rt_info_title_label.setObjectName("rt_info_title_label")
        self.rt_exp_id_title_label = QtWidgets.QLabel(self.rt_groupBox)
        self.rt_exp_id_title_label.setGeometry(QtCore.QRect(20, 80, 121, 18))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.rt_exp_id_title_label.sizePolicy().hasHeightForWidth())
        self.rt_exp_id_title_label.setSizePolicy(sizePolicy)
        self.rt_exp_id_title_label.setObjectName("rt_exp_id_title_label")
        self.rt_exp_id_spinBox = QtWidgets.QSpinBox(self.rt_groupBox)
        self.rt_exp_id_spinBox.setGeometry(QtCore.QRect(150, 80, 51, 18))
        self.rt_exp_id_spinBox.setMaximum(99)
        self.rt_exp_id_spinBox.setObjectName("rt_exp_id_spinBox")
        self.rt_chip_id_title_label = QtWidgets.QLabel(self.rt_groupBox)
        self.rt_chip_id_title_label.setGeometry(QtCore.QRect(20, 100, 121, 18))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.rt_chip_id_title_label.sizePolicy().hasHeightForWidth())
        self.rt_chip_id_title_label.setSizePolicy(sizePolicy)
        self.rt_chip_id_title_label.setObjectName("rt_chip_id_title_label")
        self.rt_chip_id_spinBox = QtWidgets.QSpinBox(self.rt_groupBox)
        self.rt_chip_id_spinBox.setGeometry(QtCore.QRect(150, 100, 51, 18))
        self.rt_chip_id_spinBox.setMaximum(99)
        self.rt_chip_id_spinBox.setObjectName("rt_chip_id_spinBox")
        self.rt_user_com_title_label = QtWidgets.QLabel(self.rt_groupBox)
        self.rt_user_com_title_label.setGeometry(QtCore.QRect(20, 120, 121, 18))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.rt_user_com_title_label.sizePolicy().hasHeightForWidth())
        self.rt_user_com_title_label.setSizePolicy(sizePolicy)
        self.rt_user_com_title_label.setObjectName("rt_user_com_title_label")
        self.rt_user_com_lineEdit = QtWidgets.QLineEdit(self.rt_groupBox)
        self.rt_user_com_lineEdit.setGeometry(QtCore.QRect(150, 120, 151, 18))
        self.rt_user_com_lineEdit.setText("")
        self.rt_user_com_lineEdit.setReadOnly(False)
        self.rt_user_com_lineEdit.setObjectName("rt_user_com_lineEdit")
        self.rt_readout_pushButton = QtWidgets.QPushButton(self.rt_groupBox)
        self.rt_readout_pushButton.setGeometry(QtCore.QRect(240, 150, 61, 21))
        self.rt_readout_pushButton.setToolTip("")
        self.rt_readout_pushButton.setObjectName("rt_readout_pushButton")
        self.rt_test_pushButton = QtWidgets.QPushButton(self.rt_groupBox)
        self.rt_test_pushButton.setGeometry(QtCore.QRect(10, 150, 51, 21))
        self.rt_test_pushButton.setToolTip("")
        self.rt_test_pushButton.setObjectName("rt_test_pushButton")
        self.rt_save_checkBox = QtWidgets.QCheckBox(self.rt_groupBox)
        self.rt_save_checkBox.setGeometry(QtCore.QRect(190, 150, 51, 21))
        self.rt_save_checkBox.setChecked(True)
        self.rt_save_checkBox.setObjectName("rt_save_checkBox")
        self.rt_offset_pushButton = QtWidgets.QPushButton(self.rt_groupBox)
        self.rt_offset_pushButton.setGeometry(QtCore.QRect(70, 150, 51, 21))
        self.rt_offset_pushButton.setToolTip("")
        self.rt_offset_pushButton.setObjectName("rt_offset_pushButton")
        self.rt_raw_pushButton = QtWidgets.QPushButton(self.rt_groupBox)
        self.rt_raw_pushButton.setGeometry(QtCore.QRect(130, 150, 51, 21))
        self.rt_raw_pushButton.setToolTip("")
        self.rt_raw_pushButton.setObjectName("rt_raw_pushButton")
        self.fifo_check_label = QtWidgets.QLabel(self.rt_groupBox)
        self.fifo_check_label.setGeometry(QtCore.QRect(240, 80, 61, 21))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.fifo_check_label.sizePolicy().hasHeightForWidth())
        self.fifo_check_label.setSizePolicy(sizePolicy)
        self.fifo_check_label.setObjectName("fifo_check_label")
        self.co_groupBox = QtWidgets.QGroupBox(self.ttn_frame)
        self.co_groupBox.setGeometry(QtCore.QRect(20, 200, 301, 91))
        self.co_groupBox.setObjectName("co_groupBox")
        self.co_path_lineEdit = QtWidgets.QLineEdit(self.co_groupBox)
        self.co_path_lineEdit.setGeometry(QtCore.QRect(10, 40, 241, 16))
        self.co_path_lineEdit.setReadOnly(True)
        self.co_path_lineEdit.setObjectName("co_path_lineEdit")
        self.co_path_title_label = QtWidgets.QLabel(self.co_groupBox)
        self.co_path_title_label.setGeometry(QtCore.QRect(10, 20, 291, 16))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.co_path_title_label.sizePolicy().hasHeightForWidth())
        self.co_path_title_label.setSizePolicy(sizePolicy)
        self.co_path_title_label.setObjectName("co_path_title_label")
        self.co_path_toolButton = QtWidgets.QToolButton(self.co_groupBox)
        self.co_path_toolButton.setGeometry(QtCore.QRect(260, 40, 31, 16))
        self.co_path_toolButton.setObjectName("co_path_toolButton")
        self.rt_concatenation_pushButton = QtWidgets.QPushButton(self.co_groupBox)
        self.rt_concatenation_pushButton.setGeometry(QtCore.QRect(230, 60, 61, 21))
        self.rt_concatenation_pushButton.setToolTip("")
        self.rt_concatenation_pushButton.setObjectName("rt_concatenation_pushButton")
        self.console_frame = QtWidgets.QFrame(self.centralWidget)
        self.console_frame.setGeometry(QtCore.QRect(570, 10, 351, 421))
        self.console_frame.setFrameShape(QtWidgets.QFrame.StyledPanel)
        self.console_frame.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.console_frame.setObjectName("console_frame")
        self.console_groupBox = QtWidgets.QGroupBox(self.console_frame)
        self.console_groupBox.setGeometry(QtCore.QRect(10, 10, 331, 341))
        self.console_groupBox.setObjectName("console_groupBox")
        self.console_clear_pushButton = QtWidgets.QPushButton(self.console_groupBox)
        self.console_clear_pushButton.setGeometry(QtCore.QRect(260, 310, 61, 21))
        self.console_clear_pushButton.setObjectName("console_clear_pushButton")
        self.console_textEdit = QtWidgets.QTextBrowser(self.console_groupBox)
        self.console_textEdit.setGeometry(QtCore.QRect(10, 20, 311, 281))
        self.console_textEdit.setTextInteractionFlags(QtCore.Qt.TextSelectableByKeyboard|QtCore.Qt.TextSelectableByMouse)
        self.console_textEdit.setObjectName("console_textEdit")
        self.console_progressBar = QtWidgets.QProgressBar(self.console_groupBox)
        self.console_progressBar.setGeometry(QtCore.QRect(10, 310, 241, 21))
        self.console_progressBar.setMaximum(100)
        self.console_progressBar.setProperty("value", 0)
        self.console_progressBar.setObjectName("console_progressBar")
        self.user_cmd_groupBox = QtWidgets.QGroupBox(self.console_frame)
        self.user_cmd_groupBox.setGeometry(QtCore.QRect(10, 360, 331, 51))
        self.user_cmd_groupBox.setObjectName("user_cmd_groupBox")
        self.user_cmd_lineEdit = QtWidgets.QLineEdit(self.user_cmd_groupBox)
        self.user_cmd_lineEdit.setGeometry(QtCore.QRect(10, 20, 241, 22))
        self.user_cmd_lineEdit.setWhatsThis("")
        self.user_cmd_lineEdit.setPlaceholderText("")
        self.user_cmd_lineEdit.setObjectName("user_cmd_lineEdit")
        self.user_cmd_pushButton = QtWidgets.QPushButton(self.user_cmd_groupBox)
        self.user_cmd_pushButton.setGeometry(QtCore.QRect(260, 20, 61, 21))
        self.user_cmd_pushButton.setObjectName("user_cmd_pushButton")
        self.system_frame = QtWidgets.QFrame(self.centralWidget)
        self.system_frame.setGeometry(QtCore.QRect(10, 10, 211, 131))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.system_frame.sizePolicy().hasHeightForWidth())
        self.system_frame.setSizePolicy(sizePolicy)
        self.system_frame.setFrameShape(QtWidgets.QFrame.StyledPanel)
        self.system_frame.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.system_frame.setObjectName("system_frame")
        self.system_groupBox = QtWidgets.QGroupBox(self.system_frame)
        self.system_groupBox.setGeometry(QtCore.QRect(10, 10, 191, 111))
        self.system_groupBox.setObjectName("system_groupBox")
        self.serial_port_title_label = QtWidgets.QLabel(self.system_groupBox)
        self.serial_port_title_label.setGeometry(QtCore.QRect(10, 20, 80, 21))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.serial_port_title_label.sizePolicy().hasHeightForWidth())
        self.serial_port_title_label.setSizePolicy(sizePolicy)
        self.serial_port_title_label.setObjectName("serial_port_title_label")
        self.serial_port_comboBox = QtWidgets.QComboBox(self.system_groupBox)
        self.serial_port_comboBox.setEnabled(True)
        self.serial_port_comboBox.setGeometry(QtCore.QRect(100, 20, 80, 21))
        font = QtGui.QFont()
        font.setBold(False)
        font.setWeight(50)
        self.serial_port_comboBox.setFont(font)
        self.serial_port_comboBox.setLayoutDirection(QtCore.Qt.LeftToRight)
        self.serial_port_comboBox.setObjectName("serial_port_comboBox")
        self.serial_port_comboBox.addItem("")
        self.ui_status_title_label = QtWidgets.QLabel(self.system_groupBox)
        self.ui_status_title_label.setGeometry(QtCore.QRect(10, 80, 80, 21))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.ui_status_title_label.sizePolicy().hasHeightForWidth())
        self.ui_status_title_label.setSizePolicy(sizePolicy)
        self.ui_status_title_label.setObjectName("ui_status_title_label")
        self.ui_status_label = QtWidgets.QLabel(self.system_groupBox)
        self.ui_status_label.setGeometry(QtCore.QRect(100, 80, 80, 21))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.ui_status_label.sizePolicy().hasHeightForWidth())
        self.ui_status_label.setSizePolicy(sizePolicy)
        self.ui_status_label.setAlignment(QtCore.Qt.AlignCenter)
        self.ui_status_label.setObjectName("ui_status_label")
        self.power_title_label = QtWidgets.QLabel(self.system_groupBox)
        self.power_title_label.setGeometry(QtCore.QRect(10, 50, 80, 21))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.power_title_label.sizePolicy().hasHeightForWidth())
        self.power_title_label.setSizePolicy(sizePolicy)
        self.power_title_label.setObjectName("power_title_label")
        self.power_pushButton = QtWidgets.QPushButton(self.system_groupBox)
        self.power_pushButton.setGeometry(QtCore.QRect(100, 50, 81, 21))
        self.power_pushButton.setObjectName("power_pushButton")
        self.fp_groupBox = QtWidgets.QGroupBox(self.centralWidget)
        self.fp_groupBox.setGeometry(QtCore.QRect(590, 450, 311, 211))
        self.fp_groupBox.setObjectName("fp_groupBox")
        self.fp_tabWidget = QtWidgets.QTabWidget(self.fp_groupBox)
        self.fp_tabWidget.setGeometry(QtCore.QRect(10, 70, 291, 131))
        self.fp_tabWidget.setStyleSheet("")
        self.fp_tabWidget.setObjectName("fp_tabWidget")
        self.fp_replay_tab = QtWidgets.QWidget()
        self.fp_replay_tab.setObjectName("fp_replay_tab")
        self.fp_replay_check_pushButton = QtWidgets.QPushButton(self.fp_replay_tab)
        self.fp_replay_check_pushButton.setGeometry(QtCore.QRect(150, 80, 61, 21))
        self.fp_replay_check_pushButton.setObjectName("fp_replay_check_pushButton")
        self.fp_replay_pushButton = QtWidgets.QPushButton(self.fp_replay_tab)
        self.fp_replay_pushButton.setGeometry(QtCore.QRect(220, 80, 61, 21))
        self.fp_replay_pushButton.setObjectName("fp_replay_pushButton")
        self.fp_replay_start_title_label = QtWidgets.QLabel(self.fp_replay_tab)
        self.fp_replay_start_title_label.setGeometry(QtCore.QRect(10, 10, 51, 16))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.fp_replay_start_title_label.sizePolicy().hasHeightForWidth())
        self.fp_replay_start_title_label.setSizePolicy(sizePolicy)
        self.fp_replay_start_title_label.setObjectName("fp_replay_start_title_label")
        self.fp_replay_start_horizontalSlider = QtWidgets.QSlider(self.fp_replay_tab)
        self.fp_replay_start_horizontalSlider.setGeometry(QtCore.QRect(110, 10, 171, 16))
        self.fp_replay_start_horizontalSlider.setMinimum(1)
        self.fp_replay_start_horizontalSlider.setMaximum(100)
        self.fp_replay_start_horizontalSlider.setPageStep(1)
        self.fp_replay_start_horizontalSlider.setOrientation(QtCore.Qt.Horizontal)
        self.fp_replay_start_horizontalSlider.setObjectName("fp_replay_start_horizontalSlider")
        self.fp_replay_end_title_label = QtWidgets.QLabel(self.fp_replay_tab)
        self.fp_replay_end_title_label.setGeometry(QtCore.QRect(10, 30, 51, 16))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.fp_replay_end_title_label.sizePolicy().hasHeightForWidth())
        self.fp_replay_end_title_label.setSizePolicy(sizePolicy)
        self.fp_replay_end_title_label.setObjectName("fp_replay_end_title_label")
        self.fp_replay_end_horizontalSlider = QtWidgets.QSlider(self.fp_replay_tab)
        self.fp_replay_end_horizontalSlider.setGeometry(QtCore.QRect(110, 30, 171, 16))
        self.fp_replay_end_horizontalSlider.setMinimum(1)
        self.fp_replay_end_horizontalSlider.setMaximum(100)
        self.fp_replay_end_horizontalSlider.setPageStep(1)
        self.fp_replay_end_horizontalSlider.setOrientation(QtCore.Qt.Horizontal)
        self.fp_replay_end_horizontalSlider.setObjectName("fp_replay_end_horizontalSlider")
        self.fp_replay_delay_title_label = QtWidgets.QLabel(self.fp_replay_tab)
        self.fp_replay_delay_title_label.setGeometry(QtCore.QRect(10, 50, 51, 16))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.fp_replay_delay_title_label.sizePolicy().hasHeightForWidth())
        self.fp_replay_delay_title_label.setSizePolicy(sizePolicy)
        self.fp_replay_delay_title_label.setObjectName("fp_replay_delay_title_label")
        self.fp_replay_delay_horizontalSlider = QtWidgets.QSlider(self.fp_replay_tab)
        self.fp_replay_delay_horizontalSlider.setGeometry(QtCore.QRect(110, 50, 171, 16))
        self.fp_replay_delay_horizontalSlider.setMaximum(100)
        self.fp_replay_delay_horizontalSlider.setPageStep(1)
        self.fp_replay_delay_horizontalSlider.setOrientation(QtCore.Qt.Horizontal)
        self.fp_replay_delay_horizontalSlider.setObjectName("fp_replay_delay_horizontalSlider")
        self.fp_replay_start_lineEdit = QtWidgets.QLineEdit(self.fp_replay_tab)
        self.fp_replay_start_lineEdit.setGeometry(QtCore.QRect(70, 10, 32, 16))
        self.fp_replay_start_lineEdit.setReadOnly(True)
        self.fp_replay_start_lineEdit.setObjectName("fp_replay_start_lineEdit")
        self.fp_replay_end_lineEdit = QtWidgets.QLineEdit(self.fp_replay_tab)
        self.fp_replay_end_lineEdit.setGeometry(QtCore.QRect(70, 30, 32, 16))
        self.fp_replay_end_lineEdit.setReadOnly(True)
        self.fp_replay_end_lineEdit.setObjectName("fp_replay_end_lineEdit")
        self.fp_replay_delay_lineEdit = QtWidgets.QLineEdit(self.fp_replay_tab)
        self.fp_replay_delay_lineEdit.setGeometry(QtCore.QRect(70, 50, 32, 16))
        self.fp_replay_delay_lineEdit.setReadOnly(True)
        self.fp_replay_delay_lineEdit.setObjectName("fp_replay_delay_lineEdit")
        self.fp_replay_png_checkbox = QtWidgets.QCheckBox(self.fp_replay_tab)
        self.fp_replay_png_checkbox.setEnabled(True)
        self.fp_replay_png_checkbox.setGeometry(QtCore.QRect(10, 80, 71, 16))
        self.fp_replay_png_checkbox.setChecked(False)
        self.fp_replay_png_checkbox.setObjectName("fp_replay_png_checkbox")
        self.fp_tabWidget.addTab(self.fp_replay_tab, "")
        self.fp_render_tab = QtWidgets.QWidget()
        self.fp_render_tab.setObjectName("fp_render_tab")
        self.fp_render_frame_only_checkbox = QtWidgets.QCheckBox(self.fp_render_tab)
        self.fp_render_frame_only_checkbox.setEnabled(True)
        self.fp_render_frame_only_checkbox.setGeometry(QtCore.QRect(10, 80, 91, 16))
        self.fp_render_frame_only_checkbox.setChecked(False)
        self.fp_render_frame_only_checkbox.setObjectName("fp_render_frame_only_checkbox")
        self.fp_render_pushButton = QtWidgets.QPushButton(self.fp_render_tab)
        self.fp_render_pushButton.setGeometry(QtCore.QRect(220, 80, 61, 21))
        self.fp_render_pushButton.setObjectName("fp_render_pushButton")
        self.fp_render_fps_title_label = QtWidgets.QLabel(self.fp_render_tab)
        self.fp_render_fps_title_label.setGeometry(QtCore.QRect(10, 10, 51, 16))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.fp_render_fps_title_label.sizePolicy().hasHeightForWidth())
        self.fp_render_fps_title_label.setSizePolicy(sizePolicy)
        self.fp_render_fps_title_label.setObjectName("fp_render_fps_title_label")
        self.fp_render_fps_lineEdit = QtWidgets.QLineEdit(self.fp_render_tab)
        self.fp_render_fps_lineEdit.setGeometry(QtCore.QRect(70, 10, 32, 16))
        self.fp_render_fps_lineEdit.setReadOnly(True)
        self.fp_render_fps_lineEdit.setObjectName("fp_render_fps_lineEdit")
        self.fp_render_fps_horizontalSlider = QtWidgets.QSlider(self.fp_render_tab)
        self.fp_render_fps_horizontalSlider.setGeometry(QtCore.QRect(110, 10, 171, 16))
        self.fp_render_fps_horizontalSlider.setMinimum(1)
        self.fp_render_fps_horizontalSlider.setMaximum(30)
        self.fp_render_fps_horizontalSlider.setPageStep(1)
        self.fp_render_fps_horizontalSlider.setProperty("value", 5)
        self.fp_render_fps_horizontalSlider.setOrientation(QtCore.Qt.Horizontal)
        self.fp_render_fps_horizontalSlider.setObjectName("fp_render_fps_horizontalSlider")
        self.fp_render_progress_progressBar = QtWidgets.QProgressBar(self.fp_render_tab)
        self.fp_render_progress_progressBar.setGeometry(QtCore.QRect(70, 50, 211, 16))
        self.fp_render_progress_progressBar.setMaximum(100)
        self.fp_render_progress_progressBar.setProperty("value", 0)
        self.fp_render_progress_progressBar.setObjectName("fp_render_progress_progressBar")
        self.fp_render_progress_title_label = QtWidgets.QLabel(self.fp_render_tab)
        self.fp_render_progress_title_label.setGeometry(QtCore.QRect(10, 50, 51, 16))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.fp_render_progress_title_label.sizePolicy().hasHeightForWidth())
        self.fp_render_progress_title_label.setSizePolicy(sizePolicy)
        self.fp_render_progress_title_label.setObjectName("fp_render_progress_title_label")
        self.fp_render_check_pushButton = QtWidgets.QPushButton(self.fp_render_tab)
        self.fp_render_check_pushButton.setGeometry(QtCore.QRect(150, 80, 61, 21))
        self.fp_render_check_pushButton.setObjectName("fp_render_check_pushButton")
        self.fp_render_enhance_title_label = QtWidgets.QLabel(self.fp_render_tab)
        self.fp_render_enhance_title_label.setGeometry(QtCore.QRect(10, 30, 81, 16))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.fp_render_enhance_title_label.sizePolicy().hasHeightForWidth())
        self.fp_render_enhance_title_label.setSizePolicy(sizePolicy)
        self.fp_render_enhance_title_label.setObjectName("fp_render_enhance_title_label")
        self.fp_render_enhance_lineEdit = QtWidgets.QLineEdit(self.fp_render_tab)
        self.fp_render_enhance_lineEdit.setGeometry(QtCore.QRect(70, 30, 32, 16))
        self.fp_render_enhance_lineEdit.setReadOnly(True)
        self.fp_render_enhance_lineEdit.setObjectName("fp_render_enhance_lineEdit")
        self.fp_render_enhance_horizontalSlider = QtWidgets.QSlider(self.fp_render_tab)
        self.fp_render_enhance_horizontalSlider.setGeometry(QtCore.QRect(110, 30, 171, 16))
        self.fp_render_enhance_horizontalSlider.setMinimum(1)
        self.fp_render_enhance_horizontalSlider.setMaximum(4)
        self.fp_render_enhance_horizontalSlider.setSingleStep(1)
        self.fp_render_enhance_horizontalSlider.setPageStep(1)
        self.fp_render_enhance_horizontalSlider.setProperty("value", 2)
        self.fp_render_enhance_horizontalSlider.setOrientation(QtCore.Qt.Horizontal)
        self.fp_render_enhance_horizontalSlider.setObjectName("fp_render_enhance_horizontalSlider")
        self.fp_tabWidget.addTab(self.fp_render_tab, "")
        self.fp_path_title_label = QtWidgets.QLabel(self.fp_groupBox)
        self.fp_path_title_label.setGeometry(QtCore.QRect(10, 20, 291, 16))
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.fp_path_title_label.sizePolicy().hasHeightForWidth())
        self.fp_path_title_label.setSizePolicy(sizePolicy)
        self.fp_path_title_label.setObjectName("fp_path_title_label")
        self.fp_path_lineEdit = QtWidgets.QLineEdit(self.fp_groupBox)
        self.fp_path_lineEdit.setGeometry(QtCore.QRect(10, 40, 251, 16))
        self.fp_path_lineEdit.setReadOnly(True)
        self.fp_path_lineEdit.setObjectName("fp_path_lineEdit")
        self.fp_path_toolButton = QtWidgets.QToolButton(self.fp_groupBox)
        self.fp_path_toolButton.setGeometry(QtCore.QRect(270, 40, 31, 16))
        self.fp_path_toolButton.setObjectName("fp_path_toolButton")
        SuperMario_Dialog.setCentralWidget(self.centralWidget)

        self.retranslateUi(SuperMario_Dialog)
        self.fp_tabWidget.setCurrentIndex(0)
        self.user_cmd_lineEdit.returnPressed.connect(self.user_cmd_pushButton.click)
        QtCore.QMetaObject.connectSlotsByName(SuperMario_Dialog)

    def retranslateUi(self, SuperMario_Dialog):
        _translate = QtCore.QCoreApplication.translate
        SuperMario_Dialog.setWindowTitle(_translate("SuperMario_Dialog", "SuperMario @ Imperial College London"))
        self.dac_groupBox.setTitle(_translate("SuperMario_Dialog", "DAC (mV)"))
        self.dac_rst_label.setText(_translate("SuperMario_Dialog", "Vg_rst"))
        self.dac_y_label.setText(_translate("SuperMario_Dialog", "Vy"))
        self.dac_iv_label.setText(_translate("SuperMario_Dialog", "Vcm_IV"))
        self.dac_ota_label.setText(_translate("SuperMario_Dialog", "Vcm_OTA"))
        self.dac_int_label.setText(_translate("SuperMario_Dialog", "V_integrate"))
        self.dac_read_pushButton.setText(_translate("SuperMario_Dialog", "Read"))
        self.dac_write_pushButton.setText(_translate("SuperMario_Dialog", "Write"))
        self.dac_rst_checkBox.setText(_translate("SuperMario_Dialog", "EN"))
        self.dac_y_checkBox.setText(_translate("SuperMario_Dialog", "EN"))
        self.dac_iv_checkBox.setText(_translate("SuperMario_Dialog", "EN"))
        self.dac_ota_checkBox.setText(_translate("SuperMario_Dialog", "EN"))
        self.dac_int_checkBox.setText(_translate("SuperMario_Dialog", "EN"))
        self.dac_reset_pushButton.setText(_translate("SuperMario_Dialog", "Reset"))
        self.rt_groupBox.setTitle(_translate("SuperMario_Dialog", "Real-time Frame Acquisition"))
        self.rt_path_lineEdit.setText(_translate("SuperMario_Dialog", "C:\\BlackPearl"))
        self.rt_path_title_label.setText(_translate("SuperMario_Dialog", "Experiment Path:"))
        self.rt_path_toolButton.setText(_translate("SuperMario_Dialog", "..."))
        self.rt_info_title_label.setText(_translate("SuperMario_Dialog", "Information:"))
        self.rt_exp_id_title_label.setText(_translate("SuperMario_Dialog", "Experiment ID (E_):"))
        self.rt_chip_id_title_label.setText(_translate("SuperMario_Dialog", "Chip ID       (C_):"))
        self.rt_user_com_title_label.setText(_translate("SuperMario_Dialog", "User Comment: (U_):"))
        self.rt_user_com_lineEdit.setToolTip(_translate("SuperMario_Dialog", "<html><head/><body><p>Only alphabet, digital and underscore are allowed</p></body></html>"))
        self.rt_readout_pushButton.setText(_translate("SuperMario_Dialog", "Readout"))
        self.rt_test_pushButton.setText(_translate("SuperMario_Dialog", "Test"))
        self.rt_save_checkBox.setText(_translate("SuperMario_Dialog", "Save"))
        self.rt_offset_pushButton.setText(_translate("SuperMario_Dialog", "Offset"))
        self.rt_raw_pushButton.setText(_translate("SuperMario_Dialog", "Raw"))
        self.fifo_check_label.setText(_translate("SuperMario_Dialog", "<html><head/><body><p align=\"center\">FINE</p></body></html>"))
        self.co_groupBox.setTitle(_translate("SuperMario_Dialog", "Concatenate Binary Files"))
        self.co_path_lineEdit.setText(_translate("SuperMario_Dialog", "D:\\BlackPearl"))
        self.co_path_title_label.setText(_translate("SuperMario_Dialog", "Concatenation Path:"))
        self.co_path_toolButton.setText(_translate("SuperMario_Dialog", "..."))
        self.rt_concatenation_pushButton.setText(_translate("SuperMario_Dialog", "Concate"))
        self.console_groupBox.setTitle(_translate("SuperMario_Dialog", "Console"))
        self.console_clear_pushButton.setText(_translate("SuperMario_Dialog", "clear"))
        self.user_cmd_groupBox.setTitle(_translate("SuperMario_Dialog", "Debug Interface for Designer"))
        self.user_cmd_lineEdit.setText(_translate("SuperMario_Dialog", "Input your command here"))
        self.user_cmd_pushButton.setText(_translate("SuperMario_Dialog", "send"))
        self.system_groupBox.setTitle(_translate("SuperMario_Dialog", "System Settings"))
        self.serial_port_title_label.setText(_translate("SuperMario_Dialog", "Serial Port:"))
        self.serial_port_comboBox.setItemText(0, _translate("SuperMario_Dialog", "Refresh"))
        self.ui_status_title_label.setText(_translate("SuperMario_Dialog", "Status:"))
        self.ui_status_label.setText(_translate("SuperMario_Dialog", "IDLE"))
        self.power_title_label.setText(_translate("SuperMario_Dialog", "Power"))
        self.power_pushButton.setText(_translate("SuperMario_Dialog", "OFF"))
        self.fp_groupBox.setTitle(_translate("SuperMario_Dialog", "Frame Processing"))
        self.fp_replay_check_pushButton.setText(_translate("SuperMario_Dialog", "Check"))
        self.fp_replay_pushButton.setText(_translate("SuperMario_Dialog", "Replay"))
        self.fp_replay_start_title_label.setText(_translate("SuperMario_Dialog", "Start:"))
        self.fp_replay_end_title_label.setText(_translate("SuperMario_Dialog", "End:"))
        self.fp_replay_delay_title_label.setText(_translate("SuperMario_Dialog", "Delay(s):"))
        self.fp_replay_start_lineEdit.setText(_translate("SuperMario_Dialog", "1"))
        self.fp_replay_end_lineEdit.setText(_translate("SuperMario_Dialog", "1"))
        self.fp_replay_delay_lineEdit.setText(_translate("SuperMario_Dialog", "0.00"))
        self.fp_replay_png_checkbox.setText(_translate("SuperMario_Dialog", "Save PNG"))
        self.fp_tabWidget.setTabText(self.fp_tabWidget.indexOf(self.fp_replay_tab), _translate("SuperMario_Dialog", "Replay"))
        self.fp_render_frame_only_checkbox.setText(_translate("SuperMario_Dialog", "Frame Only"))
        self.fp_render_pushButton.setText(_translate("SuperMario_Dialog", "Render"))
        self.fp_render_fps_title_label.setText(_translate("SuperMario_Dialog", "FPS:"))
        self.fp_render_fps_lineEdit.setText(_translate("SuperMario_Dialog", "5"))
        self.fp_render_progress_title_label.setText(_translate("SuperMario_Dialog", "Progress:"))
        self.fp_render_check_pushButton.setText(_translate("SuperMario_Dialog", "Check"))
        self.fp_render_enhance_title_label.setText(_translate("SuperMario_Dialog", "Enhance:"))
        self.fp_render_enhance_lineEdit.setText(_translate("SuperMario_Dialog", "2"))
        self.fp_tabWidget.setTabText(self.fp_tabWidget.indexOf(self.fp_render_tab), _translate("SuperMario_Dialog", "Render"))
        self.fp_path_title_label.setText(_translate("SuperMario_Dialog", "Binary File Path:"))
        self.fp_path_lineEdit.setText(_translate("SuperMario_Dialog", "D:\\BlackPearl"))
        self.fp_path_toolButton.setText(_translate("SuperMario_Dialog", "..."))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    SuperMario_Dialog = QtWidgets.QMainWindow()
    ui = Ui_SuperMario_Dialog()
    ui.setupUi(SuperMario_Dialog)
    SuperMario_Dialog.show()
    sys.exit(app.exec_())