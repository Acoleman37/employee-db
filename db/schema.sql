USE employeesDB;

DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS role;
DROP TABLE IF EXISTS employee;

CREATE TABLE department (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  role_title VARCHAR(30) NOT NULL,
  role_salary DECIMAL(30) NOT NULL,
  department_id INTEGER NOT NULL,
  CONSTRAINT department_id
  FOREIGN KEY (department_id)
  REFERENCES department(id)
  ON DELETE CASCADE
);

CREATE TABLE employee (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER NOT NULL,
  CONSTRAINT role_id
  FOREIGN KEY (role_id)
  REFERENCES role(id)
  manager_id INTEGER
  ON DELETE CASCADE,
);