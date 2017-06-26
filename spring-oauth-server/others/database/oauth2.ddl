-- ###############
--    create MySQL database , if need create, cancel the comment
-- ###############
-- create database if not exists spring_oauth default character set utf8;
-- use spring_oauth set default character = utf8;

-- ###############
--    grant privileges  to spring_oauth/spring_oauth
-- ###############
-- GRANT ALL PRIVILEGES ON spring_oauth.* TO spring_oauth@localhost IDENTIFIED BY "spring_oauth";

-- ###############
-- Domain:  User
-- ###############

create database oauth2;
use oauth2;

Drop table  if exists user;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `guid` varchar(255) not null unique,
  `create_time` datetime ,
  `archived` tinyint(1) default '0',
  `email` varchar(255),
  `password` varchar(255) not null,
  `phone` varchar(255),
  `username` varchar(255) not null unique,
   `default_user` tinyint(1) default '0',
   `last_login_time` datetime ,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;


Drop table  if exists oauth_client_details;
create table oauth_client_details (
  client_id VARCHAR(255) PRIMARY KEY,
  resource_ids VARCHAR(255),
  client_secret VARCHAR(255),
  scope VARCHAR(255),
  authorized_grant_types VARCHAR(255),
  web_server_redirect_uri VARCHAR(255),
  authorities VARCHAR(255),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information MEDIUMTEXT,
  create_time datetime,
  archived tinyint(1) default '0',
  trusted tinyint(1) default '0'
);

Drop table  if exists oauth_client_token;
create table oauth_client_token (
  token_id VARCHAR(255),
  token BLOB,
  authentication_id VARCHAR(255),
  user_name VARCHAR(255),
  client_id VARCHAR(255)
);

Drop table  if exists oauth_access_token;
create table oauth_access_token (
  token_id VARCHAR(255),
  token BLOB,
  authentication_id VARCHAR(255),
  user_name VARCHAR(255),
  client_id VARCHAR(255),
  authentication BLOB,
  refresh_token VARCHAR(255)
);

Drop table  if exists oauth_refresh_token;
create table oauth_refresh_token (
  token_id VARCHAR(255),
  token BLOB,
  authentication BLOB
);

Drop table  if exists oauth_code;
create table oauth_code (
  code VARCHAR(255), authentication BLOB
);




