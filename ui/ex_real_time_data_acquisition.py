import _ftd3xx_win32 as _ft
import ftd3xx
from ftd3xx_defines import *

from ctypes import *

data_size = 1024 * 16 * 10

# check connected devices
numDevices = ftd3xx.createDeviceInfoList()

# open the first device (index 0)
ft601 = ftd3xx.create(0, _ft.FT_OPEN_BY_INDEX)
ft601.setPipeTimeout(0x82, 0)

# Set stream pipe
ft601.setStreamPipe(0x82, data_size)
#ft601.clearStreamPipe(0x82)

# Read data
print()
data = (c_ubyte * data_size)()
size = data_size

for n in range(0, 1000000 + 1):
    data = ft601.readPipeEx(0x82, size, raw=True)
    data_num = data['bytesTransferred']
    if(data_num!=0):
        data = data['bytes']
        
        data_beg = data[0]
        data_end = data[-1]
        
        if(data_beg==0 and data_end==255):
            print("Receive Bytes: %8d, %4d %4d" % (data_num, data_beg, data_end))
            pass
        else:
            print("Receive Bytes: %8d, %4d %4d" % (data_num, data_beg, data_end))
            raise SystemError
    else:
        break
        
#if(data_num==0):
#    print("No data received !")
#else:
#    print()
#    print("Receive Bytes: %d" % data_num)
#    i=0
#    for num in data:
#        print('%4d' % num, end='')
#        i = i + 1
#        if(i==32):
#            i = 0
#            print()

# close current device
ft601.close()
