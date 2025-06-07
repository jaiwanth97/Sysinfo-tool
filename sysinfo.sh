#!/bin/bash

while true; do
    echo "                             "
    echo "============================="
    echo "=     Simple SysInfo        ="
    echo "============================="
    echo "      1.CPU Usage            "
    echo "      2.Memory               "
    echo "      3.Disk Usage           "
    echo "      4.Uptime               "
    echo "      5.IP Address           "
    echo "      6.Model name           "
    echo "      7.Quit                 "
    echo "                             "
    echo "     Silly tool by jaiwanth:)"
    echo "                             "
    read -p "Enter  Choice [1-6]: " choice

case $choice in
        1)
                echo "CPU Usage"
                top -i |grep "Cpu(s)"
                ;;
        2)
                echo "Memory Usage"
                free -m
                ;;
        3)
                echo "Disk Usage"
                df -h
                ;;
        4)
                echo "Uptime"
                echo "PC is up from $(uptime -s) and up for $(uptime -p)"
                ;;
        5)
                echo ""
                echo "Ip Address"
                hostname -I
                ;;
        6)
                echo ""
                echo ""
                lscpu | grep "Model name"
                echo ""
                ;;
        7)
                echo "Goodbye"
                break
                ;;
esac
done