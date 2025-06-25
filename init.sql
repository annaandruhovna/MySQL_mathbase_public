SET NAMES 'utf8mb4';
# Создание базы (опционально)
DROP DATABASE IF EXISTS mathbase;
CREATE DATABASE mathbase CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE mathbase;

# Создание таблиц
SOURCE sql/schema/tables/01_create_work_areas.sql;
SOURCE sql/schema/tables/02_create_task_sections.sql;
SOURCE sql/schema/tables/03_create_task_topics.sql;
SOURCE sql/schema/tables/04_create_task_sources.sql;
SOURCE sql/schema/tables/05_create_tasks.sql;
SOURCE sql/schema/tables/06_create_work_settings.sql;
SOURCE sql/schema/tables/07_create_work_types.sql;
SOURCE sql/schema/tables/08_create_work_formats.sql;
SOURCE sql/schema/tables/09_create_work_urgency.sql;
SOURCE sql/schema/tables/10_create_work_prices.sql;
SOURCE sql/schema/tables/11_create_clients.sql;
SOURCE sql/schema/tables/12_create_works.sql;
SOURCE sql/schema/tables/13_create_task_exercises.sql;

# Функции
SOURCE sql/functions/get_price_1_min.sql;
SOURCE sql/functions/get_section_num.sql;
SOURCE sql/functions/get_topic_num.sql;
SOURCE sql/functions/get_source_num.sql;
SOURCE sql/functions/create_task_folder_name.sql;

-- Процедуры
SOURCE sql/procedures/before_insert_work.sql;
SOURCE sql/procedures/insert_work.sql;
SOURCE sql/procedures/insert_topic.sql;
SOURCE sql/procedures/before_insert_task.sql;
SOURCE sql/procedures/insert_task.sql;

# Заполнение таблиц
SOURCE sql/inserts/01_insert_work_area.sql;
SOURCE sql/inserts/02_insert_task_section.sql;
SOURCE sql/inserts/03_insert_task_topics.sql;
SOURCE sql/inserts/04_insert_task_sources.sql;
SOURCE sql/inserts/05_insert_tasks.sql;

# Представления
#SOURCE views/;