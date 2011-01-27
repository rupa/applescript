-- quicksilver plugin for moving the active window around in a grid
-- Place script in ~/Library/Application Support/Quicksilver/Actions
-- set triggers for "left", "right", "top", "bottom", and full
--
-- the grid looks like:
--
-- 1 2 3
-- 4 5 6
-- 7 8 9
--
-- where 5 is "full", 
-- 2, 8, 4 and 6 are "top", "bottom", "left" and "right"
-- and 1, 3, 7 and 9 are the corners.
--
-- Get to corners with combinations.
-- For example, get to 3 by going "top" from 4 or "left" from 2
--
-- Some windows, notably terminal windows don't play well with resizing,
-- so a level of fuzziness is built in for windows that are not exactly the position
-- or size we expect.

on grid(pos, direction)
	-- grid motion (pos * dir -> pos)
	
	-- 1 2 3
	-- 4 5 6
	-- 7 8 9
	
	--   1 2 3 4 5 6 7 8 9
	-- u 2 2 2 1 2 3 4 2 6
	-- d 4 8 6 7 8 9 8 8 8
	-- l 4 1 2 4 4 4 4 7 8
	-- r 2 3 6 6 6 6 8 9 6
	
	if direction = "full" then
		return 5
	else if direction = "top" then
		return item pos of {2, 2, 2, 1, 2, 3, 4, 2, 6}
	else if direction = "bottom" then
		return item pos of {4, 8, 6, 7, 8, 9, 8, 8, 8}
	else if direction = "left" then
		return item pos of {4, 1, 2, 4, 4, 4, 4, 7, 8}
	else if direction = "right" then
		return item pos of {2, 3, 6, 6, 6, 6, 8, 9, 6}
	end if
end grid

on cmp({a, b}, {c, d})
	-- fuzziness for position/size matching. e is max cartesian distance
	set e to 50
	return ((a - c) ^ 2 + (b - d) ^ 2) ^ 0.5 < e
end cmp

on pos_size(pos)
	-- get bounds: pos -> position, size
	
	set menubar to 22
	tell application "Finder"
		set b to bounds of window of desktop
		set x to item 3 of b
		set y to item 4 of b
	end tell
	
	set a to {{0, menubar}, {x / 2, (y + menubar) / 2}}
	set b to {{0, menubar}, {x, (y + menubar) / 2}}
	set c to {{x / 2, menubar}, {x / 2, (y + menubar) / 2}}
	set d to {{0, menubar}, {x / 2, y - menubar}}
	set e to {{0, menubar}, {x, y - menubar}}
	set f to {{x / 2, menubar}, {x / 2, y - menubar}}
	set g to {{0, (y + menubar) / 2}, {x / 2, (y + menubar) / 2}}
	set h to {{0, (y + menubar) / 2}, {x, (y + menubar) / 2}}
	set i to {{x / 2, (y + menubar) / 2}, {x / 2, (y + menubar) / 2}}
	return item pos of {a, b, c, d, e, f, g, h, i}
end pos_size

on startpos(pos, sz)
	if cmp(get item 1 of pos_size(1), pos) then
		if cmp(get item 2 of pos_size(1), sz) then
			return 1
		else if cmp(get item 2 of pos_size(2), sz) then
			return 2
		else if cmp(get item 2 of pos_size(4), sz) then
			return 4
		else
			return 5
		end if
	else if cmp(get item 1 of pos_size(6), pos) then
		if cmp(get item 2 of pos_size(3), sz) then
			return 3
		else
			return 6
		end if
	else if cmp(get item 1 of pos_size(8), pos) then
		if cmp(get item 2 of pos_size(7), sz) then
			return 7
		else
			return 8
		end if
	else if cmp(get item 1 of pos_size(9), pos) then
		return 9
	else
		return 5
	end if
end startpos

using terms from application "Quicksilver"
	on process text direction
		tell application "System Events"
			
			-- get window
			repeat with i from 1 to count of every process
				if frontmost of process i then
					exit repeat
				end if
			end repeat
			
			set w to window 1 of process i
			set s to my pos_size(my grid(my startpos(position of w, size of w), direction))
			set position of w to item 1 of s
			set size of w to item 2 of s
			
		end tell
	end process text
end using terms from
