# The direct flasher to install ApexOS - the hard way

# Dependences
OS_BIN_DIR=/usr/local/bin
OS_ETC_DIR=/usr/local/etc

# Main app
echo "[WARN] This will flash ApexOS to your device."
echo "Waiting 5 seconds before continuing..."
sleep 5
clear
sudo mkdir /usr/local/etc/apexos/
sudo mkdir /usr/local/etc/apexos/oldos/
echo "Installing to $OS_BIN_DIR"
wget https://raw.githubusercontent.com/ApexVM/ApexOS/main/vpkg.cxx
wget https://raw.githubusercontent.com/ApexVM/ApexOS/main/os-release
sudo mv /etc/os-release /usr/local/etc/apexos/oldos/osprops
sudo mv /etc/lsb-release /usr/local/etc/apexos/oldos/lsbres
g++ vpkg.cxx -o vpkg
sudo mv vpkg /usr/local/bin/vpkg
sudo chmod 777 /usr/local/bin/vpkg
sudo mv os-release /etc/os-release
sudo mv lsb-release /etc/lsb-release
clear
echo "The base instalation is done"
echo "You can install packages with vpkg"
sleep 2
clear
echo "Welcome to ApexOS 24.07"
sudo touch /usr/local/etc/apexos/license.txt
