CREATE DATABASE goodfoodhunting;

\c goodfoodhunting

CREATE TABLE dishes (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50),
  image_url VARCHAR(300)
);

SELECT * FROM dishes;

INSERT INTO dishes (name, image_url) VALUES ('prime ribs', 'http://www.simplyrecipes.com/wp-content/uploads/2006/12/prime-rib-640-dm.jpg');

INSERT INTO dishes (name, image_url) VALUES ('crab', 'http://s3.amazonaws.com/foodspotting-ec2/reviews/5744706/thumb_600.jpg?1455696744?1460425011');


CREATE TABLE dish_types (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

INSERT INTO dish_types (name) VALUES ('snack');
INSERT INTO dish_types (name) VALUES ('dessert');
INSERT INTO dish_types (name) VALUES ('lunch');

ALTER TABLE dishes ADD dish_type_id INTEGER;


-- select * from dishes join dish_types on (dishes.dish_type_id = dish_types.id);