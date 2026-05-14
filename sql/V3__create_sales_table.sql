CREATE TABLE sales (
    id BIGSERIAL PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    sale_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);