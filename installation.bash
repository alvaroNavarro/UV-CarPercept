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
colcon build --packages-select sync_sensors_interface -Wno-dev
colcon build --packages-select cam_lidar_calibration_interface -Wno-dev
colcon build --packages-select open_dataset_interface -Wno-dev
colcon build --packages-select pcl_kiss_filter_interface -Wno-dev

source ~/ros2_ws/install/setup.bash

colcon build --cmake-args -Wno-dev
source install/setup.bash

echo "======================================================"
echo "      INSTALLATION COMPLETED SUCCESSFULLY"
echo "======================================================"