
--Ввод данных по исполнителям:

INSERT INTO Authors (author_name)
VALUES 	('Bring Me the Horizon'),
		('Burzum'),
		('Placebo'),
		('As cities Burn'),
		('nothing,nowhere.'),
		('Solstafir'),
		('Napalm Death'),
		('Architects');

--Ввод данных по альбомам:

INSERT INTO Albums (album_name, album_year)
VALUES 	('That is the Spirit', 2021),
		('Hvis Lyset Tar Oss', 2001),
		('The classic symptoms of broken spirit', 2023),
		('Without You I am Nothing', 1998),
		('Son, I Loved You at Your Darkest', 2004),
		('Reaper', 2018),
		('Svartir Sandar', 2006),
		('Scum', 2002);
		
--Ввод данных по жанрам:

INSERT INTO Genres (genre_name)
VALUES 	('Post-hardcore'),
		('Black metal'),
		('Metalcore'),
		('Alternative rock'),
		('Grindcore');

--Ввод данных по трекам:

INSERT INTO Songs (album_id, song_name, song_duration)
VALUES 	(1, 'Throne', '00:03:07'),
		(1, 'Doomed', '00:04:03'),
		(3, 'Deep fake', '00:03:45'),
		(3, 'Tear gas', '00:02:13'),
		(4, 'Pure Morning', '00:05:08'),
		(4, 'Every You Every Me', '00:01:59'),
		(5, 'Bloodsucker, Part II', '00:04:25'),
		(5, '2020 AD', '00:05:37'),
		(6, 'Skully', '00:02:47'),
		(6, 'Clarity in Kerosene', '00:07:11'),
		(7, 'I viking', '00:06:18'),
		(7, 'Fjara', '00:04:29'),
		(8, 'Scum', '00:03:08'),
		(8, 'You Suffer', '00:05:01'),
		(2, 'Det Som en Gang Var', '00:03:38');
		
--Ввод данных по альбомам:

INSERT INTO Collections (collection_name, collection_year)
VALUES 	('Music_Collections_2016', 2016),
		('Music_Collections_2017', 2017),
		('Music_Collections_2018', 2018),
		('Music_Collections_2019', 2019),
		('Music_Collections_2020', 2020),
		('Music_Collections_2021', 2021),
		('Music_Collections_2022', 2022),
		('Music_Collections_2023', 2023);
		
--Отношения

INSERT INTO Authors_albums (author_id, album_id)
VALUES 	(1, 1),
		(2, 2),
		(3, 4),
		(4, 5),
		(5, 6),
		(6, 7),
		(7, 8),
		(8, 3);


INSERT INTO Genres_authors (genre_id, author_id)
VALUES 	(1, 1),
		(2, 2),
		(3, 8),
		(4, 5),
		(5, 7);	
		
INSERT INTO Collections_songs (collection_id, song_id)
VALUES 	(8, 1),
		(7, 2),
		(6, 3),
		(5, 4),
		(4, 5),
		(3, 6),
		(2, 7),
		(1, 8);
	