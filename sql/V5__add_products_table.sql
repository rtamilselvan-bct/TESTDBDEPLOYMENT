-- ✅ Create products table
CREATE TABLE IF NOT EXISTS products (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ✅ Insert sample records
INSERT INTO products (product_name, price)
VALUES 
('Laptop', 80000.00),
('Phone', 30000.00),
('Tablet', 20000.00);

