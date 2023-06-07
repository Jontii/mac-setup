# echo "Installing xcode-stuff"
# xcode-select --install

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Please install Homebrew first."
    exit 1
fi

# Add Homebrew to the PATH
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile

# Reload the shell configuration
source ~/.bash_profile

echo "Homebrew paths have been added to your ~/.bash_profile and the shell configuration has been reloaded."

#For different architecture apps
echo "Install Rosetta 2"
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

echo "Updating homebrew..."
brew update

echo "Installing Git..."
brew install git

# Prompt the user to enter their first and last names
echo "You will now enter first and last name for github"
read -p "Enter your first name: " first_name
read -p "Enter your last name: " last_name

# Set the Git configuration
git config --global user.name "$first_name $last_name"

# Display a success message
echo "Git configuration updated successfully. Your name is set as: $first_name $last_name"

# Prompt the user to enter their email address
echo "You will now enter email address for github"
read -p "Enter your email address: " email

# Set the Git configuration
git config --global user.email "$email"

# Display a success message
echo "Git configuration updated successfully. Your email address is set as: $email"

echo "Install node"
brew install node@18

echo "Install yarn globally"
npm install -–global yarn

echo "Install docker"
brew install --cask docker

echo "Install docker-compose"
brew install docker-compose

echo "Install AWS CLI"
brew install awscli

echo "Install AWS VPN Client"
brew install --cask aws-vpn-client

echo "Install slack"
brew install --cask slack

echo "Install VS-Code"
brew install --cask visual-studio-code

echo "Install Spotify"
brew install --cask spotify

echo "Install Chrome"
brew install --cask google-chrome

echo "Install Iterm2"
brew install --cask iterm2

echo "Install Figma"
brew install --cask figma



echo "OpenAPI needs Java and openJDK - We need to link together so it understands "
brew install java
# If the symlink should be wrong, you can run - Brew info openjdk
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

echo "Cleaning up brew"
brew cleanup

#Install Zsh & Oh My Zsh
echo "Installing Oh My ZSH..."
curl -L http://install.ohmyz.sh | sh

echo "Setting ZSH as shell..."
chsh -s /bin/zsh

killall Finder

echo "Done!"