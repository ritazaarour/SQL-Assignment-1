/*Question: Find the albums with 25 or more tracks. */
SELECT AlbumId, count(AlbumId) 
FROM tracks 
GROUP BY AlbumId 
HAVING count(AlbumId) >= 25;
