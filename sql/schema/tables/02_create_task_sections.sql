CREATE TABLE task_sections (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  area_id BIGINT UNSIGNED NOT NULL,
  FOREIGN KEY (area_id) REFERENCES work_areas(id),
  description TEXT
);