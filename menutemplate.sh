#!/bin/bash

# Function to display the menu
display_menu() {
    clear
    echo
    echo "================"
    echo "MAKE A SELECTION"
    echo "================"
    echo "(1) SELECTION 1"
    echo "(2) SELECTION 2"
    echo "(3) SELECTION 3"
    echo "(4) SELECTION 4"
    echo "(5) SELECTION 5"
    echo "(6) SELECTION 6"
    echo "(7) SELECTION 7"
    echo "(8) SELECTION 8"
    echo "(9) SELECTION 9"
    echo "(10) SELECTION 10"
    echo "(q) Quit"
    echo
}

# Function to execute the menu selection
execute_menu() {
    case $1 in
        1)
            sudo COMMAND
            ;;
        2)
            sudo COMMAND
            ;;
        3)
            sudo COMMAND
            ;;
        4)
            sudo COMMAND
            ;;
        5)
            sudo COMMAND
            ;;
        6)
            sudo COMMAND
            ;;
        7)
            sudo COMMAND
            ;;
        8)
            sudo COMMAND
            ;;
        9)
            sudo COMMAND
            ;;
        10)
            sudo COMMAND
            ;;
        q)
            echo "Exiting. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
}

# Main loop to display the menu and execute the selected option
while true; do
    display_menu
    read -p "ENTER SELECTION: " SELECTION1
    execute_menu $SELECTION1
done
