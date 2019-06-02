#!/bin/bash
#find ./rtos/yuneec/ -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > cscope_rtos.files
#find ./rtos/ssp/ -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" >> cscope_rtos.files
RTOS_PATH=`pwd`/rtos
find ${RTOS_PATH}/yuneec -name "*.[h|c|cc|cpp]" > cscope_rtos.files
find ${RTOS_PATH}/ssp/ -name "*.[h|c|cc|cpp]" > cscope_rtos.files
cscope -bkq -i cscope_rtos.files -f cscope_rtos.out
ctags -L -< cscope_rtos.files
