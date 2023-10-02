#This file is for debian, tested and runs on Sparky Linux

#find the ps line matching this and copy and replace
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\[\033[01;34m\]  _\w\[\033[00m\]\n (__\u@\h\[\033[00m\]: '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\n\w\$'
fi

#functions can be replaced to fit your needs
function start_shell_or_venv() {
    if [ -d ~/bin ]
    then
      PATH=$PATH:~/bin
    fi
    echo "What would you like to do?"
    select option in "Start Shell" "Activate Virtual Environment" "Youtube Downloader" "Pyra Compiler" "exit"; do
        case $option in
            "Start Shell" ) neofetch && date && break;;
            "Activate Virtual Environment" ) neofetch && date && cd ~/pyra_env && source bin/activate; break;;
            "Youtube Downloader" ) cd ~/bin && download; break;;
            "Pyra Compiler" ) compiler; break;;
            "Exit" ) break;;
        esac
    done
}

start_shell_or_venv