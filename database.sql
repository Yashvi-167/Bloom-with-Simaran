CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL
);

CREATE TABLE gallery (
    id SERIAL PRIMARY KEY,
    url VARCHAR(255) NOT NULL,
    type VARCHAR(20) NOT NULL, -- 'image' or 'video'
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert a default admin user. 
-- Important: You should generate a secure password hash (e.g. using bcrypt) in production.
-- For local testing, we might compare raw text depending on implementation.
INSERT INTO users (username, password_hash) VALUES ('admin', 'securepassword123');
