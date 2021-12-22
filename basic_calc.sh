#!/bin/bash

echo "The script $0 is running..."
echo $(( $@ ))
#if [[ $# -eq 3 ]]; then
#    echo $(( ${2:-0} $1 ${3:-0} $1 ${4:-0} $1 ${5:-0} $1 ${6:-0} $1 ${7:-0} $1 ${8:-0} $1 ${9:-0} $1 ${10:-0} ))
#    echo "The number of given parameters are $#."
#    exit 0
#else
#    echo "This script requires at least 3 parameters."
#    echo "Usage: $0 <operator(+ or -)> <first operand> <second operand> .. <ninth operand>"
#    exit 1
#fi
