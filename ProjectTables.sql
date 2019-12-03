CREATE TABLE "Artists" (
	id integer,
	Name varchar,
	Genre integer,
	Hometown varchar,
	YearFormed date,
	RecordLabel integer
);

CREATE TABLE "Albums" (
	id integer,
	Name varchar,
	Artist integer,
	Released date, 
	Genre integer,
	RecordLabel integer
);

CREATE TABLE "Record Label" (
	id integer,
	Name varchar,
	YearFounded date,
	Founder varchar,
	Worth real
);

CREATE TABLE "Genre" (
	id integer,
	Name varchar
);

CREATE TABLE "Song" (
	id integer,
	Title varchar,
	Artist integer,
	Album integer,
	Genre integer,
	SongLength real,
	YearReleased date
);

ALTER TABLE "Artists"
ADD PRIMARY KEY (id);

ALTER TABLE "Albums"
ADD PRIMARY KEY (id);

ALTER TABLE "Record Label"
ADD PRIMARY KEY (id);

ALTER TABLE "Genre"
ADD PRIMARY KEY (id);

ALTER TABLE "Song"
ADD PRIMARY KEY (id);

ALTER TABLE "Artists"
ADD FOREIGN KEY (Genre) REFERENCES "Genre"(id);
ALTER TABLE "Artists"
ADD FOREIGN KEY (RecordLabel) REFERENCES "Record Label"(id);

ALTER TABLE "Albums"
ADD FOREIGN KEY (Artist) REFERENCES "Artists"(id);
ALTER TABLE "Albums"
ADD FOREIGN KEY (Genre) REFERENCES "Genre"(id);
ALTER TABLE "Albums"
ADD FOREIGN KEY (RecordLabel) REFERENCES "Record Label"(id);

ALTER TABLE "Song"
ADD FOREIGN KEY (Artist) REFERENCES "Artists"(id);
ALTER TABLE "Song"
ADD FOREIGN KEY (Album) REFERENCES "Albums"(id);
ALTER TABLE "Song"
ADD FOREIGN KEY (Genre) REFERENCES "Genre"(id);


INSERT INTO "Artists" (id, Name, Genre, Hometown, YearFormed, RecordLabel)
VALUES (1, 'Lana Del Rey', 2, 'New York City, New York', 2005, 1),
	   (2, 'Opeth', 5, 'Stockholm, Sweden', 1989, 2),
	   (3, 'Coheed and Cambria', 8, 'Nyack, New York', 1995, 3),
	   (4, 'Ariana Grande', 1, 'Boca Raton, Florida', 2010, 4),
	   (5, 'Eluveitie', 6, 'Winterthur, Zurich', 2002, 2)
	   (6, 'Twenty One Pilots', 3, 'Columbus, Ohio', 2009, 5),
	   (7, 'Taylor Swift', 1, 'Reading, Pennsylvania', 2004, 4),
	   (8, 'The Beatles', 7, 'Liverpool, United Kingdom', 1960, 6),
	   (9, 'Stevie Ray Vaughan', 10, 'Dallas, Texas', 1969, 7),
	   (10, 'Pink Floyd', 9, 'London, United Kingdom', 1965, 8)
;
INSERT INTO "Albums" (id, Name, Artist, Released, Genre, RecordLabel)
VALUES (1, 'Ghost Reveries', 2, 2005, 5, 3),
	   (2, 'Born to Die', 1, 2012, 2, 1),
	   (3, 'In Keeping Secrets of Silent Earth: 3', 3, 2003, 8, 9),
	   (4, 'Yours Truly', 4, 2013, 4, 4),
	   (5, 'Ategnatos', 5, 2019, 6, 2)
	   (6, 'Speak Now', 7, 2010, 11, 10),
	   (7, 'Lover', 7, 2019, 1, 4),
	   (8, 'Abbey Road', 8, 1969, 7, 6),
	   (9, 'Vessel', 6, 2013, 3, 5),
	   (10, 'The Wall', 10, 1979, 7, 11)
;

INSERT INTO "Genre" (id, Name)
VALUES (1, 'Pop'),
	   (2, 'Dream Pop'),
	   (3, 'Alternative Pop'),
	   (4, 'Urban Pop'),
	   (5, 'Progressive Metal'),
	   (6, 'Celtic Death Metal'),
	   (7, 'Rock'),
	   (8, 'Progressive Rock'),
	   (9, 'Psychadelic Rock'),
	   (10, 'Texas Blues'),
	   (11, 'Country')
;

INSERT INTO "Record Label" (id, Name, YearFounded, Founder, Worth)
VALUES (1, 'Interscope Records', ),
	   (2, 'Nuclear Blast', ),
	   (3, 'Roadrunner Records', ),
	   (4, 'Republic Records', ), 
	   (5, 'Fueled by Ramen', ), 
	   (6, 'Apple Records', ), 
	   (7, 'Legacy Recordings', ),
	   (8, 'EMI', ),
	   (9, 'Equal Vision', ),
	   (10, 'Big Machine Records', ),
	   (11, 'Columbia Records', ),
;

