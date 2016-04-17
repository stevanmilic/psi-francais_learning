CREATE TABLE IF NOT EXISTS user(
	user_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(25) NOT NULL,
	password VARCHAR(25) NOT NULL,
	email VARCHAR(50) NOT NULL
) ENGINE=INNODB;

CREATE TABLE student(
	user_id INTEGER,
	PRIMARY KEY(user_id),
	FOREIGN KEY(user_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE,
	level INTEGER,
	name VARCHAR(20),
	surname VARCHAR(20),
	city VARCHAR(20),
	profession VARCHAR(20)
) ENGINE=INNODB;

CREATE TABLE professor(
	user_id INTEGER,
	PRIMARY KEY(user_id),
	FOREIGN KEY(user_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE,
	level INTEGER,
	name VARCHAR(20),
	surname VARCHAR(20),
	city VARCHAR(20),
	profession VARCHAR(20)
)ENGINE=INNODB;

CREATE TABLE admin(
	user_id INTEGER,
	PRIMARY KEY(user_id),
	FOREIGN KEY(user_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;