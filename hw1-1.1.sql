/* Question: Find all the tracks that have a length 
of 1,000,000 milliseconds or less.*/
SELECT TrackId 
FROM tracks 
WHERE Milliseconds <= 1000000;
