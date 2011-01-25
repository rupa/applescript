-- quake terminal

-- in order to play well with Spaces we use our own copy of terminal.app
-- make a copy of Terminal.app in ~/Applications named qtrm.app
-- right click -> show package contents
-- edit Info.plist
-- change the CFBundleIdentifier string to something else
-- e.g. io.ix.qtrm
-- now we have a separate app that we can set to appear in all Spaces.

-- set a trigger in quicksilver to run this script

-- Any preferences set in Terminal.app with have to be set again in the new copy.
-- after preferences are set you can add:
-- <key>LSUIElement</key>
-- <string>1</string>
-- after <dict> in Info.plist.
-- This will hide the icon from the dock, and fix focus issues,
-- but will also disable the menu bar, and keep you from editing Preferences.

-- get window width
-- hardcoding is noticeably faster than running script
-- set w to word 2 of (do shell script "system_profiler SPDisplaysDataType | grep -w Resolution") as number
set w to 1280
set h to 309

-- use the bounds as our window identifier, hopefully it will be unique
set rect to {0, 22, w, h}

tell application "System Events" to set firstrun to (not (exists application process "qtrm"))

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
				if visible of window y then
					set visible of window y to false
					--tell application "System Events" to keystroke tab using (command down)
				else
					set visible of window y to true
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
