/* Question: Compute the total departure delay of each airline across all flights.
Name the output columns name and delay, in that order. */
SELECT c.name as name, sum(f.departure_delay) as delay 
FROM Carriers c 
JOIN Flights f ON c.cid=f.carrier_id 
GROUP BY c.name;
