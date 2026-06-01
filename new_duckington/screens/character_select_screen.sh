#!/bin/bash

choice=""
selected_character=""

# placeholder character names for now
character_1="Character 1"
character_2="Character 2"
character_3="Character 3"

display_character_select_title()
{
	echo ""
	echo "╔══════════════════════════════════════╗"
	echo "║         CHOOSE YOUR CHARACTER        ║"
	echo "╚══════════════════════════════════════╝"
	echo ""
}

display_character_select_menu()
{
	echo "╔══════════════════════════════════════╗"
	echo "║           [1] $character_1            ║"
	echo "╠══════════════════════════════════════╣"
	echo "║           [2] $character_2            ║"
	echo "╠══════════════════════════════════════╣"
	echo "║           [3] $character_3            ║"
	echo "╚══════════════════════════════════════╝"
	echo ""
}

get_and_check_input_is_valid()
{
	while true
	do
		read -p "ENTER CHOICE (1-3): " choice

		if [[ "$choice" =~ ^[1-3]$ ]]
		then
			break
		else
			echo -e "Oops! Invalid choice :(\nPlease use only 1, 2, or 3."
			sleep 1
		fi
	done
}

get_character_selection()
{
	get_and_check_input_is_valid

	case $choice in
		1)
			selected_character="$character_1"
			;;
		2)
			selected_character="$character_2"
			;;
		3)
			selected_character="$character_3"
			;;
	esac

	echo "You selected: $selected_character"
	sleep 1
}

run_character_select_screen()
{
	display_character_select_title
	display_character_select_menu
	get_character_selection
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]
then
	run_character_select_screen
fi

