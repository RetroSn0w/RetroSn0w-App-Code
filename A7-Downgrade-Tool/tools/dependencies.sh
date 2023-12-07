cd ~/Documents/RetroSn0w/A7-Downgrade-Tool/tools
rm -rf dependencies
chmod 777 futurerestore
chmod 777 igetnonce
chmod 777 iPwnder32
chmod 777 irecovery
chmod 777 tsschecker
mkdir dependencies
cd dependencies
echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install libtool automake lsusb openssl libzip pkg-config
git clone https://github.com/tihmstar/libirecovery
cd libirecovery
brew install libtool automake lsusb openssl libzip pkg-config
./autogen.sh
make
make install
cd ..
cd ..
killall Terminal
