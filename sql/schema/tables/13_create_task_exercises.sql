CREATE TABLE task_exercises (
  id SERIAL PRIMARY KEY,
  work_id BIGINT UNSIGNED NOT NULL,
  FOREIGN KEY (work_id) REFERENCES works(id),
  num VARCHAR(10),
  letter VARCHAR(10),
  task_id BIGINT UNSIGNED NOT NULL,
  FOREIGN KEY (task_id) REFERENCES tasks(id)
);
