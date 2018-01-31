# Install fonts required by oh-my-zsh
if [ $(dpkg-query -W -f='${Status}' fonts-powerline 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    sudo apt install fonts-powerline -y
fi

