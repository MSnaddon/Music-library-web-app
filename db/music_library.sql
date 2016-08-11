DROP TABLE albums;
DROP TABLE artists;

CREATE TABLE artists (
  id serial4 primary key,
  name VARCHAR(255)
);

CREATE TABLE albums (
  id serial4 primary key,
  name VARCHAR(255),
  artist_id int4 references artists(id)
);


INSERT INTO artists (name) VALUES ('Franigans');
INSERT INTO albums (name) VALUES ('Halucinating Badger');