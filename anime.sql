CREATE TABLE anime(
    animeID int,
    title varchar(50),
    season varchar(20),
    episodecount int,
    ranking int,
    duration varchar(50),
    tvrating varchar(10),
    genreID int,
    characterID int,
    userID int,
    PRIMARY KEY (animeID),
    FOREIGN KEY (genreID) REFERENCES genre(genreID)
                  ON
UPDATE
	CASCADE ON
	DELETE
		RESTRICT,
		FOREIGN KEY (characterID) REFERENCES CHARACTER(characterID)
                  ON
		UPDATE
			CASCADE ON
			DELETE
				RESTRICT,
				FOREIGN KEY (userID) REFERENCES users(userID)
                  ON
				UPDATE
					CASCADE ON
					DELETE
						RESTRICT
);

CREATE TABLE genre(
    genreID int,
    genreName varchar(15),
    themes varchar(15),
    anime int,
    PRIMARY KEY (genreID),
    FOREIGN KEY (anime) REFERENCES anime(animeID)
        ON
UPDATE
	CASCADE ON
	DELETE
		RESTRICT
);

CREATE TABLE CHARACTER(
    characterID int,
    name varchar(35),
    gender char(1),
    bio varchar(500),
    status varchar(20),
    animeID int,
    ship int,
    va int,
    PRIMARY KEY (characterID),
    FOREIGN KEY (animeID) REFERENCES anime(animeID)
        ON
UPDATE
	CASCADE ON
	DELETE
		RESTRICT,
		FOREIGN KEY (ship) REFERENCES ship(characterID1)
                      ON
		UPDATE
			CASCADE ON
			DELETE
				RESTRICT,
				FOREIGN KEY (va) REFERENCES voiceActor(vaID)
                      ON
				UPDATE
					CASCADE ON
					DELETE
						RESTRICT
);

CREATE TABLE ship(
    characterID0 int,
    characterID1 int,
    likes int,
    dislikes int,
    PRIMARY KEY (characterID0,
characterID1),
    FOREIGN KEY (characterID0,
characterID1) REFERENCES CHARACTER(characterID)
                 ON
UPDATE
	CASCADE ON
	DELETE
		RESTRICT
);

CREATE TABLE voiceActor(
    vaID int,
    name varchar(35),
    gender char(1),
    age int,
    bio varchar(500),
    CHARACTERS int,
    PRIMARY KEY (vaID),
    FOREIGN KEY (CHARACTERS) REFERENCES CHARACTER(characterID)
                       ON
UPDATE
	CASCADE ON
	DELETE
		RESTRICT

);

CREATE TABLE users(
    userID int,
    username varchar(30),
    password varchar(25),
    email varchar(50),
    bio varchar(500),
    friends int,
    animelist int,
    favorites int,
    PRIMARY KEY (userID),
    FOREIGN KEY (friends) REFERENCES users(userID)
                  ON
UPDATE
	CASCADE ON
	DELETE
		RESTRICT,
		FOREIGN KEY (animelist) REFERENCES anime(animeid)
                  ON
		UPDATE
			CASCADE ON
			DELETE
				RESTRICT,
				FOREIGN KEY (favorites) REFERENCES CHARACTER(characterID)
                  ON
				UPDATE
					CASCADE ON
					DELETE
						RESTRICT
);

CREATE TABLE isOfGenre(
    animeID int,
    genreID int,
    PRIMARY KEY (animeID,
genreID),
    FOREIGN KEY (animeID) REFERENCES anime(animeID)
                      ON
UPDATE
	CASCADE ON
	DELETE
		RESTRICT,
		FOREIGN KEY (genreID) REFERENCES genre(genreID)
                      ON
		UPDATE
			CASCADE ON
			DELETE
				RESTRICT
);

CREATE TABLE appearsIn(
    animeID int,
    characterID int,
    PRIMARY KEY (animeID,
characterID),
    FOREIGN KEY (animeID) REFERENCES anime(animeID)
                      ON
UPDATE
	CASCADE ON
	DELETE
		RESTRICT,
		FOREIGN KEY (characterID) REFERENCES CHARACTER(characterID)
                      ON
		UPDATE
			CASCADE ON
			DELETE
				RESTRICT
);

CREATE TABLE voicedBy(
    characterID int,
    vaID int,
    PRIMARY KEY (characterID,
vaID),
    FOREIGN KEY (characterID) REFERENCES CHARACTER(characterID)
                     ON
UPDATE
	CASCADE ON
	DELETE
		RESTRICT,
		FOREIGN KEY (vaID) REFERENCES voiceActor(vaID)
                     ON
		UPDATE
			CASCADE ON
			DELETE
				RESTRICT
);

