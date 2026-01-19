#!/bin/bash

echo "-----------------------------------------------------------------------------------------------------"
echo "                                      CALIBRATION PACKAGES"
echo "-----------------------------------------------------------------------------------------------------"
echo ""
echo "The following packages will be installed:"
echo "1. zed_calibration"
echo "2. cam_lidar_calibration"
echo ""
echo "... Starting installation process ..."

# List of the repositories
repos=(
    "https://github.com/alvaroNavarro/zed_calibration"
    "https://github.com/alvaroNavarro/cam_lidar_calibration"
    "https://github.com/alvaroNavarro/cam_lidar_calibration_interface"
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
echo "Calibration modules installed."
echo "----------------------------------------"

