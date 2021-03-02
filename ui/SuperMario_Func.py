# File:		SuperMario_Func.py
# Author: 	Lei Kuang
# Date:		1st March 2021
# @ Imperial College London

from datetime import datetime
import struct
import os
import zipfile

# ----------------------------------------------------------------
# Date Inforamtion
# ----------------------------------------------------------------
# Get current date, e.g., '20200224' -> 2020 Feb 24
def get_date():
    return datetime.now().isoformat().replace('-','').replace(':','')[0:8]

# Get current date and time, e.g., '20200224T141323'
def get_date_time(fraction = 0):
    return datetime.now().isoformat().replace('-','').replace(':','')[0:(15 + (0 if fraction==0 else (1 + fraction)))]
    
def get_std_date_time():
    return datetime.today().strftime('%Y-%m-%d %H:%M')
    
# ----------------------------------------------------------------
# File I/O
# ----------------------------------------------------------------
def binary_file_write(file, data_list):
    fw = open(file, 'wb')
    for data in data_list:
        fw.write(struct.pack('>H', data)) # 1023 -> b'\x03\xff'
    fw.close()
    
def binary_file_append(file, data_list):
    fw = open(file, 'ab')
    for data in data_list:
        fw.write(struct.pack('>H', data)) # 1023 -> b'\x03\xff'
    fw.close()
    
def binary_file_read(file):
    fw = open(file, 'rb')
    data_byte = fw.read()
    data_len = len(data_byte) >> 1
    data_list = []
    for n in range(0, data_len):
        (data, ) = struct.unpack('>H', data_byte[2*n:2*(n+1)])
        data_list.append(data)
    return data_list

def save_to_json(folder_path, info_dict):
    fw = open(folder_path + '/info.json', 'w')
    fw.write(str(info_dict).replace("'",  '"'))
    fw.close()
    
def zip_folder(in_path):
    # Get files
    file_list = os.listdir(in_path)
    # Out path and name
    out_path = os.path.dirname(in_path)
    out_name = os.path.os.path.basename(in_path) + '.zip'
    # Zip
    zip = zipfile.ZipFile(out_path + '/' + out_name, 'w', zipfile.ZIP_DEFLATED)
    for file in file_list:
        zip.write(in_path + '/' + file, file)
    zip.close()

# ----------------------------------------------------------------
# SuperMario PCB
# ----------------------------------------------------------------
def dac7562_val_to_vol(val):
    return val*10/4096.0-5
    
def mcp4822_val_to_vol(val):
    return val*2.048/4096

if __name__ == "__main__":
    pass
