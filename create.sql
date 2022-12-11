CREATE TABLE channel (
	channel_id int NOT NULL,
	channel_title CHAR(50) NOT NULL,
	PRIMARY KEY (channel_id)
);

CREATE TABLE category (
	category_id int NOT NULL,
	category_name CHAR(50) NOT NULL,
	PRIMARY KEY (category_id)AGGREGATE

CREATE TABLE country (
	country_id int NOT NULL,,
	country_name CHAR(50) NOT NULL,
	PRIMARY KEY (country_id)
);

CREATE TABLE video (
	video_id int NOT NULL,,
	title CHAR(50),
	views INT NOT NULL,
	channel_id INT NOT NULL,
	category_id INT NOT NULL,
	country_id INT NOT NULL,
	PRIMARY KEY (video_id),
	CONSTRAINT FK_channel
		FOREIGN KEY (channel_id)
			REFERENCES channel (channel_id) ON DELETE CASCADE,
	CONSTRAINT FK_category
		FOREIGN KEY (category_id)
	  		REFERENCES category (category_id) ON DELETE CASCADE,
	CONSTRAINT FK_country
		FOREIGN KEY (country_id)
	  		REFERENCES country (country_id) ON DELETE CASCADE
);
