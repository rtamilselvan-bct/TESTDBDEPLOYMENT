
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
