#!/bin/bash

# ===== Colors =====
GRAY="\e[1;30m"
GREEN="\e[1;32m"
BLUE="\e[1;34m"
WHITE="\e[1;37m"
RESET="\e[0m"

# ===== Installation =====
echo -e "${GRAY}Installing${RESET} ${WHITE}Dummy Service${RESET}${GRAY}..."
sudo cp ./dummy.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/dummy.sh
sudo cp ./dummy.service /etc/systemd/system/
echo -e "${GRAY}Reloading${RESET} ${WHITE}Daemon${RESET}${GRAY}..."
sudo systemctl daemon-reload

# ===== Output =====
echo -e "${GREEN}Successfully installed!${RESET}"
echo -e "${GRAY}Start:${RESET} ${WHITE}systemctl start${RESET} ${BLUE}dummy${RESET}"
echo -e "${GRAY}Enable:${RESET} ${WHITE}systemctl enable${RESET} ${BLUE}dummy${RESET}"
echo -e "${GRAY}Log path:${RESET} ${BLUE}/var/log/dummy-service.log${RESET}"