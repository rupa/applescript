-- quake terminal
-- set a trigger in quicksilver to run this

-- doesn't play well with Spaces :(
-- focus only quake window?
-- return focus to last app?

-- this is our identifier, hopefully unique
set rect to {0, 22, 1280, 309}

tell application "System Events"
	if (not (exists application process "Terminal")) then
		set firstrun to true
	else
		set firstrun to false
	end if
end tell

tell application "Terminal"
	set c to count every window of application "Terminal"
	if c = 0 then
		do script
		set x to front window of application "Terminal"
		set bounds of x to rect
		activate
	else
		set found to false
		repeat with y from 1 to c
			if bounds of window y is rect then
				set visible of window y to not visible of window y
				if visible of window y then
					activate
				end if
				set found to true
				exit repeat
			end if
		end repeat
		if not found then
			if not firstrun then
				do script
			end if
			set x to front window of application "Terminal"
			set bounds of x to rect
			activate
		end if
	end if
end tell
