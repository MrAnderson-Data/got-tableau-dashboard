-- Select the key fields we want to visualize and display
SELECT 
  k."Character_Name" AS Killer,        -- Name of the killer (e.g., Arya Stark)
  k.Victim,                            -- Who was killed
  k.Method,                            -- How they were killed (e.g., sword, poison)
  k.Season,                            -- Season of the kill (for timeline)
  k.Episode,                           -- Episode of the kill
  l.Location,                          -- Where the kill happened
  l."X_Coordinate" AS X,               -- Horizontal map position for plotting
  l."Y_Coordinate" AS Y                -- Vertical map position for plotting

-- Source tables: kills and locations
FROM 
  got_kills k
JOIN 
  got_locations l
ON 
  k.Location = l.Location              -- Join the kill's location with its coordinates

-- Focus only on one killer (editable)
WHERE 
  k."Character_Name" = 'Arya Stark'    -- Filter: just Arya's kills
  AND l."X_Coordinate" IS NOT NULL     -- Ensure the location has map coordinates

-- Sort the kills chronologically for animation paths
ORDER BY 
  k.Season, k.Episode;

