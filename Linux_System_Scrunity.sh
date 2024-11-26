
################################################################################################
# Script Name: Linux Server Scrutiny Script
# Author: Chinmay Chaudhari
# Date: 26/11/2024
# Purpose: To monitor and audit a Linux server by gathering system information,
#          analyzing resource usage, monitoring network activity, and reporting potential issues.
#################################################################################################

#!/bin/bash

# Log file for the report
LOGFILE="server_report_$(date +%Y%m%d).log"

# Header for the report
echo "===============================" > $LOGFILE
echo "   Linux System Scrutiny Report" >> $LOGFILE
echo "   Generated on: $(date)" >> $LOGFILE
echo "===============================" >> $LOGFILE
echo "" >> $LOGFILE

# System Information
echo "---- SYSTEM INFORMATION ----" >> $LOGFILE
echo "Hostname: $(hostname)" >> $LOGFILE
echo "Operating System: $(uname -o)" >> $LOGFILE
echo "Kernel Version: $(uname -r)" >> $LOGFILE
echo "" >> $LOGFILE

# Disk Usage
echo "---- DISK USAGE ----" >> $LOGFILE
df -h | awk '{print $1, $5, $6}' >> $LOGFILE
echo "" >> $LOGFILE

# Top 5 CPU-Consuming Processes
echo "---- TOP 5 CPU-CONSUMING PROCESSES ----" >> $LOGFILE
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6 >> $LOGFILE
echo "" >> $LOGFILE

# CPU and Memory Usage
echo "---- CPU AND MEMORY USAGE ----" >> $LOGFILE
echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')%" >> $LOGFILE
echo "Total Memory: $(free -m | awk '/Mem:/ {print $2}') MB" >> $LOGFILE
echo "Used Memory: $(free -m | awk '/Mem:/ {print $3}') MB" >> $LOGFILE
echo "Available Memory: $(free -m | awk '/Mem:/ {print $4}') MB" >> $LOGFILE
echo "" >> $LOGFILE

# Network Status
echo "---- NETWORK STATUS ----" >> $LOGFILE
echo "Active Connections:" >> $LOGFILE
netstat -tunlp | grep ESTABLISHED >> $LOGFILE
echo "" >> $LOGFILE

# System Log Errors
echo "---- SYSTEM LOG ERRORS ----" >> $LOGFILE
grep -i error /var/log/syslog | tail -n 10 >> $LOGFILE
echo "" >> $LOGFILE

# Footer
echo "Report generated successfully. Review the report in the file: $LOGFILE"
echo "Thank you for using the Linux Server Scrutiny Script!" >> $LOGFILE
