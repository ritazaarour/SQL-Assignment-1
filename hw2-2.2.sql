/* Question: Find the total capacity of all direct flights between 
San Diego and San Francisco on July 1th (i.e., SD to SF or SF to SD). */
SELECT sum(capacity) as totalcapacity 
FROM Flights 
WHERE origin_city IN ('San Diego CA', 'San Francisco CA') AND dest_city IN ('San Diego CA', 'San Francisco CA');
