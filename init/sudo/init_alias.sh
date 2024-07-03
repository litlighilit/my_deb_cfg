#!/usr/bin/env sh
alias UA=update-alternatives
prefix="/usr/bin"
PRE(){ echo -n "$prefix/$1"; }
UA --set editor `PRE vim.basic`
UAI(){ UA --install `PRE $1` $1 `PRE $1; }
UAI rename rename.ul
UAI python python3

