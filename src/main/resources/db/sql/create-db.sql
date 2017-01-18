CREATE TABLE users (
  user_id   INTEGER PRIMARY KEY,
  username VARCHAR(30),
  password  VARCHAR(50),
  enabled  BOOLEAN
 );
 
 
 CREATE TABLE user_roles (
  user_role_id INTEGER PRIMARY KEY,
  username VARCHAR(30),
  role  VARCHAR(50),
 
  );