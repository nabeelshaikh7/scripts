#updating and upgrading apt

sudo apt update && sudo apt upgrade

#just a echo command
echo    "installing brave browser"

#installing curl
sudo apt install apt-transport-https curl -y

#just adding gpg keyring
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

#update apt repo
sudo apt update -y

#install brave-browser
sudo apt install brave-browser -y

#opening brave 
brave-browser
