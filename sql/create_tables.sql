
-- Creation of users table
CREATE TABLE IF NOT EXISTS users (
  user_id varchar(450) NOT NULL,
  name varchar(450) NOT NULL,
  phone_number varchar(450) NOT NULL,
  PRIMARY KEY (user_id)
);

-- Creation of roles table
CREATE TABLE IF NOT EXISTS roles (
  role_id varchar(450) NOT NULL,
  name varchar(450) NOT NULL,
  PRIMARY KEY (role_id)
);

-- Creation of permissison table
CREATE TABLE IF NOT EXISTS permissions (
  permission_id varchar(450) NOT NULL,
  action varchar(450) NOT NULL,
  resource varchar(450) NOT NULL,
  PRIMARY KEY (permission_id)
);

-- Creation of role_permission table
CREATE TABLE IF NOT EXISTS roles_permissions (
  role_id varchar(450) NOT NULL,
  permission_id varchar(450) NOT NULL,
  CONSTRAINT fk_role FOREIGN KEY(role_id) REFERENCES roles(role_id),
  CONSTRAINT fk_permission FOREIGN KEY(permission_id) REFERENCES permissions(permission_id)
);

-- Creation of user_role table
CREATE TABLE IF NOT EXISTS users_roles (
  user_id varchar(450) NOT NULL,
  role_id varchar(450) NOT NULL,
  CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(user_id),
  CONSTRAINT fk_role FOREIGN KEY(role_id) REFERENCES roles(role_id)
);
