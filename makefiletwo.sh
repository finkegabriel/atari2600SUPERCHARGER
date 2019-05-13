#! /bin/bash
#auto dasm
#finkegabriel
#2019
export DISPLAY=:0
clear
echo "Auto DASM/MakeWav"
echo "================="
echo "Input (*.asm) files are read from 'asm_input'"
echo "Output (*.bin)"
echo
echo -n "What is the name of the *.asm file? "
read input
./dasm.Linux.x86 $input.asm -f3 -o$input.bin
wine makewav.exe -ts -d2 -f0 $input.bin
clear
echo "================="
   





