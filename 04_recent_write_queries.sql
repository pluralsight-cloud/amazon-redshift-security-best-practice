SELECT 
    userid,
    query,
    starttime,
    endtime,
    SUBSTRING(querytxt, 1, 100) AS querytxt,
    rows 
FROM 
    stl_query
WHERE 
    querytxt ILIKE 'INSERT%' 
    OR querytxt ILIKE 'UPDATE%'
    OR querytxt ILIKE 'DELETE%'
    AND userid > 1  -- Exclude system queries
ORDER BY 
    endtime DESC
LIMIT 10;
