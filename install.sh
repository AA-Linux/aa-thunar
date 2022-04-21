#!/usr/bin/env bash

install_thunar() {
    echo -e "\e[0;32m---Backup your Thunar Conf---+\e[0m\n"
    if [[ `whereis thunar` ]]; then
        if [[ `ls ~/.config/Thunar` ]]; then
            mv ~/.config/Thunar ~/.config/THUNAR.BAK
            mkdir -p ~/.config/Thunar
        fi
        echo -e "\e[0;32m Copy the files for your .config\e[0m"
        cp -r `pwd`/files/*  "$HOME"/.config/Thunar
        echo -e "\e[0;32m+----------Finished!---------+\e[0m"
    else
        echo -e "\e[0;32m+---Install Thunar---+\e[0m"
        sudo pacman -S thunar
        echo -e "\e[0;32m Copy the files for your .config\e[0m"
        cp -r `pwd`/files/*  "$HOME"/.config/Thunar
        echo -e "\e[0;32m+------Finished!-----+\e[0m"
    fi
}
install_thunar
