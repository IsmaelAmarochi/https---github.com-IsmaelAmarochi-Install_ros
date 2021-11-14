#!/bin/bash
# Author: Ismael Amarochi
# Copyright (c) 2021

echo ""
echo "[Note] Target OS version  >>> Ubuntu 20.04.x (Focal Fossa) or Linux Mint 21.x"
echo "[Note] Target ROS version >>> ROS Noetic Ninjemys"
echo "[Note] Catkin workspace   >>> $HOME/catkin_ws"
echo ""
echo "PRESS [ENTER] TO CONTINUE THE INSTALLATION"
echo "IF YOU WANT TO CANCEL, PRESS [CTRL] + [C]"
read

echo "[Updating linux]"
sudo apt update

echo "[Upgrading linux]"
sudo apt upgrade

echo "[Getting ROS Noetic installation file]"
wget https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/install_ros_noetic.sh

echo "[Performing CHMOD]"
chmod 755 ./install_ros_noetic.sh 

echo "[Running script]"
bash ./install_ros_noetic.sh

echo "[Installing dependant packages]"
sudo apt-get install ros-noetic-joy ros-noetic-teleop-twist-joy \
  ros-noetic-teleop-twist-keyboard ros-noetic-laser-proc \
  ros-noetic-rgbd-launch ros-noetic-rosserial-arduino \
  ros-noetic-rosserial-python ros-noetic-rosserial-client \
  ros-noetic-rosserial-msgs ros-noetic-amcl ros-noetic-map-server \
  ros-noetic-move-base ros-noetic-urdf ros-noetic-xacro \
  ros-noetic-compressed-image-transport ros-noetic-rqt* ros-noetic-rviz \
  ros-noetic-gmapping ros-noetic-navigation ros-noetic-interactive-markers


echo "[Installing TurtleBot3 packages]"
sudo apt install ros-noetic-dynamixel-sdk
sudo apt install ros-noetic-turtlebot3-msgs
sudo apt install ros-noetic-turtlebot3

echo "[Complete!!!]"
exit 0