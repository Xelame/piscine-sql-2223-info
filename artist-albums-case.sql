SELECT artists2.Name, COUNT(*) AS NbAlbums,
CASE
    WHEN COUNT(*) = 1 THEN 'Unproductive'
    WHEN 1 < COUNT(*) AND COUNT(*) < 10 THEN 'Productive'
    WHEN 10 <= COUNT(*) THEN 'Very Productive'
END AS IsProductive
FROM albums 
INNER JOIN (SELECT * FROM artists LIMIT 100) AS artists2 ON artists2.ArtistId = albums.ArtistId
GROUP BY artists2.Name;