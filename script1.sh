#!/bin/bash
# Script 1: System Identity Report
# Author: Ashutosh Dora
# Course: Open Source Software

STUDENT_NAME="Ashutosh Dora"
SOFTWARE_CHOICE="Python"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d '"' -f 2)
CURRENT_DATE=$(date +"%A, %d %B %Y %T")

echo "============================================"
echo "      The Open Source Audit                 "
echo "============================================"
echo "Student: $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "--------------------------------------------"
echo "OS Distro  : $DISTRO"
echo "Kernel     : $KERNEL"
echo "User       : $USER_NAME"
echo "Uptime     : $UPTIME"
echo "Date/Time  : $CURRENT_DATE"
echo "--------------------------------------------"
echo "Note: This OS is largely covered by the GNU GPL License."