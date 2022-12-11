-- channel
INSERT INTO channel (channel_title)
  	VALUES ('Red Hot Chili Peppers');
INSERT INTO channel (channel_title)
  	VALUES ('SimpleHistory');
INSERT INTO channel (channel_title)
  	VALUES ('BBC');
INSERT INTO channel (channel_title)
  	VALUES ('MrBeast');
INSERT INTO channel (channel_title)
  	VALUES ('iShowSpeed');

-- category
INSERT INTO category (category_name)
  	VALUES ('Music');
INSERT INTO category (category_name)
  	VALUES ('History');
INSERT INTO category (category_name)
  	VALUES ('News');
INSERT INTO category (category_name)
  	VALUES ('Blog');
INSERT INTO category (category_name)
  	VALUES ('Stream');

-- country
INSERT INTO country (country_name)
  	VALUES ('USA');
INSERT INTO country (country_name)
  	VALUES ('Ukraine');
INSERT INTO country (country_name)
  	VALUES ('GreatBritain');
INSERT INTO country (country_name)
  	VALUES ('Canada');
INSERT INTO country (country_name)
  	VALUES ('Uganda');


-- video
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('Venice Queen', 365953, 1, 1, 1);
	
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('This Velvet Glove', 255735, 1, 1, 1);
	
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('The Most Terrifying Sounds in War', 676235, 2, 2, 2);
	
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('China eases some Covid restrictions after protests', 175893, 3, 3, 3);
	
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('Blog of our correspondent from the frontline', 513527, 3, 4, 3);
	
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('MrBeast donates to Ukraine', 914151, 4, 4, 4);
	
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('Live:MrBeast is driving 24 hours straight', 8523528, 4, 4, 4);
	
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('Crista Ronaldo SUI', 50563264, 5, 5, 5);
	
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('My trip to Argentina', 5311353, 5, 4, 5);
	
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('My autobiography', 842245, 5, 2, 5);

