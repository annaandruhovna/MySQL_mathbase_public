CREATE TABLE task_sources (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  link TEXT,
  description TEXT
);