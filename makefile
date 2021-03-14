# 注释
main: MAIN
	/c/Keil/C51/BIN/Ohx51.exe MAIN
MAIN: main.OBJ
	/c/Keil/C51/BIN/LX51.exe main.OBJ
main.OBJ: main.asm
	/c/Keil/C51/BIN/A51.EXE main.asm

.PHONY: clean
clean: 
	rm MAIN MAIN.MAP MAIN.hex main.LST main.OBJ
