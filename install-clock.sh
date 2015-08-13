#!/bin/bash

echo ""
echo " >> Install lib paho for MQTT"
echo "*****************************"
git clone http://git.eclipse.org/gitroot/paho/org.eclipse.paho.mqtt.c.git
cd org.eclipse.paho.mqtt.c
sudo make install
cd ..

echo ""
echo " >> Install SmartHome-Clock"
echo "*****************************"
git clone https://github.com/alexgus/SmartHome-Clock.git
cd SmartHome-Clock/Debug
make
cd ../..
sudo cp SmartHome-Clock/Debug/SmartHome-Clock /usr/bin

echo ""
echo " >> Clean"
echo "*****************************"
sudo rm org.eclipse.paho.mqtt.c -Rf
sudo rm SmartHome-* -Rf