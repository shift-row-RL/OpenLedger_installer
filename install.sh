sudo apt update
sudo apt install -y libgtk-3-0 libnotify4 libnss3 libxss1 libxtst6 xdg-utils libatspi2.0-0 libsecret-1-0 
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y unzip
sudo apt install -y screen
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker ${USER}
sudo systemctl start docker
sudo systemctl enable docker
sudo wget https://cdn.openledger.xyz/openledger-node-1.0.0-linux.zip
sudo unzip openledger-node-1.0.0-linux.zip
sudo dpkg -i openledger-node-1.0.0.deb
sudo apt-get install desktop-file-utils
sudo dockerd 
