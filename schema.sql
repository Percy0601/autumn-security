create table oauth_client_detail (
  client_id VARCHAR(256) PRIMARY KEY,
  resource_ids VARCHAR(256),
  client_secret VARCHAR(256),
  scope VARCHAR(256),
  authorized_grant_types VARCHAR(256),
  web_server_redirect_uri VARCHAR(256),
  authorities VARCHAR(256),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information VARCHAR(4096),
  autoapprove VARCHAR(256)
);

create table oauth_client_token (
  token_id VARCHAR(256),
  token LONGTEXT,
  authentication_id VARCHAR(256) PRIMARY KEY,
  user_name VARCHAR(256),
  client_id VARCHAR(256)
);

create table oauth_access_token (
  token_id VARCHAR(256),
  token LONGTEXT,
  authentication_id VARCHAR(256) PRIMARY KEY,
  user_name VARCHAR(256),
  client_id VARCHAR(256),
  authentication LONGTEXT,
  refresh_token VARCHAR(256)
);

create table oauth_refresh_token (
  token_id VARCHAR(256),
  token LONGTEXT,
  authentication LONGTEXT
);

create table oauth_code (
  `code` VARCHAR(256), 
	authentication LONGTEXT
);

create table oauth_approvals (
	userid VARCHAR(256),
	client_id VARCHAR(256),
	scope VARCHAR(256),
	`status` VARCHAR(10),
	expires_at TIMESTAMP,
	last_modified_at TIMESTAMP
);


-- customized oauth_client_details table
create table client_detail (
  app_id VARCHAR(256) PRIMARY KEY,
  resource_ids VARCHAR(256),
  app_secret VARCHAR(256),
  scope VARCHAR(256),
  grant_types VARCHAR(256),
  redirect_url VARCHAR(256),
  authorities VARCHAR(256),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information VARCHAR(4096),
  auto_approve_scopes VARCHAR(256)
);

------------------
