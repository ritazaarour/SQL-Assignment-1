/* Question: Write a query that returns the artist name 
and total number of tracks of the Blues bands. */
SELECT a.Name as artist_name, count(t.TrackId) as total_tracks 
FROM artists a 
JOIN albums al ON a.ArtistId=al.ArtistId 
JOIN tracks t ON al.AlbumId=t.AlbumId 
JOIN genres g ON t.GenreId = g.GenreId 
WHERE g.Name='Blues' 
GROUP BY a.Name;
