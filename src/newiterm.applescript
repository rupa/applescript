tell application "System Events" to set firstrun to (not (exists application process "iTerm"))

tell application "iTerm"
	if not firstrun then
		set t to make new terminal
		tell t to launch session "Default Session"
	end if
	activate
end tell
