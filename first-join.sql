SELECT Title AS AlbumName, Name AS ArtistName
FROM artists
INNER JOIN albums ON artists.Artist = albums.ArtistId