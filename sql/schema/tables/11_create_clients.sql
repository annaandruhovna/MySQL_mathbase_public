CREATE TABLE clients (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  telegram_username VARCHAR(50),
  phone VARCHAR(20)
);