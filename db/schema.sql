DROP DATABASE IF EXISTS business_db;

CREATE DATABASE business_db;

Use business_db;

CREATE TABLE department (
    dept_id INT NOT NULL AUTO_INCREMENT,
    dept_name VARCHAR(20)
    PRIMARY KEY (dept_id)
);

CREATE TABLE department_role (
    role_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(20) NOT NULL,
    salary DEC(9,4),
    PRIMARY KEY (role_id),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id),
);

CREATE TABLE all_employees (
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    role_id VARCHAR(20) NOT NULL,
    employee_manager_id INT,
    PRIMARY KEY (role_id) REFERENCES department_role,
    FOREIGN KEY (employee_manager_id) REFERENCES all_employees(employee_id),
);