# my additions
#LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
LS_COLORS="di=1;31:ex=1;37"

if [ -d ~/pyra_bin ]; then
    PATH=$PATH:~/pyra_bin:~/pyra_bin/cli_compiler:~/pyra_bin/cli_editor:~/pyra_bin/gui_compiler:~/pyra_bin/gui_editor:~/pyra_bin/image_editor:~/pyra_bin/pyra_roku_cli:~/pyra_bin/pyra_roku_gui
fi

function start_shell_or_venv() {
    echo -e "\033[01;31m ██▓███ ▓██   ██▓ ██▀███   ▄▄▄      "
    echo -e "▓██░  ██▒▒██  ██▒▓██ ▒ ██▒▒████▄    "
    echo -e "▓██░ ██▓▒ ▒██ ██░▓██ ░▄█ ▒▒██  ▀█▄  "
    echo -e "▒██▄█▓▒ ▒ ░ ▐██▓░▒██▀▀█▄  ░██▄▄▄▄██ "
    echo -e "▒██▒ ░  ░ ░ ██▒▓░░██▓ ▒██▒ ▓█   ▓██▒"
    echo -e "▒▓▒░ ░  ░  ██▒▒▒ ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░"
    echo -e "░▒ ░     ▓██ ░▒░   ░▒ ░ ▒░  ▒   ▒▒ ░"
    echo -e "░░       ▒ ▒ ░░    ░░   ░   ░   ▒   "
    echo -e "         ░ ░        ░           ░  ░"
    echo -e "         ░ ░                        "

    while true; do
        echo -e "C░hoose a░f░unction: \n"
        select option in \
        "Start Shell" \
        "Activate Virtual Environment" \
        "pyserver" \
        "visualboy"
        do
        case $option in
            "Start Shell" )
                neofetch
                echo -e " \033[31m$(date)\033[0m"
                echo -e " \033[31mexecutables:\n pyra_compiler\n pyra_editor\n pyra_gui_compiler\n pyra_gui_editor\n pyra_roku\n roku_gui\033[0m"
                break
                ;;
            "Activate Virtual Environment" )
                neofetch
                echo -e " \033[31m$(date)\033[0m"
                cd ~/pyra_env && source bin/activate
                echo -e " \033[31mexecutables:\n pyra_compiler\n pyra_editor\pyra_gui_compiler\n pyra_gui_editor\n pyra_roku\n roku_gui\033[0m"
                break
                ;;
            "pyserver" )
                python3 -m http.server -b 0.0.0.0
                break
                ;;
            "visualboy" )
                /snap/bin/visualboyadvance-m
                break
                ;;
            esac
        done

        # Check if the user entered the desired command
        if [ "$option" == "Start Shell" ] || 
           [ "$option" == "Activate Virtual Environment" ] || 
           [ "$option" == "pyserver" ] || 
           [ "$option" == "visualboy" ]
        then
            break
        fi
    done
    }

start_shell_or_venv
