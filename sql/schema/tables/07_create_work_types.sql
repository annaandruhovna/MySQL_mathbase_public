CREATE TABLE work_types (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE,
    type_factor NUMERIC(4,2) NOT NULL
);