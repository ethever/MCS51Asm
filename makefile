# 汇编器路径
COMP_PATH = /c/Keil/C51/BIN/A51.EXE
# 链接器路径
LINKER_PATH = /c/Keil/C51/BIN/LX51.exe
# 转换器路径
CONVERTER_PATH = /c/Keil/C51/BIN/Ohx51.exe



main: MAIN
	$(CONVERTER_PATH) MAIN
MAIN: main.OBJ
	$(LINKER_PATH) main.OBJ
main.OBJ: main.asm
	$(COMP_PATH) main.asm

.PHONY: clean
clean: 
	rm MAIN MAIN.MAP MAIN.hex main.LST main.OBJ
