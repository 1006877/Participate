INSERT INTO users VALUES (1, 'users', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.',1);
INSERT INTO users VALUES (2, 'admin', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.',1);
INSERT INTO users VALUES (3, 'dba', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.',1);


INSERT INTO user_roles VALUES ( 1,'users', 'ROLE_USER');
INSERT INTO user_roles VALUES ( 2,'admin', 'ROLE_ADMIN');
INSERT INTO user_roles VALUES ( 3,'dba', 'ROLE_DBA');