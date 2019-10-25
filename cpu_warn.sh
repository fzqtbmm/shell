#!/bin/bash
#
#********************************************************************
#Author:               fzq
#Progarm：             A rough description 
#Date：                2019-08-22
#FileName：            cpu_warn.sh
#PATH：                please export path 
#Description：         The test script
#Copyright (C)：      2019 All rights reserved
#********************************************************************
#


WARNING=80
USE=`df | sed -nr '/^\/dev\/sd/s/.* ([^ ]+)%.*/\1/p'|sort -nr | head -1`
if [ $USE -gt $WARNING ] ; then
   echo Disk will be full | mail -s "disk warning" root 
fi


