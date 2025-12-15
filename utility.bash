#!/bin/bash

echo "---------------------------------------------------------------"
echo "              UTILITY AND DEVICE VERIFICATION PACKAGES"
echo "---------------------------------------------------------------"
echo ""
echo "The following packages will be installed:"
echo "1. gps_imu"
echo "2. multi_sensor"
echo "3. test_sync_camera_lidar"
echo "4. sync_sensors"
echo "5. sync_sensors_interface"
echo "6. sync_all_sensor_from_rosbag"
echo "7. syncronize_lidar_camera_cpp"
echo "8. visualize_sensor_from_rosbag"
echo ""
echo "... Starting installation process ..."

# List of the repositories
repos=(
    "https://github.com/alvaroNavarro/gps_imu"
    "https://github.com/alvaroNavarro/multi_sensor"
    "https://github.com/alvaroNavarro/test_sync_camera_lidar"
    "https://github.com/alvaroNavarro/visualize_sensor_from_rosbag"
    "https://github.com/alvaroNavarro/sync_sensors"
    "https://github.com/alvaroNavarro/sync_sensors_interface"
    "https://github.com/alvaroNavarro/sync_all_sensor_from_rosbag"
    "https:/github.com/alvaroNavarro/syncronize_lidar_camera_cpp"
)

cd ~/
PATH_TO_ROOT=$(pwd)
PATH_TO_DATA_FOLDER="${PATH_TO_ROOT}/ros2_ws/src"

echo "It is important to install sensor drivers before running this package!!!!"

# Ruta destino
cd $PATH_TO_DATA_FOLDER

# Clone each repo
for repo in "${repos[@]}"; do
    echo "Cloning $repo ..."
    git clone "$repo"
done

echo "----------------------------------------"
echo "Utility modules installed."
echo "----------------------------------------"