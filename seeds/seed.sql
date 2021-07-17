INSERT INTO department (dept_name) VALUES ('TS Level 1'), ('TS Level 2'), ('Information Security'), ('IT Management');

INSERT INTO department_role (title, salary, role_id)
('IT Manager', '145,000', 4),
('TS Level 1 Support', '40,000', 1),
('Information Security Specialist', '105,000', 3),
('TS Level 2 Support', '65,000', 2),

INSERT INTO all_employees (first_name, last_name, role_id, employee_manager_id)
('Leon', 'Kennedy', 1, 4),
('Bruce', 'Wayne', 4,  NULL),
('Peter', 'Parker', 3, 4),
('Harley', 'Quinn', 2, 4),
