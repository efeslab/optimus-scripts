#!/bin/bash

sudo modprobe vfio-pci
sudo su -c "echo \"8086 bcc0\" > /sys/bus/pci/drivers/vfio-pci/new_id"
sudo su -c "echo \"0000:5e:00.0\" > /sys/bus/pci/devices/0000:5e:00.0/driver/unbind"
sudo su -c "echo \"0000:5e:00.0\" > /sys/bus/pci/drivers/vfio-pci/bind"
