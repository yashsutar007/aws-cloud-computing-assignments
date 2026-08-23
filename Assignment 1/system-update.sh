#!/bin/bash

echo "System update started at $(date)" >> update.log

sudo apt update -y >> update.log 2>&1
sudo apt upgrade -y >> update.log 2>&1

echo "System update completed at $(date)" >> update.log
