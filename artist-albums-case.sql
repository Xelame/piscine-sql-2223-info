SELECT artists.Name, COUNT(*) AS NbAlbums,
CASE
    WHEN COUNT(*) = 1 THEN 'Unproductive'
    WHEN 1 < COUNT(*) AND COUNT(*) < 10 THEN 'Productive'
    WHEN 10 <= COUNT(*) THEN 'Very Productive'
END AS IsProductive
FROM artists 
INNER JOIN albums ON artists.ArtistId = albums.ArtistId
GROUP BY artists.Name
LIMIT 100;
