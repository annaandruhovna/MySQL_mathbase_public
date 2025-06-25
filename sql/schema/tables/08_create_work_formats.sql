CREATE TABLE work_formats (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE,
    description TEXT,
    format_factor NUMERIC(4,2) NOT NULL
);