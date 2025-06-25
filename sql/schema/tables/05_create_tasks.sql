CREATE TABLE tasks (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  second_name VARCHAR(255),
  topic_id BIGINT UNSIGNED NOT NULL,
  FOREIGN KEY (topic_id) REFERENCES task_topics(id),
  sourse_id BIGINT UNSIGNED,
  FOREIGN KEY (sourse_id) REFERENCES task_sources(id),
  link TEXT,
  task_folder VARCHAR(20)
);