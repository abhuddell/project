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
VALUES (1, 'Lana Del Rey', 'Dream Pop', 'New York City, New York', 2005, 'Interscope Records'),
	   (2, 'Opeth', 'Progressive Metal', 'Stockholm, Sweden', 1989, 'Nuclear Blast'),
	   (3, 'Coheed and Cambria', 'Progressive Rock', 'Nyack, New York', 1995, 'Roadrunner Records'),
	   (4, 'Ariana Grande', 'Pop', 'Boca Raton, Florida', 2010, 'Republic'),
	   (5, 'Eluveitie', 'Celtic Death Metal', 'Winterthur, Zurich', 2002, 'Nuclear Blast')
	   (6, 'Twenty One Pilots', 'Alternative Pop', 'Columbus, Ohio', 2009, 'Fueled by Ramen'),
	   (7, 'Taylor Swift', 'Pop', 'Reading, Pennsylvania', 2004, 'Republic Records'),
	   (8, 'The Beatles', 'Rock', 'Liverpool, United Kingdom', 1960, 'Apple Records'),
	   (9, 'Stevie Ray Vaughan', 'Texas Blues', 'Dallas, Texas', 1969, 'Legacy Recordings'),
	   (10, 'Pink Floyd', 'Psychadelic Rock', 'London, United Kingdom', 1965, 'EMI')
;
INSERT INTO "Albums" (id, Name, Artist, Released, Genre, RecordLabel)
VALUES (1, 'Ghost Reveries', 2, 2005, 'Progressive Metal', 'Roadrunner'),
	   (2, 'Born to Die', 1, 2012, 'Dream Pop', 'Interscope Records'),
	   (3, 'In Keeping Secrets of Silent Earth: 3', 3, 2003, 'Progressive Rock', 'Equal Vision'),
	   (4, 'Yours Truly', 4, 2013, 'Urban Pop', 'Republic Records'),
	   (5, 'Ategnatos', 5, 2019, 'Celtic Death Metal', 'Nuclear Blast')
	   (6, 'Speak Now', 7, 2010, 'Country', 'Big Machine Records'),
	   (7, 'Lover', 7, 2019, 'Pop','Republic Records'),
	   (8, 'Abbey Road', 8, 1969, 'Rock', 'Apple Records'),
	   (9, 'Vessel', 6, 2013, 'Alternative Pop', 'Fueled by Ramen'),
	   (10, 'The Wall', 10, 1979, 'Rock', 'Columbia Records')
;

