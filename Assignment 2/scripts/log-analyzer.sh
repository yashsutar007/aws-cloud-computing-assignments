#!/bin/bash

echo "===== ERROR LOG REPORT ====="

sudo grep -i "error" /var/log/syslog
