DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# ZSH
mv ~/.zshrc ~/.zshrc_old # Backup
ln -s $DIR/.zshrc ~/.zshrc

# VIM
mv ~/.vimrc ~/.vimrc_old
ln -s $DIR/.vimrc ~/.vimrc

