#!/bin/bash

source /opt/ros/kinetic/setup.bash
source $HOME/cmsvt_mbzirc/devel/setup.bash

export SITL_GAZEBO_PATH="$HOME/cmsvt_mbzirc/src/sitl_gazebo"
if [[ $GAZEBO_RESOURCE_PATH != *"${SITL_GAZEBO_PATH}"* ]]
then
  export GAZEBO_RESOURCE_PATH="${SITL_GAZEBO_PATH}:${GAZEBO_RESOURCE_PATH}"
fi
if [[ $GAZEBO_PLUGIN_PATH != *"${SITL_GAZEBO_PATH}/build"* ]]
then
  export GAZEBO_PLUGIN_PATH="${SITL_GAZEBO_PATH}/build:${GAZEBO_PLUGIN_PATH}"
fi
if [[ $GAZEBO_MODEL_PATH != *"${SITL_GAZEBO_PATH}/models"* ]]
then
  export GAZEBO_MODEL_PATH="${SITL_GAZEBO_PATH}/models:${GAZEBO_MODEL_PATH}"
fi
