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
# snap install notepad-plus-plus its use Wine...

echo "Installing insomnia..."
snap install insomnia

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

echo "Installing hardinfo..."
apt-get install hardinfo -y

echo "Installing Node.JS..."
snap install node --classic

# java openjdk 23
# ubuntu
# edge
# docker ce
# docker desktop
# docker compose
# virtualbox

echo "Finish installations."