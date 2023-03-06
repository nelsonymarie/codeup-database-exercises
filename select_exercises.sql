USE
ymir_misael;



DESCRIBE albums;
SELECT *
FROM albums;
SELECT name_record
FROM albums
WHERE artist = 'Pink Floyd';
SELECT release_date
FROM albums
WHERE name_record = "Sgt. Pepper's Lonely Hearts Club Band";
SELECT genre
FROM albums
WHERE name_record = 'Nevermind';
SELECT name_record
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;
SELECT name_record
FROM albums
WHERE sales < 20;
SELECT name_record
FROM albums
WHERE genre = 'Rock';