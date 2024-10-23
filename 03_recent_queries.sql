SELECT 
    userid,
    query,
    starttime,
    endtime,
    substring(querytxt, 1, 100) as querytxt
FROM 
    stl_query
WHERE 
    userid > 1  -- This excludes system queries
ORDER BY 
    endtime DESC
LIMIT 10;