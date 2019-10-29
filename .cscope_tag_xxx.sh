#!/bin/bash
CUR_PATH=`pwd`
mkdir -p ./cscope_lighttpd
find ${CUR_PATH}/ -type d -name .git -prune -o -name "*.h" -print -o -name "*.c" -print -o -name "*cc" -print -o -name "*.cpp" -print -o -name "*.mak" -print -o -name "Makefile" -print -o -name "*.hh" -print > ./cscope_lighttpd/cscope.files
#find ${CUR_PATH}/ssp/ -name "*.[h|c|cc|cpp]" > cscope.files
cscope -bkq -i ./cscope_lighttpd/cscope.files -f ./cscope_lighttpd/cscope.out
ctags -L -< ./cscope_lighttpd/cscope.files
export CSCOPE_DB=./cscope_lighttpd/cscope.out

##notice##
## 1, Before the dir that need to be prune, add the `-type d`
## 2, After the -prune option, add the -print after the wildcards to exclude the prune content in the stdout
