# Package Visual Studio Code Installation

# Repository Visual Studio Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
wget -qO- https://packages.microsoft.com/config/debian/$(lsb_release -rs)/prod.list > /etc/apt/sources.list.d/vscode.list
# Add Repo to Source List
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
# Installation
apt update -y
apt install -y code
sleep 2
clear
sleep 1
echo "Installation Succesfull !"
sleep 1

