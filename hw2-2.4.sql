SELECT DISTINCT c.name as name, count(f.fid) as flightcount 
FROM Carriers c 
JOIN Flights f ON c.cid=f.carrier_id 
JOIN Months m ON f.month_id=m.mid 
WHERE origin_state='California' 
GROUP BY c.name, m.mid 
HAVING count(f.fid) > 5000;
