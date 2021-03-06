#updating the apt repo
sudo apt update -y
#uninstalling old versions of docker 
sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get install ca-certificates curl gnupg lsb-release

#adding Docker gpg keys
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#adding docker apt repo
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#updating apt
sudo apt-get update

#installing docker
sudo apt-get install docker-ce docker-ce-cli containerd.io

#install docker-compose
sudo apt install docker-compose

#to avoide typing sudo command this command 
sudo usermod -aG docker ${USER}

echo please log out and login again
