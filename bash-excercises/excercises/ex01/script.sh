#!/bin/bash

FILES=./myapp/applogs/log*

for i in $FILES;
do
    mv $i ${i}.log
done