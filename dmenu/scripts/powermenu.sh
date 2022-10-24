#!/bin/bash

function powermenu {
	options="Poweroff\nReboot\nLogout\nSuspend\nTUI\nCancel"
	selected=$(echo -e $options | dmenu -p 'powermenu')
		if [[ $selected = "Poweroff" ]]; then
			poweroff
		elif [[ $selected = "Reboot" ]]; then
			reboot
		elif [[ $selected = "Logout" ]]; then
			loginctl terminate-session ${XDG_SESSION_ID-}
		elif [[ $selected = "Suspend" ]]; then
			systemctl suspend
		elif [[ $selected = "TUI" ]]; then
			killall Xorg
		elif [[ $selected = "Cancel" ]]; then
	return
fi
}

powermenu