CREATE TABLE isShipped(
    characterID0 int,
    characterID1 int,
    characterID int,
    PRIMARY KEY (characterID,
characterID0,
characterID1),
    FOREIGN KEY (characterID0,
characterID1) REFERENCES ship(characterID0,
characterID1)
                      ON
UPDATE
	CASCADE ON
	DELETE
		RESTRICT,
		FOREIGN KEY (characterID) REFERENCES CHARACTER(characterID)
                      ON
		UPDATE
			CASCADE ON
			DELETE
				RESTRICT
);

CREATE TABLE favorites(
    userID int,
    characterID int,
    PRIMARY KEY (userID,
characterID),
    FOREIGN KEY (characterID) REFERENCES CHARACTER(characterID)
                      ON
UPDATE
	CASCADE ON
	DELETE
		RESTRICT,
		FOREIGN KEY (userID) REFERENCES users(userID)
                      ON
		UPDATE
			CASCADE ON
			DELETE
				RESTRICT
);

CREATE TABLE befriends(
    userID1 int,
    userID2 int,
    PRIMARY KEY (userID1,
userID2),
    FOREIGN KEY (userID1,
userID2) REFERENCES users(userID)
                      ON
UPDATE
	CASCADE ON
	DELETE
		RESTRICT
);

CREATE TABLE views(
    animeID int,
    userID int,
    PRIMARY KEY (animeID,
userID),
    FOREIGN KEY (userID) REFERENCES users(userID)
                      ON
UPDATE
	CASCADE ON
	DELETE
		RESTRICT,
		FOREIGN KEY (animeID) REFERENCES anime(animeID)
                      ON
		UPDATE
			CASCADE ON
			DELETE
				RESTRICT
);

INSERT INTO anime
VALUES (0, 'Attack on Titan: The Final Season Part 2', 'Winter 2022', 5, 8, 'Jan 10, 2022 to ?', 'R - 17+', 0, 0, 0 );

INSERT INTO genre
VALUES (0, 'Action', 'Titans', 0);

INSERT INTO isOfGenre
VALUES (0, 0);

INSERT INTO character
VALUES (0, 'Eren Jaegar', 'M', 'Birthdate: March 30
Height: 183 cm (6''0")
Weight: 63 kg (139 lbs)
Position: 104th Trainees Squad, Scouting Legion
Graduation rank: 5th', 'living', 0, 0, 0);

INSERT INTO character
VALUES (1, 'Mikasa Ackerman', 'F', 'Age: 15, 19 (after time skip)
Birthdate: February 10
Height: 170 cm (5''7")
Weight: 68 kg (150 lbs)
Position: 104th Trainees Squad, Scouting Legion
Graduation rank: 1st', 'living', 0, 0, 1);

INSERT INTO voiceActor (vaID, name, gender, age, bio, characters)
VALUES (0, 'Kaji, Yuuki', 'M', 36, 'Born in Tokyo, Grew up in Saitama. Has a younger sister. He moved from Artsvision to VIMS on October 1, 2013, and his official site has been shut down on May 21, 2015.', 0);

INSERT INTO voiceActor
VALUES (1, 'Ishikawa, Yui', 'F', 32, 'Yui Ishikawa (born May 30, 1989 in Osaka, Japan) is a Japanese voice actress affiliated with mitt management.

Himawari Theatre Group Between 1995-2004
Sunaoka Office (Still Part of Himawari Theatre Group) Between September 2004-April 2019
mitt management from May 2019

She announced her marriage on May 30, 2021.', 1);

INSERT INTO appearsIn
VALUES (0, 0);

INSERT INTO voicedBy
VALUES (0, 0);

INSERT INTO voicedBy
VALUES (1, 1);

INSERT INTO appearsIn
VALUES (0, 1);

INSERT INTO ship
VALUES (0, 1, 500, 244);

INSERT INTO isShipped
VALUES (0, 1, 0);

INSERT INTO users
VALUES (0, 'bigJD57', 'iamsocool111', 'bigJD57@gmail.com', 'I like anime and anime girls.', 1, 0, 0);

INSERT INTO users
VALUES (1, 'totallyNotMy2ndAcct', 'iamsad1!', 'smallJD5777@gmail.com', 'I need a girlfriend.', 0, 0, 1);

INSERT INTO favorites
VALUES (0, 0);

INSERT INTO favorites (userID, characterID)
VALUES (1, 1);

INSERT INTO befriends
VALUES (0, 1);

INSERT INTO views
VALUES (0, 0);

INSERT INTO views
VALUES (0, 1);
