vda5050_msgs
============

## Description


The vda5050_msgs package contains the datatypes (json objects) specified by the VDA 
"Arbeitskreis Schlüsseltechnologien" in their recommondation "VDA 5050 - Schnittstelle zur Kommunikation zwischen 
Fahrerlosen Transportfahrzeugen (FTF) und einer Leitsteuerung" in version 2.1.
This package provides the message files which can be used to be (de-)serialized with an implementation of mqtt
(e.g mqtt_bridge) or to plain json (rospy_message_converter) or similar. 


## Limitations
Currently, not defining some fields of the message types is not supported. This may break some features.



## ROS Distro Support

|         |                                          Jazzy                                           |                                          Melodic                                           |
| :-----: | :----------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------: |
| Branch  |               [`ros2-v2.1`](https://github.com/ipa320/vda5050_msgs/tree/ros2-v2.1)               |               [`master`](https://github.com/ipa320/vda5050_msgs/tree/master)               |
| Status  |                                         supported                                          |                                         outdated                                          |
| Version | [version](https://docs.ros.org/en/jazzy/Installation.html) | [version](http://repositories.ros.org/status_page/ros_melodic_default.html?q=vda5050_msgs) |


## Travis - Continuous Integration

Status: [![Build Status](https://travis-ci.org/ipa320/vda5050_msgs.svg?branch=kinetic_dev)](https://travis-ci.org/ipa320/vda5050_msgs)

## ROS Buildfarm

|       | Kinetic Source | Kinetic Debian | Melodic Source | Melodic Debian |
| :---: | :------------: | :------------: | :------------: | :------------: ||  |  |  |
| vda5050_msgs | [![not released](http://build.ros.org/buildStatus/icon?job=Ksrc_uX__vda5050_msgs__ubuntu_xenial__source)](http://build.ros.org/view/Ksrc_uX/job/Ksrc_uX__vda5050_msgs__ubuntu_xenial__source/) | [![not released](http://build.ros.org/buildStatus/icon?job=Kbin_uX64__vda5050_msgs__ubuntu_xenial_amd64__binary)](http://build.ros.org/view/Kbin_uX64/job/Kbin_uX64__vda5050_msgs__ubuntu_xenial_amd64__binary/) | [![not released](http://build.ros.org/buildStatus/icon?job=Msrc_uB__vda5050_msgs__ubuntu_bionic__source)](http://build.ros.org/view/Msrc_uB/job/Msrc_uB__vda5050_msgs__ubuntu_bionic__source/) | [![not released](http://build.ros.org/buildStatus/icon?job=Mbin_uB64__vda5050_msgs__ubuntu_bionic_amd64__binary)](http://build.ros.org/view/Mbin_uB64/job/Mbin_uB64__vda5050_msgs__ubuntu_bionic_amd64__binary/) |
