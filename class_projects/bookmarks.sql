CREATE database bookmarks;
USE bookmarks;

CREATE TABLE user (
username VARCHAR(16) NOT NULL PRIMARY KEY,
passwd CHAR(40) NOT NULL,
email VARCHAR(100) NOT NULL );

CREATE TABLE bookmark (
username VARCHAR(16) NOT NULL,
bm_URL VARCHAR(255) NOT NULL,
index (username),
index (bm_URL),
PRIMARY KEY(username, bm_URL) );

GRANT SELECT, INSERT, UPDATE, DELETE
ON bookmarks.*
TO bm_user@localhost IDENTIFIED BY 'password';