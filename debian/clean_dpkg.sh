#!/bin/bash
echo 'Dit script purged alle removed configured packages'
sudo dpkg --purge `dpkg -l | grep ^rc | awk '{print $2}'`
