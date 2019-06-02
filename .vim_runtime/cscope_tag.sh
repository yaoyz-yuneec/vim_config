#!/bin/bash
find . -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > cscope.files
cscope -bkq -i cscope.files -f cscope.out
ctags -L -< cscope.files
