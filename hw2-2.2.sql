SELECT sum(capacity) as totalcapacity 
FROM Flights 
WHERE origin_city IN ('San Diego CA', 'San Francisco CA') AND dest_city IN ('San Diego CA', 'San Francisco CA');