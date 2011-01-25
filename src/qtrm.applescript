-- quake qtrm

-- in order to play well with Spaces we use our own copy of terminal.app
-- make a copy of Terminal.app in ~/Applications named qtrm.app
-- right click -> show package contents
-- edit Info.plist
-- change the CFBundleIdentifier string to something else
-- e.g. io.ix.qtrm
-- set a trigger in quicksilver to run this script

-- doesn't play well with Spaces :(
-- focus only quake window?
-- return focus to last app?

-- this is our identifier, hopefully unique
set rect to {0, 22, 1280, 309}

tell application "System Events"
	if (not (exists application process "qtrm")) then
		set firstrun to true
	else
		set firstrun to false
	end if
end tell

tell application "qtrm"
	set c to count every window of application "qtrm"
	if c = 0 then
		do script
		set x to front window of application "qtrm"
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
			set x to front window of application "qtrm"
			set bounds of x to rect
			activate
		end if
	end if
end tell
