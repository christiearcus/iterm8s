CREATE DATABASE goodfoodhunting;

\c goodfoodhunting

CREATE TABLE dishes (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50),
  image_url VARCHAR(300)
);

SELECT * FROM dishes;

INSERT INTO dishes (name, image_url) VALUES ('prime ribs', 'http://www.simplyrecipes.com/wp-content/uploads/2006/12/prime-rib-640-dm.jpg');