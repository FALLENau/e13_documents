DROP TABLE IF EXISTS teams;

-- database name game_tracker

CREATE TABLE teams(
  id SERIAL2 PRIMARY KEY,
  name VARCHAR(255),
  score INT4
);
