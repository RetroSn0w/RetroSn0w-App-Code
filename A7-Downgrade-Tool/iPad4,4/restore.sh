cd ~/Documents/RetroSn0w/A7-Downgrade-Tool/tools
chmod 777 futurerestore
chmod 777 igetnonce
chmod 777 iPwnder32
chmod 777 irecovery
chmod 777 tsschecker
cd ..
cd iPad4,4
mkdir work
mkdir temp
cd ..
mv ~/Downloads/iPad_64bit_10.3.3_14G60_Restore.ipsw iPad4,4
cd iPad4,4/work
unzip ../iPad_64bit_10.3.3_14G60_Restore.ipsw
cd ..
cd temp
git clone https://github.com/MatthewPierson/iPhone-5s-OTA-Downgrade-Patches
cp ../work/Firmware/dfu/iBSS.ipad4b.RELEASE.im4p ibss.stock
cp ../work/Firmware/dfu/iBEC.ipad4b.RELEASE.im4p ibec.stock
cp ../work/Firmware/all_flash/sep-firmware.j73.RELEASE.im4p sep.im4p
bspatch ibss.stock ibss.patched iPhone-5s-OTA-Downgrade-Patches/ibss_ipad4b.patch
bspatch ibec.stock ibec.patched iPhone-5s-OTA-Downgrade-Patches/ibec_ipad4b.patch
mv ibss.patched iBSS.ipad4b.RELEASE.im4p
mv ibec.patched iBEC.ipad4b.RELEASE.im4p
cp iBSS.ipad4b.RELEASE.im4p ../work/Firmware/dfu/
cp iBEC.ipad4b.RELEASE.im4p ../work/Firmware/dfu/
cd ..
cd ..
./tools/iPwnder32 -p
sleep 3
nonce=$(./tools/igetnonce | grep "ApNonce=.*" -o | cut -c 9-)
echo "Your current ApNonce is $nonce"
ecid=$(./tools/igetnonce | grep "ECID=.*" -o | cut -c 6-)
echo "$ecid"
./tools/tsschecker -m iPad4,4/iPad4,4.plist -e $ecid -d iPad4,4 -s -B j85ap --apnonce $nonce
mv *.shsh blob.shsh2
./tools/dependencies/libirecovery/tools/irecovery -f tools/blankfile.txt
./tools/dependencies/libirecovery/tools/irecovery -f iPad4,4/temp/iBSS.ipad4b.RELEASE.im4p
./tools/dependencies/libirecovery/tools/irecovery -f iPad4,4/temp/iBEC.ipad4b.RELEASE.im4p
sleep 5
./tools/futurerestore -t blob.shsh2 --no-baseband -p iPad4,4/iPad4,4.plist -s iPad4,4/temp/sep.im4p -m iPad4,4/iPad4,4.plist iPad4,4/work
cd iPad4,4
rm -rf temp
rm -rf work
mv *.ipsw ~/Downloads/iPad_64bit_10.3.3_14G60_Restore.ipsw
cd ..
rm -rf blob.shsh2
