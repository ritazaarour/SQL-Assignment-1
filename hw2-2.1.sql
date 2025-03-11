SELECT c.name as name, sum(f.departure_delay) as delay 
FROM Carriers c 
JOIN Flights f ON c.cid=f.carrier_id 
GROUP BY c.name;