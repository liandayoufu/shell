#/bin/bash

if [ ! -d userdata ]; then
 mkdir userdata
fi

for i in {1..50}; do
 mkdir userdata/user$i
done

chmod -R 754 userdata/*
