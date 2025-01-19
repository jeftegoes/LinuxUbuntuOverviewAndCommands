echo "update the package index files on the system..."
apt-get update
apt-get upgrade -y

echo "Installing core apps..."

echo "Installing curl..."
apt-get install curl


echo "Installing wget..."
apt-get install wget


echo "Installing APT transport..."
apt-get install apt-transport-https


echo "Installing certificates..."
apt-get install ca-certificates


echo "Installing GNU Privacy Guard..."
apt-get install gnupg


echo "Installing Gnome terminal for Ubuntu Desktop..."
sudo apt install gnome-terminal
mv vscode.nemo_action ~/.local/share/nemo/actions/vscode.nemo_action

echo "Installing Ping..."
apt-get install iputils-ping -y

echo "Installing develop environment apps..."

echo "Installing nemo..."
apt-get install nemo
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search


echo "Installing github..."
apt-get install git -y


echo "Installing AWS CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip


echo "Installing VsCode..." # https://code.visualstudio.com/docs/setup/linux
echo "code code/add-microsoft-repo boolean true" | sudo debconf-set-selections
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
apt-get update
apt-get install code


echo "Installing IntelliJ IDEA..."
# https://www.jetbrains.com/help/idea/installation-guide.html#standalone_linux
# cd /opt
# IntelliJ -> Tools -> Create desktop entry

echo "Installing insomnia..." # https://docs.insomnia.rest/insomnia/install
curl -1sLf 'https://packages.konghq.com/public/insomnia/setup.deb.sh' \ | sudo -E distro=ubuntu codename=focal bash
apt-get update
apt-get install insomnia


echo "Installing conky..."
apt-get install conky-all -y
mv conky.conf /etc/conky/conky.conf

echo "Installing video4linux..."
# sudo apt install v4l-utils -y test after...


echo "Installing guvcview..."
apt-get install guvcview -y


echo "Installing spotify..." # https://www.spotify.com/br-en/download/linux/
curl -sS https://download.spotify.com/debian/pubkey_C85668DF69375001.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
apt-get update
apt-get install spotify-client

echo "Installing thunderbird..."
apt-get install thunderbird


echo "Installing GNOME Tweaks Tool..."
apt-get install gnome-tweaks -y


echo "Installing DBeaver Community..."
wget -O /usr/share/keyrings/dbeaver.gpg.key https://dbeaver.io/debs/dbeaver.gpg.key
echo "deb [signed-by=/usr/share/keyrings/dbeaver.gpg.key] https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
apt-get update
apt-get install dbeaver-ce


echo "Installing draw.io..."
snap install drawio --devmode
# rm -rf ~/.cache/fontconfig 
# fc-cache -r -v


echo "Installing maven..."
apt-get install maven -y


echo "Installing Node.JS..."
snap install node --classic


echo "Installing lm-sensors and fancontrol..."
apt-get install lm-sensors
apt-get install fancontrol


# docker ce
# docker desktop
# docker compose
# https://docs.docker.com/engine/install/ubuntu/
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y


# docker desktop - Prerequisites https://docs.docker.com/desktop/setup/install/linux/ubuntu/


# java openjdk 23   https://www.oracle.com/br/java/technologies/downloads/
# edge https://www.microsoft.com/en-us/edge/business/download?form=MA13H4&cs=2899521137

echo "Installing Virtual Machine Manager..."
apt-get install virt-manager -y


echo "Installing Meld..."
apt-get install meld


echo "Finish installations."