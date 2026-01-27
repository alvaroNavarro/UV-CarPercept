# UV-CarPerception
The UV-CarPerception tool is developed as part of the objectives of the doctoral thesis entitled Time-Varying Semantic Maps for Long-term Localization using Multi-Modal Perception Systems, belonging to the    Perception and Intelligent Systems (PSI) research group at Universidad del Valle.
The application is designed to perform perception and mapping tasks in urban environments using a multi-sensor platform composed of three ZED2 stereo cameras, a 3D Ouster OS0 LiDAR scanner or Velodyne sensor, an inertial measurement unit (IMU), and a GPS receiver, all integrated on an embedded Jetson ORIN AGX system. Its main objective is to process the visual and geometric information resulting from the fusion of camera and LiDAR data to identify and register characteristic objects of the urban environment, while the IMU and GPS data provide odometry information for localization tasks.

This module will install the perception modules into the ROS2 workspace from individual bash files

## 📦 Pre-Requisites
- It is mandatory to install ros2 framework with its dependencies and libraries.
  Please check the github repo:
  https://github.com/alvaroNavarro/ros2_installer-origin

- Ensure to have installled the drivers for the camera (SDK ZED)
  Please check the main URL:
  https://www.stereolabs.com/docs/ros2

- Ensure to have installed the drivers for the Ouster LiDAR or velodyne sensor.
  Please check the github repo:
  https://github.com/ouster-lidar/ouster-ros

  https://github.com/ros-drivers/velodyne

- Ensure to have installed the drivers for the XSense IMU.
  Please check the github repo:
  https://github.com/DEMCON/ros2_xsens_mti_driver

- Add the package gps_imu that is found in the following repository:
  https://github.com/alvaroNavarro/gps_imu

## 📦 Features

The application is divided into two sections as depicted in Fig 1. The first section comprises the sensor packages mentioned before and the right section comprises all packages of perception module.

![Fig 1. Sections of UV-CarPeception appliation](images/UV-CarPerception_modules.png)

## 🚀 Getting Started
 
### 1. Clone the repository
 
```
git clone https://github.com/alvaroNavarro/UV-CarPercept.git
cd UV-CarPercept
```

### 2. Run the UV-CarPercept installation script
```
sudo chmod +x installer_ros2.sh
./install_ros2.sh
```
