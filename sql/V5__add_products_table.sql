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

-- ✅ Add new column to existing table
ALTER TABLE customers
ADD COLUMN IF NOT EXISTS email VARCHAR(150);

-- ✅ Update existing data
UPDATE customers
SET email = LOWER(name) || '@company.com'
WHERE email IS NULL;

-- ✅ Create index
CREATE INDEX IF NOT EXISTS idx_products_name
ON products(product_name);

-- ✅ Create function
CREATE OR REPLACE FUNCTION get_total_products()
RETURNS INTEGER AS $$
BEGIN
    RETURN (SELECT COUNT(*) FROM products);
END;
$$ LANGUAGE plpgsql;

-- ✅ Create view
CREATE OR REPLACE VIEW high_price_products AS
SELECT product_name, price
FROM products
WHERE price > 25000;
``