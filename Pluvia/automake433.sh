#!/bin/bash
cd ~/Documents/RetroSn0w
rm -rf CFJB_v1.6.0_1F79
unzip cherryflowerJB_v1.6.0_1F79.zip
cd ~/Documents/RetroSn0w/CFJB_v1.6.0_1F79
mv ~/Downloads/iPhone3,1_4.3.3_8J2_Restore.ipsw ~/Documents/RetroSn0w/CFJB_v1.6.0_1F79
mv ~/Downloads/iPhone3,1_7.1.2_11D257_Restore.ipsw ~/Documents/RetroSn0w/CFJB_v1.6.0_1F79
rm -rf shsh/
mkdir shsh
./idevicerestore -t iPhone3,1_7.1.2_11D257_Restore.ipsw
cd shsh/
mv *.shsh blob.shsh
cd ..
zcat < shsh/blob.shsh > shsh/blob.plist
plutil -convert xml1 shsh/blob.plist
./cherryJB iPhone3,1_4.3.3_8J2_Restore.ipsw iPhone3,1_4.3.3_8J2_Custom.ipsw -memory -derebusantiquis iPhone3,1_7.1.2_11D257_Restore.ipsw -a shsh/blob.plist
