-- this is an Action for quicksilver
-- put in ~/Library/Application Support/Quicksilver/Actions/ and restart qs
-- enable access for assistive devices
-- set triggers for:
-- left -> qstile, right->qstile, top->qstile, bottom->qstile, full->qstile
-- cmd option seems sweet

-- todo
-- remember old window state?
-- minimized windows

using terms from application "Quicksilver"
	on process text args
		
		tell application "Finder"
			set b to bounds of window of desktop
			set w to item 3 of b
			set h to item 4 of b
		end tell
		
		set menubar to 22
		
		-- >1 display hardcode here
		-- set w to 1280
		-- set h to 800
		
		-- positions
		
		-- leftpos, fullpos, toppos, topleftpos
		set leftpos to {0, menubar}
		-- rightpos, toprightpos
		set rightpos to {w / 2, menubar}
		-- bottompos, bottomleftpos		
		set bottompos to {0, (h + menubar) / 2}
		-- bottomrightpos		
		set bottomrightpos to {w / 2, (h + menubar) / 2}
		
		-- full
		
		set fullsize to {w, h - menubar}
		-- left, right
		set vsize to {w, (h - menubar) / 2}
		-- top, bottom
		set hsize to {w / 2, h - menubar}
		-- top left/right, bottom left/right
		set quartersize to {w / 2, (h - menubar) / 2}
		
		tell application "System Events"
			
			-- get window
			repeat with n from 1 to count of every process
				if frontmost of process n then
					exit repeat
				end if
			end repeat
			set p to position of window 1 of process n
			set s to size of window 1 of process n
			
			-- starting position
			if p = {0, menubar} then
				if item 2 of s > item 2 of quartersize then
					if item 1 of s > item 1 of hsize then
						set startpos to "full"
					else
						set startpos to "left"
					end if
				else
					if item 1 of s > item 1 of hsize then
						set startpos to "top"
					else
						set startpos to "topleft"
					end if
				end if
			else if p = {w / 2, menubar} then
				if item 2 of s > item 2 of quartersize then
					set startpos to "right"
				else
					set startpos to "topright"
				end if
			else if p = {0, (h + menubar) / 2} then
				if item 1 of s > item 1 of quartersize then
					set startpos to "bottom"
				else
					set startpos to "bottomleft"
				end if
			else if p = {w / 2, (h + menubar) / 2} then
				set startpos to "bottomright"
			else
				set startpos to ""
			end if
			
			-- if we are already in a place
			if startpos = "left" then
				if args = "top" then
					set args to "topleft"
				else if args = "bottom" then
					set args to "bottomleft"
				end if
			else if startpos = "topleft" then
				if args = "bottom" then
					set args to "left"
				else if args = "right" then
					set args to "top"
				end if
			else if startpos = "bottomleft" then
				if args = "top" then
					set args to "left"
				else if args = "right" then
					set args to "bottom"
				end if
			else if startpos = "right" then
				if args = "top" then
					set args to "topright"
				else if args = "bottom" then
					set args to "bottomright"
				end if
			else if startpos = "topright" then
				if args = "bottom" then
					set args to "right"
				else if args = "left" then
					set args to "top"
				end if
			else if startpos = "bottomright" then
				if args = "top" then
					set args to "right"
				else if args = "left" then
					set args to "bottom"
				end if
			else if startpos = "top" then
				if args = "left" then
					set args to "topleft"
				else if args = "right" then
					set args to "topright"
				end if
			else if startpos = "bottom" then
				if args = "left" then
					set args to "bottomleft"
				else if args = "right" then
					set args to "bottomright"
				end if
				
			end if
			
			--if miniaturized of window 1 of process n then
			--set miniaturized of (window 1 of process n) to false
			--end if
			
			if args = "full" then
				set position of window 1 of process n to leftpos
				set size of window 1 of process n to fullsize
				
			else if args = "left" then
				set position of window 1 of process n to leftpos
				set size of window 1 of process n to hsize
			else if args = "right" then
				set position of window 1 of process n to rightpos
				set size of window 1 of process n to hsize
			else if args = "top" then
				set position of window 1 of process n to leftpos
				set size of window 1 of process n to vsize
			else if args = "bottom" then
				set position of window 1 of process n to bottompos
				set size of window 1 of process n to vsize
				
				
			else if args = "topleft" then
				set position of window 1 of process n to leftpos
				set size of window 1 of process n to quartersize
			else if args = "topright" then
				set position of window 1 of process n to rightpos
				set size of window 1 of process n to quartersize
			else if args = "bottomleft" then
				set position of window 1 of process n to bottompos
				set size of window 1 of process n to quartersize
			else if args = "bottomright" then
				set position of window 1 of process n to bottomrightpos
				set size of window 1 of process n to quartersize
				
			end if
		end tell
	end process text
end using terms from

