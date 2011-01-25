tell application "System Events" to set firstrun to (not (exists application process "Terminal"))

tell application "Terminal"
	if not firstrun then
		do script
	end if
	activate
end tell
