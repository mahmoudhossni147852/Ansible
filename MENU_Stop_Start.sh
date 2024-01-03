#!/bin/bash

ALL_PATH=/path/path

while true; do
    echo -e "
    Choose an option:\n
    1: AR Servers
    2: MID Servers
    0: Exit
    "

    read -p "Enter your choice (0-2): " main_choice

    case $main_choice in
        1)
            while true; do
                echo -e "
                Choose an option to run for APP Servers:\n
                1: Restart ALL AR-Servers
                2: Restart Integration-AR-Servers Only
                3: Restart User-AR-Servers Only
                4: Stop ALL AR-Servers
                5: Stop Integration-AR-Servers Only
                6: Stop User-AR-Servers Only
                7: Start ALL AR-Servers
                8: Start Integration-AR-Servers Only
                9: Start User-AR-Servers Only
                10: Back to Main Menu
                "

                read -p "Enter your choice (1-10): " ar_choice

                case $ar_choice in
                    1) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/AR_playbooks/Restart_AR_All.yml ;;
                    2) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/AR_playbooks/Restart_AR_Int.yml ;;
                    3) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/AR_playbooks/Restart_AR_User.yml ;;
                    4) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/AR_playbooks/Stop_AR_All.yml ;;
                    5) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/AR_playbooks/Stop_AR_Int.yml ;;
                    6) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/AR_playbooks/Stop_AR_User.yml ;;
                    7) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/AR_playbooks/Start_AR_All.yml ;;
                    8) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/AR_playbooks/Start_AR_Int.yml ;;
                    9) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/AR_playbooks/Start_AR_User.yml ;;
                    10) break ;;
                    *) echo "Invalid choice. Please enter a number between 1 and 10." ;;
                esac
            done
            ;;
        2)
            while true; do
                echo -e "
                Choose an option to run for WEB Servers:\n
                1: Restart ALL MID-Servers
                2: Restart Integration-MID-Servers Only
                3: Restart User-MID-Servers Only
                4: Stop ALL MID-Servers
                5: Stop Integration-MID-Servers Only
                6: Stop User-MID-Servers Only
                7: Start ALL MID-Servers
                8: Start Integration-MID-Servers Only
                9: Start User-MID-Servers Only
                10: Back to Main Menu
                "

                read -p "Enter your choice (1-10): " mid_choice

                case $mid_choice in
                    1) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/MID_playbooks/Restart_MID_All.yml ;;
                    2) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/MID_playbooks/Restart_MID_Int.yml ;;
                    3) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/MID_playbooks/Restart_MID_User.yml ;;
                    4) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/MID_playbooks/Stop_MID_All.yml ;;
                    5) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/MID_playbooks/Stop_MID_Int.yml ;;
                    6) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/MID_playbooks/Stop_MID_User.yml ;;
                    7) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/MID_playbooks/Start_MID_All.yml ;;
                    8) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/MID_playbooks/Start_MID_Int.yml ;;
                    9) ansible-playbook -i $ALL_PATH/inventory.ini $ALL_PATH/MID_playbooks/Start_MID_User.yml ;;
                    10) break ;;
                    *) echo "Invalid choice. Please enter a number between 1 and 10." ;;
                esac
            done
            ;;
        0)
            echo "Exiting script."
            exit 0
            ;;
        *) echo "Invalid choice. Please enter 0, 1, or 2." ;;
    esac
done

