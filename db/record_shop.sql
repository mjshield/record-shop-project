DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;


CREATE TABLE artists(
  id SERIAL4 PRIMARY KEY,
  artist_name VARCHAR(255)
);

CREATE TABLE albums(
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255),
  current_stock INT2,
  ideal_stock INT2,
  thumbnail VARCHAR(255),
  artist_id INT4 REFERENCES artists(id)
);