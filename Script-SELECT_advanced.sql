--1 
SELECT genre_name, COUNT(*) FROM Genres_authors ag
JOIN genres g ON g.id = ag.genre_id 
GROUP BY genre_name  
ORDER BY genre_name;

--2 
SELECT COUNT(*) FROM Songs s 
JOIN Albums a ON a.id = s.album_id 
WHERE a.album_year BETWEEN 2019 AND 2020;

--3
SELECT album_name, AVG(song_duration) FROM Songs s
JOIN Albums a ON a.id = s.album_id
GROUP BY album_name;

--4
SELECT DISTINCT author_name FROM Authors a
JOIN Authors_albums aa  ON a.id = aa.author_id
JOIN Albums alb ON alb.id = aa.album_id
WHERE album_year != 2020;

--5
SELECT collection_name FROM Authors a
JOIN Authors_albums aa ON aa.author_id = a.id
JOIN Songs s ON s.album_id = aa.album_id 
JOIN Collections_songs c ON c.song_id = s.id 
JOIN Collections c2 ON c2.id = c.collection_id 
WHERE author_name = 'Architects';

--6
SELECT album_name FROM Albums a 
JOIN Authors_albums aa ON aa.album_id = a.id 
WHERE aa.author_id IN (
	SELECT author_id FROM Genres_authors
	GROUP BY author_id
	HAVING COUNT(genre_id) > 1);

--7 
--SELECT song_name FROM Songs s 
--JOIN Collections_songs cs on cs.song_id = s.id 
--JOIN Collections c on cs.song_id = c.id
--WHERE collection_name IS NULL;

SELECT song_name FROM Songs s 
LEFT JOIN Collections_songs c ON s.id = c.song_id 
WHERE c.song_id IS NULL;

--8
SELECT author_name FROM Authors a 
JOIN Authors_albums aa ON a.id = aa.author_id 
JOIN Songs s ON aa.album_id = s.album_id 
WHERE song_duration = (
	SELECT MIN(song_duration) FROM Songs);

--9
SELECT album_name FROM Albums a
JOIN Songs s ON s.album_id = a.id 
GROUP BY album_name 
HAVING COUNT(*) = (
SELECT COUNT(*) FROM Songs s
GROUP BY album_id 
ORDER BY COUNT(*) 
LIMIT 1);

