CREATE TABLE task_topics (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  section_id BIGINT UNSIGNED NOT NULL,
  FOREIGN KEY (section_id) REFERENCES task_sections(id),
  description TEXT
);