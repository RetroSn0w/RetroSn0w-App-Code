#!/bin/bash
cd ~/Documents/RetroSn0w/Pluvia
chmod +x ./make_ipsw.sh
chmod +x ./tools/xpwntool
chmod +x ./tools/iBoot32Patcher/iBoot32Patcher
chmod +x ./tools/hexpatch.sh
chmod +x ./tools/root_tar/mytar
chmod +x ./tools/ipsw
chmod +x ./restore.sh
chmod +x ./tools/tsschecker
chmod +x ./tools/ipwndfu/dfuexec.py
chmod +x ./tools/ipwndfu/alloc8.py
chmod +x ./tools/ipwndfu/dfu.py
chmod +x ./tools/ipwndfu/image3_24Kpwn.py
chmod +x ./tools/ipwndfu/image3.py
chmod +x ./tools/ipwndfu/ipwndfu
chmod +x ./tools/idevicerestore
./restore.sh ~/Downloads/iPhone3,1_7.1.2_11D257_Restore_ResetNVRAM.ipsw
