#!/bin/bash

echo "-----------------------------------------------------------------------------------------------------"
echo "                                      DATASET PACKAGES"
echo "-----------------------------------------------------------------------------------------------------"
echo ""
echo "The following packages will be installed:"
echo "1. create_uv_dataset"
echo "2. open_dataset"
echo ""
echo "In order to use gps location in UTM format, GeographicLib library must be downloaded and installesd"
echo ""
echo "... Starting installation process ..."

# List of the repositories
repos=(
    "https://github.com/alvaroNavarro/create_UV_dataset"
    "https://github.com/alvaroNavarro/open_dataset"
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
echo "Dataset modules installed."
echo "----------------------------------------"

echo "GeographicLib will be installed in Document folder."
cd ~/Documents
git clone "https://github.com/ObjSal/GeographicLib"

#GeographicLib installation
cd GeographicLib
mkldir build && cd build
../configure
cmake .. -DGEOGRAPHICLIB_LIB_TYPE=STATIC -DGEOGRAPHICLIB_DATA=ON
make -j$(nproc)
sudo make install

echo "GeographicLib module installed.."

