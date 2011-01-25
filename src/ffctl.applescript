-- makes firefox slide in from the side of the screen
-- run as a trigger in quicksilver or butler
-- works best with only one window
-- v0.03 by 31d1 @cutup.org

tell application "System Events"
	
	-- if firefox isn't open
	if (not (exists application process "firefox-bin")) then
		activate application "Firefox"
		
	else
		tell application "Firefox" to set z to number of windows
		set scr to word 2 of (do shell script "system_profiler SPDisplaysDataType | grep -w Resolution") as number
		
		-- if there's no open window ( i can't set position or get it to slide in without creating weird unselectable windows. )
		if (z is 0) then
			activate application "Firefox"
			tell process "firefox-bin" to click menu item "Home" of menu "History" of menu bar 1
			
			-- slide out
		else if (visible of application process "firefox-bin" is true) then
			set x to 0
			repeat until x < -scr
				set position of window 1 of application process "firefox-bin" to {x, 23}
				set x to x - 64
			end repeat
			-- bring the window back, but invisible, so clicking on the dock works as expected
			set visible of application process "firefox-bin" to false
			set position of window 1 of application process "firefox-bin" to {0, 23}
			
			-- slide in             
		else
			set x to -scr
			set position of window 1 of application process "firefox-bin" to {-scr, 23}
			set visible of application process "firefox-bin" to true
			activate application "Firefox"
			repeat while x < 0
				set x to x + 64
				set position of window 1 of application process "firefox-bin" to {x, 23}
			end repeat
			
		end if
	end if
end tell

