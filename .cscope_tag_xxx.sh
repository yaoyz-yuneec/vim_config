#!/bin/bash
CUR_PATH=`pwd`
mkdir -p ./cscope_lighttpd
find ${CUR_PATH}/ -name "*.h" -o -name "*.c" -o -name "*cc" -o -name "*.cpp" -o -name "*.mak" -o -name "Makefile" -o -name "*.hh"> ./cscope_lighttpd/cscope.files
#find ${CUR_PATH}/ssp/ -name "*.[h|c|cc|cpp]" > cscope.files
cscope -bkq -i ./cscope_lighttpd/cscope.files -f ./cscope_lighttpd/cscope.out
ctags -L -< ./cscope_lighttpd/cscope.files
export CSCOPE_DB=./cscope_lighttpd/cscope.out
