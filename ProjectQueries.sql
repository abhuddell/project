--Songs by metal bands
SELECT title
FROM "Song"
WHERE artist in (SELECT id
				FROM "Artists"
				WHERE genre IN (SELECT id
			   					FROM "Genre"
			   					WHERE Name LIKE '%Metal%'));

--Albums by English bands
SELECT a1.Name
FROM "Albums" AS a1
LEFT JOIN "Artists" AS a2
ON a1.genre = a2.genre
WHERE a2.hometown LIKE '%United Kingdom%';

--Musicians signed in the 90s
SELECT Name
FROM "Artists" as a
WHERE recordlabel IN (SELECT id
					 FROM "Record Label" AS l
					 WHERE yearfounded BETWEEN 1990 AND 1999);

--Name of the founder(s) of record labels which released pop albums
SELECT rl.Founder
FROM "Record Label" AS rl
LEFT JOIN "Albums" AS al
ON rl.id = al.RecordLabel
LEFT JOIN "Genre" AS g
ON al.Genre = g.id
WHERE g.name LIKE '%Pop%'

--Genre of the band from Winterthur, Zurich
SELECT Name
FROM "Genre" as g
WHERE id IN (SELECT genre
			  FROM "Artists" AS a
			  WHERE Hometown LIKE 'Winterthur, Zurich');

--Songs on albums where each were released in different years
SELECT s.title AS "Song name", a.name AS "Album name", a.Released AS "Album Release", s.YearReleased AS "Song Release"
FROM "Albums" AS a
LEFT JOIN "Record Label" AS rl
ON rl.id = a.RecordLabel
LEFT JOIN "Song" AS s
ON a.id = s.Album
WHERE s.YearReleased != a.Released
