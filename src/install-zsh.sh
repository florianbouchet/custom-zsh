# Update/Upgrade and then install zsh
if [ $(dpkg-query -W -f='${Status}' zsh 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    sudo apt install zsh -y
fi
