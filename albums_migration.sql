USE
ymir_misael;
DROP TABLE IF EXISTS ymir_misael.albums;


DROP TABLE IF EXISTS albums;

CREATE TABLE albums
(
    id           INT unsigned NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(255) NOT NULL,
    name_record  VARCHAR(255) NOT NULL,
    release_date INT          NOT NULL,
    sales        FLOAT UNSIGNED NOT NULL,
    genre        VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);



-- DESCRIBE albums;
--
-- SHOW CREATE TABLE albums;
--
-- TRUNCATE TABLE albums;
--
-- SELECT * FROM albums;
--
-- SHOW TABLES;

-- INSERT INTO albums (artist, name, release_date, sales, genre)
-- VALUES