#!/bin/bash
killall iTunes
killall iTunesHelper
 set -e
 clear
 cd ~/Documents/RetroSn0w/CheckM8-Restore
 echo "RetroSn0w By 80036nd"
 echo "Bundled with CheckM8 FutureRestore (Modified RestoreM8-2.0)"
 FILE=restore.ipsw
 if [ -f "$FILE" ]; then
 echo "The $FILE file exists. Continuing..."
 else
 echo "The $FILE file does not exist on the ~/Documents/RetroSn0w/CheckM8-Restore folder! Cannot continue."
 echo "Terminal Closing in 10 seconds"
sleep 10 
killall Terminal
 exit
 fi

 FILE=blob.shsh2
 if [ -f "$FILE" ]; then
 echo "The $FILE file exists. Continuing..."
 else
 echo "The $FILE file does not exist on the ~/Documents/RetroSn0w/CheckM8-Restore folder! Cannot continue."
 echo "Terminal Closing in 10 seconds"
sleep 10 
killall Terminal
 exit
 fi

 FILE=futurerestore194
 if [ -f "$FILE" ]; then
 echo "The $FILE file exists. Continuing..."
 else
 echo "The $FILE file does not exist on the ~/Documents/RetroSn0w/CheckM8-Restore! Cannot continue. Please re-download the code from the app!"
 exit
 fi
 echo "Now transfering the control to FutureRestore! Please monitor the Terminal!"
 echo "Please wait for FutureRestore to complete."
 echo "*********************************************************"
 printf "\n"
 echo "Welcome to FutureRestore!"
 chmod 777 futurerestore194
 ./futurerestore194 -t blob.shsh2 --latest-sep --latest-baseband restore.ipsw
 clear
 echo "Your Device Should be Restored"
 echo "RetroSn0w By 80036nd"
 echo "RestoreM8-2.0 By 80036nd"
 echo "Futurerestore 14 by tihmstar and _m1sta"
 echo "Legacy patches by GeoSn0w"
 echo "Terminal Closing in 10 seconds"
sleep 10 
killall Terminal
