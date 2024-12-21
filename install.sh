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

# ubuntu
# edge

echo "Finish installations."