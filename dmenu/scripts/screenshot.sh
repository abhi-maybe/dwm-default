#!/bin/bash

function Screenshot {
	options="FullScreen\nActive\nSelect\nCancel"
	selected=$(echo -e $options | dmenu -p 'Screenshot')
		if [[ $selected = "FullScreen" ]]; then
			screengrab -f
        elif [[ $selected = "Active" ]]; then
            screengrab -a
        elif [[ $selected = "Select" ]]; then
            screengrab -r
		elif [[ $selected = "Cancel" ]]; then
	return
fi
}

Screenshot