CREATE TABLE work_urgency (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE,
    description TEXT,
    urgency_factor NUMERIC(4,2) NOT NULL
);