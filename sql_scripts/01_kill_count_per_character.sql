-- Select the name of each character and count how many kills they committed
SELECT 
  Character_Name,                  -- The name of the killer (from the got_kills table)
  COUNT(*) AS KillCount            -- Total number of kills attributed to this character

-- Source: got_kills table, which logs all killings
FROM 
  got_kills

-- Only include records with a known killer name
WHERE 
  Character_Name IS NOT NULL

-- Group by character so each row represents one killer
GROUP BY 
  Character_Name

-- Sort from most kills to least
ORDER BY 
  KillCount DESC;