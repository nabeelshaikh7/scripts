#updating the apt repo
sudo apt update -y

#installing dependencies
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

#downloading and adding the docker gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#adding docker repo to apt sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

#updating the apt repo
sudo apt update -y

#installing docker-ce
sudo apt install -y docker-ce

#to avoide typing sudo command this command 
sudo usermod -aG docker ${USER}

echo please log out and login again
