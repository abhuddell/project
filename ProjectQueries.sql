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

