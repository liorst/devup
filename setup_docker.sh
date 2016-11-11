UBUNTU16_REPO="deb https://apt.dockerproject.org/repo ubuntu-xenial main"

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo "${UBUNTU16_REPO}" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-get install -y docker-engine
sudo gpasswd -a $(whoami) docker
sudo service docker start
sudo usermod -aG docker $(whoami)

msgs="Sign out and sign back in to be able to use docker\n"
export docker_msgs="${msgs}"
export MESSAGES=$MESSAGES:docker_msgs


