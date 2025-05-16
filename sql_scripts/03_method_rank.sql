-- Select and rank all methods of killing used in the dataset
SELECT 
  RANK() OVER (ORDER BY COUNT(*) DESC) AS MethodRank,  -- Assigns a rank based on how frequently each method is used
  Method,                                              -- The method of killing (e.g., Sword, Poison, Dragonfire)
  COUNT(*) AS MethodCount                              -- How many times this method appears in the data

-- Source table: "got-kills", which tracks all kill events
FROM 
  "got-kills"

-- Filter: Only include entries where Method is actually specified
WHERE 
  Method IS NOT NULL

-- Group by Method so that each row in the result represents one method type
GROUP BY 
  Method

-- Order the results by the ranking we just defined (most-used method first)
ORDER BY 
  MethodRank;
