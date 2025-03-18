apt update && apt upgrade -y
apt install build-essential gcc binutils perl gdb qemu -y
apt install wget unzip
wget "https://drive.google.com/uc?export=download&id=12345" -O "pintos-qemu.zip"
mkdir pintos && unzip "pintos-qemu.zip" -d pintos
ls
cd pintos
cd src
cd threads/
make
cd build/
pintos
echo 'export PATH=$PATH:/root/pintos/utils' >> ~/.bashrc
source ~/.bashrc
echo 'export PATH=$PATH:/root/pintos/src/utils' >> ~/.bashrc
source ~/.bashrc
pintos
chmod +x /root/pintos/utils/pintos
chmod +x /root/pintos/utils/pintos-gdb
chmod +x /root/pintos/utils/backtrace
chmod +x /root/pintos/src/utils/pintos
chmod +x /root/pintos/src/utils/pintos-gdb
chmod +x /root/pintos/src/utils/backtrace
pintos
pintos -- run alarm-multiple
make check
pintos --qemu -- -q run alarm-multiple
