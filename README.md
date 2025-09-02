# A high speed data acquisition framework
I built a high-speed data acquisition system that captures very high bandwidth data rate from a sensor, up to the order of 10 Gbps. The FPGA can process the Real-time data, buffer the data in an on-board DDR RAM, and relay the data to a host computer, so you can further visualize and process it in a later stage. This type of system is widely used in high-end scientific instruments. Like atomic force microscopy, optical interferometry, and many optical experiments.

To use it, first compile the project in Vivado, generate the bitstream, and output the hardware. Program the device in Xilinx SDK or Vitis. I use a Zynq 7200, but you can modify the target in Vivado and build a new application in SDK or Vitis. You may also need to modify the constraints. 

I wrote a simple MATLAB GUI application to interact with the Zynq 7020 PS core. I use an AD9226 ADC to capture the data, which has a maximum sampling rate of 100 MHz. Here are some snapshots in a walkthrough from a YouTube video of this project. This is quite a versatile framework; with a simple modification, it can fit into many scientific instrument processing units, like AFM, QCM, DLS, FLIM, and many more. If you have difficulty building your own instrument, please contact me. 

![Capturing Data at 100 MHz](https://github.com/wangshuoleon/A-high-speed-data-acquisition-framework/blob/main/2025-08-29%20(4).png)


![The block design](https://github.com/wangshuoleon/A-high-speed-data-acquisition-framework/blob/main/2025-08-29.png)


![The general Framework](https://github.com/wangshuoleon/A-high-speed-data-acquisition-framework/blob/main/2025-09-02%20(1).png)




