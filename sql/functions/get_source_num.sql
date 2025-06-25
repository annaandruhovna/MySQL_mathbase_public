#Функция получения номера источника по его имени
DELIMITER //
CREATE FUNCTION get_source_num(source_name varchar(30)) 
RETURNS BIGINT
DETERMINISTIC
BEGIN
	SELECT id INTO @source_id FROM task_sources
    WHERE name = source_name;
	RETURN @source_id;
END;
//
DELIMITER ;