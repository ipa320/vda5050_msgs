# Batch of actions extended by orderId for communication between order daemon and action daemon.

string orderId                               # Unique order identification

vda5050_msgs/Action[] orderActions           # Array of actionIds to be executed.