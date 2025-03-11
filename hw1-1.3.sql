SELECT AlbumId, count(AlbumId) 
FROM tracks 
GROUP BY AlbumId 
HAVING count(AlbumId) >= 25;