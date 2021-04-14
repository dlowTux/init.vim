# nvim
my neovim config for python flask, php flutter javascrpit
## installation
### Vim plug

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
       
### Node
#### Debian Ubuntu
sudo apt-get install nodejs
#### Arch Linux
sudo pacman -Syu nodejs
#### Fedora
sudo dnf install nodejs
### npm
#### Debian Ubuntu
sudo apt-get install npm
#### Arch Linux
sudo pacman -Syu npm
#### Fedora
sudo dnf install npm
### yarn
sudo npm install yarn
### extensions 
- :CocInstall coc-html
- :CocInstall coc-git
- :CocInstall coc-pyright
- :CocInstall flutter
- :CocInstall coc-css
### Setting
#### Dart skd
##### Debian 
sudo apt-get install dart
##### ArchLinux 
sudo pacman -Syu dart
##### Fedora
Compile the source code
### Fonts
#### NerdFonts
Download it from https://www.nerdfonts.com/font-downloads
I recomend to use momonoki nerd font
# Using

My keybindings in normal mode

| Key                  | Action                     |
| -------------------- | -------------------------- |
| **,+w**              | Save a file                 |
| **,+fs**             | Search a file               |
| **,+tt**             | Open a terminal            |
| **a**                | Flutter run                |
| **q**                | Flutter quit               |
| **r**                | Flutter Reload             |
| **fR**               | Flutter Restart            |  
| **Ctrl+n**           | Nerd Tree                  |
| **Ctrl+a**           | Format code                |
| **gd**               | Go definition               |
| **gy**               | Type definition             |
| **gi**               | Go implementation          |
| **gr**               | Go references              |
![](./1.png)
