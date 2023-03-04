#!/bin/bash
#Author:Zongyang
#Blog:https://www.thetu.cn
#Time:2022-12-17 15:33:00
#Name:/home/thetu/.config/i3/powermanger.sh
#Version:V1.0
#Description:This is a production script.

if [ "exit" == "$1" ];then                                                                                                                                     
    i3-msg exit                                                                                                                                                
elif [ "reboot" == "$1" ];then                                                                                                                                 
    reboot                                                                                                                                                
elif [ "poweroff" == "$1" ];then                                                                                                                               
    poweroff                                                                                                                                              
else                                                                                                                                                           
    exit 1                                                                                                                                                     
fi
