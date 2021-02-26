# File:		Lacewing_plot_lib.py
# Author: 	Lei Kuang
# Date:		19th Feb 2020
# @ Imperial College London

# 2D Spatial Image 78x56

import matplotlib
matplotlib.use("Qt5Agg")

from matplotlib import gridspec
from mpl_toolkits.axes_grid1 import make_axes_locatable
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.figure import Figure
from mpl_toolkits.mplot3d import Axes3D
#import matplotlib.pyplot as plt
#plt.ioff()

from PyQt5.QtWidgets import QMainWindow, QSizePolicy

import numpy as np

class SuperMario_Plot(QMainWindow):
    
    busy = False
    
    def __init__(self):
        super().__init__()
        self.setWindowTitle('BlackPearl Plot')
        self.setGeometry(250, 300, 540, 540)
        self.setFixedSize(540, 540)
        # Matplotlib instance
        self.canvas = PlotCanvas(self)
        self.canvas.move(0, 0)
        # Window state
        self.window_existed = False

    def closeEvent(self, event):
        self.window_existed = False
        
    def show_window(self):
        self.show()
        self.window_existed = True
        
    def is_window_existed(self):
        return self.window_existed

    def plot_1d(self, data):
        self.canvas.plot_1d(data)

    def plot_2d(self, data):
        self.canvas.plot_2d(data)
        
    def plot_3d(self, data):
        self.canvas.plot_3d(data)
        self.busy = False
        
    def save_image(self, path):
        self.canvas.save_image(path)

class PlotCanvas(FigureCanvas):

    def __init__(self, parent=None):
        self.figure = Figure(figsize=(6, 6), dpi=90)
        FigureCanvas.__init__(self, self.figure)
        self.setParent(parent)

        FigureCanvas.setSizePolicy(self, QSizePolicy.Expanding, QSizePolicy.Expanding)
        FigureCanvas.updateGeometry(self)
        
        self.grid = gridspec.GridSpec(3, 3, hspace=1)
        
        
        # - 3D Plot Init
        self.x = np.arange(0, 128)
        self.y = np.arange(0, 128)
        (self.y, self.x) = np.meshgrid(self.x, self.y)

        self.ax_3d = self.figure.add_subplot(self.grid[0:2, 0:3], projection='3d')
        self.ax_3d.set_title("Spatical Capture", pad=25)
        self.data_3d = np.zeros(128*128).reshape(128, 128)
        self.fig_3d =   self.ax_3d.plot_surface(  self.x, self.y, 
                                                  self.data_3d,
                                                  #cmap=plt.get_cmap('hsv'),
                                                  cmap='gist_rainbow', 
                                                  #extent=[0,  77,  0, 55], 
                                                  vmin=0, vmax=255 )
        self.ax_3d.set_xlabel("Column")
        self.ax_3d.set_ylabel("Row")
        self.ax_3d.view_init(35, 30)
        self.ax_3d.set_zlim(0, 255)
        
        
        # - Colorbar
        self.figure.colorbar(self.fig_3d, orientation='vertical')
        
        '''
        
        # - 2D Plot Init
        self.ax_2d = self.figure.add_subplot(self.grid[0:2, 0:3])
        self.ax_2d.set_title("Spatical Capture")
        self.data_2d = np.zeros(128*128).reshape(128, 128)
        self.fig_2d =   self.ax_2d.imshow(  self.data_2d,
                                            #cmap=plt.get_cmap('hsv'),
                                            cmap='gist_rainbow', 
                                            interpolation='none',
                                            #extent=[0,  77,  0, 55], 
                                            vmin=0,  vmax=255 )
        self.ax_2d.set_xlabel("Column")
        self.ax_2d.set_ylabel("Row")
        # - Colorbar
        divider = make_axes_locatable(self.ax_2d)
        cax = divider.append_axes("right", size="5%", pad=0.1)
        self.figure.colorbar(self.fig_2d,  orientation='vertical', cax=cax)

        '''
        # - 1D Plot Init
        self.ax_1d = self.figure.add_subplot(self.grid[2, :])
        self.ax_1d.set_title("Average Readout")
        self.ax_1d.set_xlim(0, 1)
        self.ax_1d.set_ylim(0, 1)
        self.ax_1d.set_xlabel("Frame No.")
        #self.ax_1d.set_ylabel("Value")
        [self.fig_1d] = self.ax_1d.plot([0], 'b-')
        
        self.draw()

    # Plot 1D line
    def plot_1d(self, data):
        self.data_1d = np.array(data)
        x_len = len(self.data_1d)
        self.ax_1d.set_xlim(0, x_len)
        self.ax_1d.set_ylim(0, 1 + int(max(self.data_1d)*1.1))
        self.fig_1d.remove()
        [self.fig_1d] = self.ax_1d.plot(self.data_1d, 'b-')
        self.draw()
        
    # Plot 2D Image
    def plot_2d(self, data):
        self.data_2d = np.array(data).reshape(128, 128)
        #self.fig_2d.remove()
        self.fig_2d = self.ax_2d.imshow(    self.data_2d,
                                            #cmap=plt.get_cmap('hsv'),
                                            cmap='gist_rainbow', 
                                            interpolation='none',
                                            #extent=[0,  77,  0, 55], 
                                            vmin=0,  vmax=255 )
        self.draw()
        
    # Plot 3D Image
    def plot_3d(self, data):
        self.data_3d = np.array(data).reshape(128, 128)
        self.fig_3d.remove()
        self.fig_3d  = self.ax_3d.plot_surface( self.x, self.y, 
                                                self.data_3d,
                                                cmap='gist_rainbow', 
                                                #extent=[0,  77,  0, 55], 
                                                vmin=0, vmax=255 )
        self.draw()
        
    # Save plot to .png
    def save_image(self, path):
        self.figure.savefig(path)

# Testbench
if __name__ == '__main__':
    import sys
    from PyQt5.QtWidgets import QApplication
    app = QApplication(sys.argv)
    ui = SuperMario_Plot()
    ui.show_window()
    sys.exit(app.exec_())
