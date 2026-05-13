
ALTER TABLE employee
ADD COLUMN email VARCHAR(100);

INSERT INTO employee (name, department, salary, email)
VALUES 
('Ravi', 'IT', 50000, 'ravi@example.com'),
('Priya', 'HR', 45000, 'priya@example.com');
