# Bookmark Manager

# Intructions


-- User Stories --
As a user,
so I can see the bookmarks that I've saved,
I would like to see a list of bookmarks.

![alt text](lib/assets/user_story_1.png)

# Create DATABASE
- In order to build a database we run CREATE DATABASE routine in psql environment, called bookmark_manager.
- We build a table within bookmark_manager database, called bookmarks.
- In order to keep a record of sql routines we create a folder and sub-folder called db and migrations, respectively.

Setting up a test database
$> psql postgres
admin=# CREATE DATABASE "bookmark_manager_test";
admin=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
