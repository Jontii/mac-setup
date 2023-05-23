
echo "Installing xcode-stuff"
xcode-select --install

echo "Installing brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Updating homebrew..."
brew update

echo "Installing Git..."
brew install git

echo "Install node"
brew install node

 # Install node@16 and yarn and update npm to latest

echo "Install docker"
brew install docker

echo "Install docker-compose"
brew install docker-compose

echo "Install AWS CLI"
brew install awscli

echo "Install AWS VPN Client"
brew install aws-vpn-client

echo "Install slack"
brew install slack

echo "Install VS-Code"
brew install visual-studio-code

echo "Install Spotify"
brew install spotify

echo "Install Chrome"
brew install google-chrome

echo "Cleaning up brew"
brew cleanup

#Install Zsh & Oh My Zsh
echo "Installing Oh My ZSH..."
curl -L http://install.ohmyz.sh | sh

echo "Setting ZSH as shell..."
chsh -s /bin/zsh

killall Finder


echo "Done!"