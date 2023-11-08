#This file is for debian, tested and runs on Sparky Linux and Parrot

# my additions
#directory color pruple
#LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
LS_COLORS="di=1;31:ex=1;37"
function start_shell_or_venv() {
    if [ -d ~/bin ]; then
        PATH=$PATH:~/bin
    fi

    while true; do
        echo -e "\033[37mWhat would you like to do?\033[0m"
        select option in "Start Shell" "Activate Virtual Environment" "Pyra Compiler" "pyserver"; do
            case $option in
                "Start Shell" )
                    neofetch
                    echo -e " \033[31m$(date)\033[0m"
                    break
                    ;;
                "Activate Virtual Environment" )
                    neofetch
                    echo -e " \033[31m$(date)\033[0m"
                    cd ~/pyra_env && source bin/activate
                    break
                    ;;
                "Pyra Compiler" )
                    compiler
                    break
                    ;;
                "pyserver" )
                    python3 -m http.server -b 0.0.0.0
                    break
                    ;;
            esac
        done

        # Check if the user entered the desired command
        if [ "$option" == "Start Shell" ] || [ "$option" == "Activate Virtual Environment" ] || [ "$option" == "Pyra Compiler" ]; then
            break
        fi
    done
}

start_shell_or_venv

echo -e "\033[37m Your current executables \033[0m"
ls ~/bin
