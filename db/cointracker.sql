DROP TABLE coins;

CREATE TABLE coins
(
  id SERIAL8 primary key,
  name VARCHAR(255) not null
);
