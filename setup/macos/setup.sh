
### vim configuration
echo "$(curl -fsSL https://raw.githubusercontent.com/RichCherng/Knowledge-base/master/dotfiles/.vimrc)" > ~/.vimrc

source ~/.vimrc

### Install ohmyzsh

# (For Linux) run : sudo apt install zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

source ~/.zshrc

# Install HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/$(whoami)/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install wget
brew install wget

# Install item2
brew install --cask iterm2

# Open iTerm2
open /Applications/iTerm.app

# Install sshpass
brew install hudochenkov/sshpass/sshpass
