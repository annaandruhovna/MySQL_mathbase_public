#Функция создания имени для папки taskа
DELIMITER //
CREATE FUNCTION create_task_folder_name(task_id BIGINT) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
	SELECT CONCAT(LPAD(wa.id, 2, '0'), '_', LPAD(ts.id, 3, '0'), '_', LPAD(tp.id, 4, '0'), '_', LPAD(t.id, 5, '0')) INTO @name_folder FROM tasks t
    INNER JOIN task_topics tp
    ON t.topic_id = tp.id
    INNER JOIN task_sections ts
    ON tp.section_id = ts.id
    INNER JOIN work_areas wa
    ON ts.area_id = wa.id
    WHERE t.id = task_id;
	RETURN @name_folder;
END;
//
DELIMITER ;