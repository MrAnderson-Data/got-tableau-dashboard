-- Select each location and count how many deaths occurred there
SELECT 
  l.Location,                                -- The name of the location (from got_locations)
  COUNT(k.Location) AS TotalDeaths           -- Total number of deaths recorded at this location
                                             
-- Start from the got-locations table
FROM 
  got_locations l

-- Join it with a combined set of all kill-related locations
INNER JOIN (
    -- First, get all locations where a recorded kill took place
    SELECT Location FROM got_kills

    UNION ALL

    -- Then, get all character death places (even if not recorded in kills)
    SELECT "Place of Death" AS Location 
    FROM got_characters
    WHERE "Place of Death" IS NOT NULL       -- Filter out characters with unknown death locations
) k
ON l.Location = k.Location                    -- Join on the location name

-- Exclude placeholder locations like "Not Available"
WHERE 
  l.Location != 'Not Available'

-- Group the data so each row represents one location
GROUP BY 
  l.Location

-- Order the result to show the deadliest places first
ORDER BY 
  TotalDeaths DESC;
