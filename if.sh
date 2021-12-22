#!/bin/bash


if [[ 1 -gt 1 ]]; then
    echo first test passed
elif [[ 1 -eq 2 ]]; then
    echo second test passed
else
    echo both tests failed
fi
