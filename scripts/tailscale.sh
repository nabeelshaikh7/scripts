#update apt repo
sudo apt update -y
sudo apt upgrade -y

#adding tailscale repo
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.gpg | sudo apt-key add -
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.list | sudo tee /etc/apt/sources.list.d/tailscale.list

#updating apt sources
sudo apt-get update -y

#installing tailscale
sudo apt-get install tailscale -y

#tailscale setup
sudo tailscale up

#get tailscale ip
ifconfig tailscale0
