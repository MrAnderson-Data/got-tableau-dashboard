-- Select all necessary fields for mapping and storytelling in Tableau
SELECT 
  k."Character_Name" AS Killer,        -- The killer's name (used as a Tableau filter)
  k.Victim,                            -- Name of the person killed (tooltip/detail)
  k.Method,                            -- Method used (e.g., sword, poison)
  k.Season,                            -- Season the kill occurred (for timeline or sorting)
  k.Episode,                           -- Episode of the kill
  l.Location,                          -- Kill location (for label or tooltip)
  l."X Coordinate" AS X,               -- X coordinate for map plotting
  l."Y Coordinate" AS Y                -- Y coordinate for map plotting

-- Source tables:
-- "got-kills" contains the kill events
-- "got-locations" gives each location coordinates
FROM 
  "got-kills" k
JOIN 
  "got-locations" l
ON 
  k.Location = l.Location              -- Join the location name to get coordinates

-- Filter to ensure only valid entries (no nulls)
WHERE 
  k."Character_Name" IS NOT NULL       -- Exclude kills with unknown killer
  AND l."X Coordinate" IS NOT NULL     -- Exclude locations that can't be plotted

-- Sort kills by killer and time to ensure Tableau can draw paths in order
ORDER BY 
  k."Character_Name",                  -- Keeps kills grouped per character
  k.Season, 
  k.Episode;
