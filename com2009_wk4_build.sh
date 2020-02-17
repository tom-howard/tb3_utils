#! /bin/bash

mkdir ~/temp/
cd ~/temp/
git clone https://github.com/tom-howard/COM2009_WK04.git

rm ~/notebook_ws/default.ipynb
rm -rf ~/notebook_ws/images

cd ~/temp/COM2009_WK04/
mv figures ~/notebook_ws/
mv support_matls ~/notebook_ws/
mv wk04_ROS_Services.ipynb ~/notebook_ws/wk04_ROS_Services.ipynb

mkdir ~/notebook_ws/past_weeks/
cd ~/notebook_ws/past_weeks/
git clone https://github.com/tom-howard/COM2009_WK02.git
git clone https://github.com/tom-howard/COM2009_WK03.git
mkdir ~/notebook_ws/past_weeks/COM2009_WK02/past_weeks/
cd ~/notebook_ws/past_weeks/COM2009_WK02/past_weeks/
git clone https://github.com/tom-howard/COM2009_WK01.git

cd ~/catkin_ws/src/
git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
git clone https://github.com/ROBOTIS-GIT/turtlebot3.git
git clone https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
git clone https://github.com/tom-howard/srv_examples.git

rm ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/launch/turtlebot3_world.launch
rm ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/launch/turtlebot3_empty_world.launch
rm ~/catkin_ws/src/turtlebot3/turtlebot3_teleop/launch/turtlebot3_teleop_key.launch

cd ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/launch/
wget https://raw.githubusercontent.com/tom-howard/tb3_utils/master/turtlebot3_empty_world.launch
wget https://raw.githubusercontent.com/tom-howard/tb3_utils/master/turtlebot3_world.launch
cd ~/catkin_ws/src/turtlebot3/turtlebot3_teleop/launch/
wget https://raw.githubusercontent.com/tom-howard/tb3_utils/master/turtlebot3_teleop_key.launch

cd ~/catkin_ws && catkin_make

cd ~
rm -rf ~/temp/
rm -f ~/com2009_wk4_build.sh

echo "done."
