-- 2.1
SELECT album_name, album_year FROM Albums
WHERE album_year = 2018;
-- 2.2
SELECT song_name, song_duration FROM Songs
ORDER BY song_duration DESC
LIMIT 1;
-- 2.3
SELECT song_name, song_duration FROM Songs
WHERE song_duration >= '00:03:30';
-- 2.4
SELECT collection_name FROM Collections
WHERE collection_year BETWEEN 2018 AND 2020;
-- 2.5
SELECT author_name FROM Authors
WHERE author_name NOT LIKE '% %' ;
-- 2.6
SELECT song_name FROM Songs
WHERE song_name LIKE '%Me%' OR song_name LIKE '%You%';

