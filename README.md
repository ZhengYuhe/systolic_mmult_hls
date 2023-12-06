# Systolic Srray Vitis_HLS Start Guide

## Prerequisites
- On your ece machine, run command `source /afs/ece.cmu.edu/class/ece643/software/scripts/setup_vitis21.lab.sh`
  
## Creating a New Project

1. Start Vitis HLS by issuing the command `vitis_hls` in your terminal.

2. At the Vitis HLS prompt, click on "Create Project."

3. Enter a project name, for example, "nbody_trial," and choose the location under `/scratch/643_vitis_<AndrewID>/<directory containing this repo>` as your project directory.

## Adding Design Files

4. In the "Add/Remove Design Files" window, add the following files:
   - `krnl_mmult.cpp`
   - All `.h` files related to your project.

5. Click "Browse..." and select the `krnl_mmult()` function as the Top function for synthesis. This function is the entry point for your design.

## Adding Testbench Files

6. In the "Add/Remove Testbench Files" window, add the `systolic_test.cpp` file as your testbench.

## Configuring the Solution

7. In the "Solution Configuration" window, configure the following settings:

   - Click on "..." under "Part Selection" to open the "Device Selection Dialog" window.

   - Select "Boards" and choose "Ultra96-V2 Single Board Computer" from the available board options.

   - Click "OK" to confirm your board selection.

   - Click "Finish" to complete the solution configuration.

## Run C simulation

8. From upper left bar, select Project > Run C Simulation. Click OK in the pop up C Simulation Dialog window.

## Run C Synthesis
9. Click the upper right green triangle button to run C synthesis. In the pop up dialog window, you can select target frequency of the design.
    After the C synthesis finishes, a resource utilization report will show up.
   
## Conclusion
For more information, refer to [Vitis HLS Guide](https://xilinx.github.io/Vitis-Tutorials/2021-1/build/html/docs/Getting_Started/Vitis_HLS/Getting_Started_Vitis_HLS.html)
