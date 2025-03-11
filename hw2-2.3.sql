/* Question: Write a query that returns the name and 
the percentage of canceled flights out of San Diego for 
all the airlines that more than 1% of their flights out of San Diego were canceled. 
Order the results by the percentage of canceled flights in ascending order. */ 
SELECT c.name as name, sum(f.canceled)*100/count(f.canceled) as percent F
ROM Carriers c 
JOIN Flights f ON c.cid=f.carrier_id 
WHERE origin_city='San Diego CA' 
GROUP BY c.name 
HAVING sum(f.canceled)*100/count(f.canceled) > 1 
ORDER BY percent;
