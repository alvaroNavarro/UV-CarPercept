#!/bin/bash

echo "----------------------------------------------------------------------------------"
echo "                     ADVANCED PERCEPTION PACKAGES"
echo "----------------------------------------------------------------------------------"
echo ""
echo "The following packages will be installed:"
echo "1. panoramic_image"
echo "2. projection_lidar_cameras"
echo ""
echo "Point cloud registration:"
echo "1. kiss-icp"
echo "2. pcl_kiss_filter"
echo "3. trajectory_publisher"
echo "4. kiss_icp_wrapper"
echo "5. kiss_icp_odometry"
echo ""
echo "... Starting installation process ..."

# List of the repositories
repos=(
    "https://github.com/alvaroNavarro/panoramic_image"
    "https://github.com/alvaroNavarro/projection_lidar_cameras"
    "https://github.com/PRBonn/kiss-icp"
    "https://github.com/alvaroNavarro/pcl_kiss_filter"
    "https://github.com/alvaroNavarro/trajectory_publisher"
    "https://github.com/alvaroNavarro/kiss_icp_wrapper"
    "https://github.com/alvaroNavarro/kiss_icp_odometry"
)

# Kiss-icp installation
pip install kiss-cp

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
echo "Advanced modules installed."
echo "----------------------------------------"
