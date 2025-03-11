/* Question: Find the names of all airlines that ever flew more than 
5000 flights in one month from California. Return the names of the 
airlines and the number of flights. Do not return any duplicates. */
SELECT DISTINCT c.name as name, count(f.fid) as flightcount 
FROM Carriers c 
JOIN Flights f ON c.cid=f.carrier_id 
JOIN Months m ON f.month_id=m.mid 
WHERE origin_state='California' 
GROUP BY c.name, m.mid 
HAVING count(f.fid) > 5000;
