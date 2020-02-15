#! /bin/bash

mkdir ~/temp/
cd ~/temp/
git clone https://github.com/tom-howard/COM2009_WK02.git

rm ~/notebook_ws/default.ipynb
rm -rf ~/notebook_ws/images

mv ~/temp/COM2009_WK02/figures ~/notebook_ws/
mv ~/temp/COM2009_WK02/support_matls ~/notebook_ws/
mv ~/temp/COM2009_WK02/wk02_Odometry_Based_Navigation.ipynb ~/notebook_ws/wk02_Odometry_Based_Navigation.ipynb

mkdir ~/notebook_ws/past_weeks/
cd ~/notebook_ws/past_weeks/
git clone https://github.com/tom-howard/COM2009_WK01.git

cd ~/catkin_ws/src/
git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
git clone https://github.com/ROBOTIS-GIT/turtlebot3.git
git clone https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
cd ~/catkin_ws && catkin_make

rm ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/launch/turtlebot3_world.launch
rm ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/launch/turtlebot3_empty_world.launch
rm ~/catkin_ws/src/turtlebot3/turtlebot3_teleop/launch/turtlebot3_teleop_key.launch

cd ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/launch/
wget https://raw.githubusercontent.com/tom-howard/tb3_utils/master/turtlebot3_empty_world.launch
wget https://raw.githubusercontent.com/tom-howard/tb3_utils/master/turtlebot3_world.launch
cd ~/catkin_ws/src/turtlebot3/turtlebot3_teleop/launch/
wget https://raw.githubusercontent.com/tom-howard/tb3_utils/master/turtlebot3_teleop_key.launch

cd ~
rm -rf ~/temp/

echo "done."
