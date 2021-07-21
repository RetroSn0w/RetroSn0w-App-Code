#!/bin/bash
cd ~/Documents/RetroSn0w/CFJB_v1.6.0_1F79
rm -rf shsh/
mkdir shsh
./idevicerestore -t iPhone3,1_7.1.2_11D257_Restore.ipsw
model="iPhone3,1"
ecid=`ioreg -l -w0 | grep "USB Serial Number" | grep -m 1 "iBoot-574.4" | sed 's/^.*ECID://' | sed 's/ .*//'`
cd shsh/
ecidf="$(printf "%d" 0x$ecid)-${model}-4.3.3.shsh"
mv *.shsh $ecidf
cd ..
./iPwnder32 -p
./idevicerestore -e -w iPhone3,1_4.3.3_8J2_Custom.ipsw
mv ~/Documents/RetroSn0w/CFJB_v1.6.0_1F79/iPhone3,1_4.3.3_8J2_Restore.ipsw ~/Downloads
mv ~/Documents/RetroSn0w/CFJB_v1.6.0_1F79/iPhone3,1_7.1.2_11D257_Restore.ipsw ~/Downloads

