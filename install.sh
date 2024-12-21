echo "update the package index files on the system..."
apt-get update

echo "Installing apps..."

echo "Installing curl..."
apt-get install curl

echo "Installing certificates..."
apt-get install ca-certificates

echo "Installing github..."
apt-get install git -y

echo "Installing VsCode..."
snap install code --classic

echo "Installing IntelliJ IDEA..."
snap install intellij-idea-community --classic

echo "Installing notepad++..."
snap install notepad-plus-plus

echo "Installing insomnia..."
snap install insomnia

echo "Installing conky..."
apt install conky-all -y

echo "Installing video4linux..."
# sudo apt install v4l-utils -y test after...

echo "Installing guvcview..."
sudo apt install guvcview -y

echo "Installing spotify..."
snap install spotify

echo "Installing thunderbird..."
sudo apt install thunderbird

echo "Installing GNOME Tweaks Tool..."
apt install gnome-tweaks -y

echo "Installing DBeaver Community..."
snap install dbeaver-ce
# ubuntu

# edge

# docker ce
# docker desktop
# docker compose

echo "Finish installations."