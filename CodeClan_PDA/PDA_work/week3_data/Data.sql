DROP TABLE IF EXISTS bars CASCADE;
DROP TABLE IF EXISTS beers CASCADE;

CREATE TABLE beers (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  vol VARCHAR(255)
);

CREATE TABLE bars (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  money INT4
);


INSERT INTO beers (name, vol) VALUES ('Elvis Juice', '6.5 vol');
INSERT INTO beers (name, vol) VALUES ('5am Saint', '5.9 vol');
INSERT INTO beers (name, vol) VALUES ('Punk IPA', '4.5 vol');

SELECT * FROM beers;

INSERT INTO bars (name, money) VALUES ('Brewdog Edin', 1000);
INSERT INTO bars (name, money) VALUES ('Brewdog York', 990);
SELECT * FROM bars;
