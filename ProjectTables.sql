CREATE TABLE "Artists" (
	id integer,
	Name varchar,
	Genre varchar,
	Hometown varchar,
	YearFormed varchar,
	RecordLabel varchar
);

CREATE TABLE "Albums" (
	id integer,
	Name varchar,
	Artist varchar,
	Released int, 
	Genre varchar,
	RecordLabel varchar
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
	Artist varchar,
	Album varchar,
	Genre varchar,
	SongLength real,
	YearReleased date
);

ALTER TABLE "Artists"
ADD PRIMARY KEY (id);
--ALTER TABLE Artists
--ADD FOREIGN KEY (Genre) REFERENCES Genre (Name);

ALTER TABLE "Albums"
ADD PRIMARY KEY (id);

ALTER TABLE "Record Label"
ADD PRIMARY KEY (id);

ALTER TABLE "Genre"
ADD PRIMARY KEY (id);

ALTER TABLE "Song"
ADD PRIMARY KEY (id);


INSERT INTO "Artists" (id, Name, Genre, Hometown, YearFormed, RecordLabel)
VALUES (1, 'Lana Del Rey', 'Dream Pop', 'New York City, New York', 2005, 'Interscope Records'),
	   (2, 'Opeth', 'Progressive Metal', 'Stockholm, Sweden', 1989, 'Nuclear Blast'),
	   (3, 'Coheed and Cambria', 'Progressive Rock', 'Nyack, New York', 1995, 'Roadrunner Records'),
	   (4, 'Ariana Grande', 'Pop', 'Boca Raton, Florida', 2010, 'Republic'),
	   (5, 'Eluveitie', 'Celtic Death Metal', 'Winterthur, Zurich', 2002, 'Nuclear Blast')
;
INSERT INTO "Albums" (id, Name, Artist, Released, Genre, RecordLabel)
VALUES (1, 'Ghost Reveries', 'Opeth', 2005, 'Progressive Metal', 'Roadrunner'),
	   (2, 'Born to Die', 'Lana Del Rey', 2012, 'Dream Pop', 'Interscope Records'),
	   (3, 'In Keeping Secrets of Silent Earth: 3', 'Coheed and Cambria', 2003, 'Progressive Rock', 'Equal Vision'),
	   (4, 'Yours Truly', 'Ariana Grande', 2013, 'Urban Pop', 'Republic Records'),
	   (5, 'Ategnatos', 'Eluveitie', 2019, 'Celtic Death Metal', 'Nuclear Blast')
;


