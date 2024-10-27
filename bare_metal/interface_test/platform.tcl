# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/vincent/Embedded-System/turbo-train-EMB2/bare_metal/interface_test/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/vincent/Embedded-System/turbo-train-EMB2/bare_metal/interface_test/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {interface_test}\
-hw {/home/vincent/Embedded-System/turbo-train-EMB2/bare_metal/interface_test.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {/home/vincent/Embedded-System/turbo-train-EMB2/bare_metal}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {hello_world}
platform generate -domains 
platform active {interface_test}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
