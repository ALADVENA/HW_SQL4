CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	collection_name varchar(100) NOT NULL,
	collection_year integer NOT NULL
		CHECK (collection_year BETWEEN 1948 AND 2123)
);

CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	genre_name varchar(60) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Authors (
	id SERIAL PRIMARY KEY,
	author_name varchar(60) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	album_name varchar(100) NOT NULL,
	album_year integer NOT NULL
		CHECK (album_year BETWEEN 1948 AND 2123)
	);

-- один ко многим

CREATE TABLE IF NOT EXISTS Songs (
	id SERIAL PRIMARY KEY,
	song_name varchar(100) NOT NULL,
	song_duration time NOT NULL,
	album_id integer REFERENCES Albums(id)
);

-- многие ко многим

CREATE TABLE IF NOT EXISTS Genres_Authors (
	genre_id INTEGER REFERENCES Genres(id),
	author_id INTEGER REFERENCES Authors(id),
	CONSTRAINT pk_Genres_Authors PRIMARY KEY (genre_id, author_id)
);

CREATE TABLE IF NOT EXISTS Authors_Albums (
	author_id INTEGER REFERENCES Authors(id),
	album_id INTEGER REFERENCES Albums(id),
	CONSTRAINT pk_Authors_Albums PRIMARY KEY (author_id, album_id)
);

CREATE TABLE IF NOT EXISTS Collections_Songs (
	collection_id INTEGER REFERENCES Collections(id),
	song_id INTEGER REFERENCES Songs(id),
	CONSTRAINT pk_Collections_Song PRIMARY KEY (collection_id, song_id)
);



