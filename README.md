本项目是用UART串口输出FPGA io的位置。用于确认FPGA 的gpio绑定关系。特别适用于需要反向某些FPGA单板。

This project is the location of the FPGA io output with the UART serial port. Used to confirm the GPIO binding relationship of the FPGA. It is especially suitable for some FPGA boards that need to be reversed.

本项目提供了一个例子工程，并有上板实践见压缩包。

项目前提：
1. FPGA有时钟，并且知道位置。（可以通过JTAG) 观察跳变管脚 ；
2. 可以jtag下载版本；
3. 然后改下python脚本，自动生成top 文件，.v 以及xdc io约束绑定；
4. 注意，时钟波特率，可能不对，需要改下。可以通过示波器观察输出的频率，调整FPGA代码的波特率数据（分频值）；
5. 然后，就可以用串口芯片，rx 一个个点，串口助手可以看到打印的管脚位置，直接记录就好了 。


