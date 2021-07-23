#! /bin/bash

source /opt/ros/melodic/setup.bash
source /home/aeksiri/catkin_ws/devel/setup.bash

roslaunch si_amr gazebo.launch &

sleep 2

roslaunch si_amr display.launch &

sleep 2

roslaunch ira_laser_tools laserscan_multi_merger.launch &

sleep 2

roslaunch si_amr map_server.launch &

sleep 2

roslaunch si_amr amcl.launch &

sleep 2

roslaunch si_amr move_base.launch

