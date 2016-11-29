#!/bin/bash

export ROS_MASTER_URI=http://CMS-D:11311
export ROS_IP=`ifconfig eno1 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
export ROS_HOSTNAME=$ROS_IP

echo "ROS_MASTER_URI:" $ROS_MASTER_URI
echo "ROS_HOSTNAME:" $ROS_HOSTNAME
echo "ROS_IP:" $ROS_IP
