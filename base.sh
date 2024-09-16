#!/bin/bash

logo(){
echo -e "\033[36m┌──────────────────────────────────────────────────────────────┐";
echo -e "|                           .----.                             |";
echo -e "|                         ...----....                          |";
echo -e "|         .-=-----. .              ......-====-.               |";
echo -e "|        ---=-==---..                ..---==+++=+=             |";
echo -e "|        .      .  ............. ............    .             |";
echo -e "|                      ..-----==-....      .                   |";
echo -e "|                          --..                                |";
echo -e "|                           .                                  |";
echo -e "|              .        .                                      |";
echo -e "|              .                          ..     .             |";
echo -e "|        .        .            .         . .    ..             |";
echo -e "|        ..                    ..     .  .      ..             |";
echo -e "|        .        -   .             .... -.     ...            |";
echo -e "|        .- .    .-..            .- .... =.     .--            |";
echo -e "|        .#= . .----       .. .  .-.-..=.+..    .--            |";
echo -e "|        .+-...=====.      ..  . .-------+== .. -+-            |";
echo -e "|         ---. =+++=.      .--   --=====-+#+. ..=+.            |";
echo -e "|              -#+##-.-.   -=.- =+==+#@#+@#-                   |";
echo -e "|                .-=-......---. +@+=+##==-.                    |";
echo -e "|                          ==-  =+=-.                          |";
echo -e "|                          .-.                                 |";
echo -e "|                                                              |";
echo -e "|                                                              |";
echo -e "│ ▄▄▄▄    ██▓     ▄▄▄       ▄████▄   ██ ▄█▀ ██▓ ▄████▄  ▓█████ │";
echo -e "│▓█████▄ ░██▒    ▒████▄    ▒██▀ ▀█   ██▄█▒ ▓██░░██▀ ▀█  ▓█   ▀ │";
echo -e "│▒██▒ ▄██▒██░    ▒██  ▀█▄  ▒▓█    ▄ ░███▄░ ▒██░░▓█    ▄ ▒███   │";
echo -e "│▒██░█▀  ▒██░    ░██▄▄▄▄██ ▒▓▓▄ ▄██░░██ █▄ ░██░░▓▓▄ ▄██▒▒▓█  ▄ │";
echo -e "│░▓█  ▀█▓░██████▒ ▓█   ▓██▒▒ ▓███▀ ░░██▒ █▄░██░▒ ▓███▀ ░░▒████▒│";
echo -e "│░▒▓███▀▒░ ▒░▓  ░ ▒▒   ▓▒█░░ ░▒ ▒  ░▒ ▒▒ ▓▒░▓  ░ ░▒ ▒  ░░░ ▒░ ░│";
echo -e "│▒░▒   ░ ░ ░ ▒  ░  ▒   ▒▒ ░  ░  ▒   ░ ░▒ ▒░ ▒ ░  ░  ▒    ░ ░  ░│";
echo -e "│ ░    ░   ░ ░     ░   ▒   ░        ░ ░░ ░  ▒ ░░           ░   │";
echo -e "│ ░          ░  ░      ░  ░░ ░      ░  ░    ░  ░ ░         ░  ░│";
echo -e "│      ░                   ░                   ░               │";
echo -e "|                                                              |";
echo -e "|           \033[0m🐧 \033[1;34mTelegram: \033[2;32mhttps://t.me/los_pinguin\033[0m  🐧          \033[36m|";
echo -e "└──────────────────────────────────────────────────────────────┘\033[0m";
}

update(){
sudo apt update && sudo apt upgrade -y
}

install_soft(){
sudo apt install tmux curl
}

rm_docker_old(){
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
}

install_docker(){
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
}
