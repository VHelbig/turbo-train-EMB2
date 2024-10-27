# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/vincent/Embedded-System/turbo-train-EMB2/bare_metal/interface_test_cpu_system/_ide/scripts/debugger_interface_test_cpu-emulation.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/vincent/Embedded-System/turbo-train-EMB2/bare_metal/interface_test_cpu_system/_ide/scripts/debugger_interface_test_cpu-emulation.tcl
# 
connect -url tcp:localhost:4352
targets 3
dow /home/vincent/Embedded-System/turbo-train-EMB2/bare_metal/interface_test_cpu/Debug/interface_test_cpu.elf
mask_write 0xfd1a0104 [expr (0x401 << 0) | 0x100] 0
bpadd -addr &main
