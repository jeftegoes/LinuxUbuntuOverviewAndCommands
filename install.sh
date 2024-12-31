echo "update the package index files on the system..."
apt-get update
apt-get upgrade

echo "Installing apps..."

echo "Installing curl..."
apt-get install curl

echo "Installing wget..."
apt-get install wget gpg

echo "Installing certificates..."
apt-get install ca-certificates

echo "Installing github..."
apt-get install git -y

echo "Installing VsCode..." # https://code.visualstudio.com/docs/setup/linux
echo "code code/add-microsoft-repo boolean true" | sudo debconf-set-selections
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
apt install apt-transport-https
apt update
apt install code


echo "Installing IntelliJ IDEA..."
snap install intellij-idea-community --classic

echo "Installing insomnia..." # https://docs.insomnia.rest/insomnia/install
curl -1sLf 'https://packages.konghq.com/public/insomnia/setup.deb.sh' \ | sudo -E distro=ubuntu codename=focal bash
apt-get update
apt-get install insomnia

echo "Installing conky..."
apt-get install conky-all -y

echo "Installing video4linux..."
# sudo apt install v4l-utils -y test after...

echo "Installing guvcview..."
apt-get install guvcview -y

echo "Installing spotify..."
snap install spotify

echo "Installing thunderbird..."
apt-get install thunderbird

echo "Installing GNOME Tweaks Tool..."
apt-get install gnome-tweaks -y

echo "Installing DBeaver Community..."
snap install dbeaver-ce

echo "Installing draw.io..."
snap install drawio --devmode
# rm -rf ~/.cache/fontconfig 
# fc-cache -r -v

echo "Installing maven..."
apt-get install -y maven

echo "Installing Node.JS..."
snap install node --classic

echo "Installing lm-sensors..."
apt install lm-sensors


# docker ce
# docker desktop
# docker compose
# https://docs.docker.com/engine/install/ubuntu/
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -Y

# docker desktop - Prerequisites https://docs.docker.com/desktop/setup/install/linux/ubuntu/
apt install gnome-terminal

# java openjdk 23   https://www.oracle.com/br/java/technologies/downloads/
# edge https://www.microsoft.com/en-us/edge/business/download?form=MA13H4&cs=2899521137
echo "Installing virtual
box and dependencies..."
apt-get install virtualbox-ext-pack
# virtualbox

echo "Finish installations."