SELECT Name, COUNT(Title) AS NbAlbums,
CASE
    WHEN COUNT(Title) = 1 THEN 'Unproductive'
    WHEN 1 < COUNT(Title) AND COUNT(Title) < 10 THEN 'Productive'
    WHEN 10 <= COUNT(Title) THEN 'Very Productive'
END AS IsProductive
FROM (SELECT * FROM artists LIMIT 100) artists 
INNER JOIN albums ON artists.ArtistId = albums.ArtistId
GROUP BY Name WITH ROLLUP;