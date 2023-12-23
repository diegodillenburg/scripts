#!/bin/bash

DEFAULT_FLAGS="-Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion" 
FILENAME=$1
NO_EXT=${FILENAME%.*}
NAME=$(tr '_' ' ' <<< "$NO_EXT" | awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1' | sed 's/ /''/g')

echo $FILENAME
echo $NAME
echo $NO_EXT

g++ -o $NAME $FILENAME $DEFAULT_FLAGS

