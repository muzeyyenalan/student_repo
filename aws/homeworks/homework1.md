#! /bin/bash

sudo yum update -y
sudo mkfs -t ext4 /dev/xvdb
sudo mkdir /mnt/2nd-vol
sudo mount /dev/xvdb /mnt/2nd-vol/
cd /mnt/2nd-vol
sudo echo "hello" > homework.txt