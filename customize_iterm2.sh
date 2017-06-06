#!/bin/bash

echo "----------------------Installing Oh My Zsh------------------------"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "----------------------Installing powerlevel9k------------------------"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo "----------------------Seting theme to powerlevel9k------------------------"
sed -i.bak 's#.*ZSH_THEME=.*#ZSH_THEME="powerlevel9k/powerlevel9k"#' ~/.zshrc
echo "----------------------Installing wget------------------------"
brew install wget
echo "----------------------Downloading the Melso font in ~/Downloads------------------------"
wget https://raw.githubusercontent.com/powerline/fonts/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf -P /Library/Fonts/
echo "----------------------HUMAN INPUT NEEDED HERE. Perform this to set font in iterm2: Set this font in iTerm2 (14px is my personal preference) (iTerm -> Preferences -> Profiles -> Text -> Change Font)." 
