#!/bin/bash
awk -v sum=0 '{newcolum[FNR]=$3+$4};{for (i in newcolum) sum=sum+i}{print newcolum[FNR]}END{print sum/FNR}' text1>> tmp.txt

