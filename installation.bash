#!/bin/bash

echo "----------------------------------------------------------------------"
echo "----------------------------------------------------------------------"
echo "UV-CarPerception modules"
echo ""
echo "Description:"
echo "This script will install the perception module into the ROS2 workspace"
echo "The repos are:"
echo "1. Utility module"
echo "2. Dataset moduloe"
echo "3. Calibration module"
echo "4. Advanced module"
echo ""

sudo chmod +x utility.bash
sudo chmod +x dataset.bash
sudo chmod +x calibration.bash
sudo chmod +x advanced-mod.bash

# Ejecutar la instalación del módulo de utilidades
#----------------------------------------------------
./utility.bash
#----------------------------------------------------

# Ejectuar la instlación del módulo de dataset
#----------------------------------------------------
./dataset.bash
#----------------------------------------------------

# Ejecutar la instalación del módulo de calibración
#----------------------------------------------------
./calibration.bash
#----------------------------------------------------

# Ejecutar la instalación del módulo de tareas avanzadas
#----------------------------------------------------
./advanced-mod.bash
#----------------------------------------------------

cd ..
rosdep install --from-path src --ignore-src -r -y # Install dependencies 
colcon build --packages-select sync_sensors_interface 
colcon build --packages-select cam_lidar_calibration_interface 
colcon build --packages-select open_dataset_interface 
colcon build --packages-select pcl_kiss_filter_interface 

source ~/ros2_ws/install/setup.bash

colcon build --packages-select cam_lidar_calibration
colcon build --packages-select create_UV_dataset
colcon build --packages-select gps_imu
colcon build --packages-select kiss_icp
colcon build --packages-select kiss_icp_odometry
colcon build --packages-select kiss_icp_wrapper
colcon build --packages-select multi_sensor
colcon build --packages-select open_dataset
colcon build --packages-select panoramic_image
colcon build --packages-select pcl_kiss_filter
colcon build --packages-select projection_lidar_cameras
colcon build --packages-select sync_all_sensors_from_rosbag
colcon build --packages-select sync_sensors
colcon build --packages-select test_sync_camera_lidar
colcon build --packages-select trajectory_publisher
colcon build --packages-select visualize_sensor_from_rosbag
colcon build --packages-select zed_calibration

source install/setup.bash

echo "======================================================"
echo "      INSTALLATION COMPLETED SUCCESSFULLY"
echo "======================================================"
