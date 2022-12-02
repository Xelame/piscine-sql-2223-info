SELECT Title AS AlbumTitle, Name
FROM artists
LEFT JOIN albums ON artists.ArtistId = albums.ArtistId
LIMIT 100;