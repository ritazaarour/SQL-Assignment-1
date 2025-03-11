SELECT c.name as name, sum(f.canceled)*100/count(f.canceled) as percent F
ROM Carriers c 
JOIN Flights f ON c.cid=f.carrier_id 
WHERE origin_city='San Diego CA' 
GROUP BY c.name 
HAVING sum(f.canceled)*100/count(f.canceled) > 1 
ORDER BY percent;