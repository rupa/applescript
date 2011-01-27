-- makes firefox slide in/out from the side of the screen
-- run as a trigger in quicksilver or butler
-- works best with only one window
-- v0.04 by rupa@lrrr.us

set width to 1280
-- automatic but noticeably slower
--set width to word 2 of (do shell script "system_profiler SPDisplaysDataType | grep -w Resolution") as number

tell application "System Events"
	if not (exists application process "firefox-bin") then
		-- firefox isn't open
		activate application "Firefox"
	else if number of windows of application process "Firefox" is 0 then
		-- open but no windows open
		do shell script "open -a firefox"
	else if (visible of application process "firefox-bin" is true) then
		-- slide out
		set x to 0
		repeat until x < -width
			set position of window 1 of application process "firefox-bin" to {x, 22}
			set x to x - 64
		end repeat
		-- bring the window back, but invisible, so clicking on the dock works as expected
		set visible of application process "firefox-bin" to false
		set position of window 1 of application process "firefox-bin" to {0, 22}
	else
		-- slide in (well, not really, but this looks better)
		set position of window 1 of application process "firefox-bin" to {0, 22}
		set visible of application process "firefox-bin" to true
		activate application "Firefox"
	end if
end tell

