#!/bin/bash

function Scripts {
	options="Google\nYoutube\nLofiGirl\nSleepFi\nCancel"
	selected=$(echo -e $options | dmenu -p 'Scripts')
		if [[ $selected = "LofiGirl" ]]; then
			mpv --fs https://youtu.be/jfKfPfyJRdk
        elif [[ $selected = "SleepFi" ]]; then
            mpv --fs https://youtu.be/rUxyKA_-grg
        elif [[ $selected = "Youtube" ]]; then
            firefox youtube.com
        elif [[ $selected = "Google" ]]; then
            firefox google.com
		elif [[ $selected = "Cancel" ]]; then
	return
fi
}

Scripts