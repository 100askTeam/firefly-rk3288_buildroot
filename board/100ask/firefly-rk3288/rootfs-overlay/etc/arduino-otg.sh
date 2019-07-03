#!/bin/sh
mkdir -p /arduino/arduino-100ask
MYFILE=/arduino/arduino-100ask/am335x_app
while :
do
        find /arduino/ -name "am335x*" > /dev/null

if [ -f "/arduino/arduino-100ask/am335x_app" ]
then
        mv /arduino/arduino-100ask/am335x_app  /root
        chmod u+x /root/am335x_app
        echo -e "\033[32m Application copy succeeded ! \033[0m"
        cd /root
fi
        sleep 3
done

