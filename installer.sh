# The direct flasher to install ApexOS - the hard way

# Depences
OS_BIN_DIR=/usr/local/bin
OS_ETC_DIR=/usr/local/etc

# Main app
echo "[WARN] This will flash ApexOS to your device."
echo "Waiting 5 seconds before continuing..."
sleep 5
clear
sudo mkdir /usr/local/etc/apexos/oldos/
echo "Installing to $OS_BIN_DIR"
wget https://raw.githubusercontent.com/ApexVM/ApexOS/main/vpkg.cxx
wget https://raw.githubusercontent.com/ApexVM/ApexOS/main/os.properties
sudo mv /etc/os-properties /usr/local/etc/apexos/oldos/osprops
g++ vpkg.cxx -o vpkg
sudo mv vpkg /usr/local/bin/ && sudo chmod 777 /usr/local/bin/vpkg
sudo mv os.properties /etc/os-properties
clear
echo "The base instalation is done"
# I need to get all scripts and test them :3
