SELECT DISTINCT playlists.Name AS PlaylistName, tracks.Name AS TrackName
FROM playlists
INNER JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
INNER JOIN tracks ON playlist_track.TrackId = tracks.TrackId
WHERE playlists.Name = 'TV Shows'
LIMIT 100;