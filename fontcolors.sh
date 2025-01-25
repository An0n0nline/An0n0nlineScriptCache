#!/bin/bash

# Function to demonstrate 256 colors
display_full_256_colors() {
    echo -e "\nFull 256 Color Spectrum:"
    for code in {0..255}; do
        # Display colors from 0 to 255
        printf "\033[48;5;${code}m%3s\033[0m" "$code"
        # Print a new line after every 16 colors
        if (( (code + 1) % 16 == 0 )); then
            echo
        fi
    done
}

# Function to demonstrate text attributes like bold, blink, etc.
display_text_attributes() {
    echo -e "\nText Attributes (with tput codes):"
    
    # Normal text
    echo -e "tput sgr0: \033[0mNormal text"
    
    # Bold text
    echo -e "tput bold: \033[1mBold text"
    
    # Underline text
    echo -e "tput smul: \033[4mUnderlined text"
    
    # Blink text (fast blink in some terminals)
    echo -e "tput blink: \033[5mBlinking text"
    
    # Reverse video (inverts colors)
    echo -e "tput rev: \033[7mReversed text"
    
    # Invisible text (text color and background color match)
    echo -e "tput invis: \033[8mInvisible text"
    
    # Strikethrough text (not supported in all terminals)
    echo -e "tput strikethrough: \033[9mStrikethrough text"
    
    # Reset to normal
    echo -e "tput sgr0: \033[0mBack to normal text"
}

# Function to demonstrate basic foreground color codes
display_basic_foreground_colors() {
    echo -e "\nBasic Foreground Colors (0-15) with tput setaf codes:"
    declare -A color_names=(
        [0]="black" [1]="dark red" [2]="dark green" [3]="dark yellow"
        [4]="dark blue" [5]="dark magenta" [6]="dark cyan" [7]="white"
        [8]="gray" [9]="red" [10]="green" [11]="yellow"
        [12]="blue" [13]="magenta" [14]="cyan" [15]="bright white"
    )

    for i in {0..15}; do
        echo -e "tput setaf $i : \033[38;5;${i}mColor ${i} (${color_names[$i]})\033[0m"
    done
}

# Function to demonstrate basic background color codes
display_basic_background_colors() {
    echo -e "\nBasic Background Colors (0-15) with tput setab codes:"
    declare -A color_names=(
        [0]="black" [1]="dark red" [2]="dark green" [3]="dark yellow"
        [4]="dark blue" [5]="dark magenta" [6]="dark cyan" [7]="white"
        [8]="gray" [9]="red" [10]="green" [11]="yellow"
        [12]="blue" [13]="magenta" [14]="cyan" [15]="bright white"
    )

    for i in {0..15}; do
        echo -e "tput setab $i : \033[48;5;${i}m Background ${i} (${color_names[$i]}) \033[0m"
    done
}

# Run the functions
clear
display_full_256_colors
display_basic_foreground_colors
display_basic_background_colors
display_text_attributes
