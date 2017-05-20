#!/bin/sh
if [ -f '*.pyc' ]; then
   rm *.pyc
fi

osascript -e 'tell application "System Events"
	set frontmost of process "Live" to true
	keystroke "q" using command down
	delay 0.1
	tell application "System Events" to keystroke (ASCII character 28) --left arrow
	delay 0.1
	tell application "System Events" to keystroke (ASCII character 28) --left arrow
	delay 0.1
	keystroke return
end tell'

while pgrep Live; do
  sleep 1
done

open -a 'Ableton Live 9 Lite.app'
