-- quake terminal
-- to run, READ BELOW, and set as a trigger in quicksilver, or equivalent.

-- in order to play well with Spaces we use our own copy of terminal.app:
--
-- make a copy of Terminal.app in ~/Applications named qtrm.app
-- right click -> show package contents
-- edit Info.plist
-- change the CFBundleIdentifier string to something else
-- e.g. io.ix.qtrm
-- now we have a separate app that we can set to appear in all Spaces.
-- However, any preferences set in Terminal.app will have to be set 
-- again in the new copy.
--
-- After preferences are set you can add:
--     <key>LSUIElement</key>
--     <string>1</string>
-- after <dict> in Info.plist. This will hide the icon from the dock, 
-- and prevent it from taking focus from the previous app,
-- but it will also disable the menu bar, and keep you from editing Preferences, etc ...

-- quake term width
set w to 1280
-- quake term height.
set h to 309
-- quake term bounds ( the 22 is for the menubar )
set rect to {0, 22, w, h}

-- Unfortunately, this doesn't seem to work right if the other copy of terminal.app is running
-- seems like either application procces will make the other also be true 
tell application "System Events" to set firstrun to (not (exists application process "qtrm"))

tell application "qtrm"
	set c to count of every window of application "qtrm"
	set found to false
	repeat with y from 1 to c
		if bounds of window y is rect then
			if visible of window y then
				set visible of window y to false
			else
				set visible of window y to true
				activate
			end if
			set found to true
			exit repeat
		end if
	end repeat
	if not found then
		if not firstrun or c = 0 then
			do script
		end if
		set x to front window of application "qtrm"
		set bounds of x to rect
		activate
	end if
end tell
