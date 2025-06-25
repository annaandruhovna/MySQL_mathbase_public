#Функция получения номера секции по ее имени
DELIMITER //
CREATE FUNCTION get_section_num(section_name varchar(50)) 
RETURNS BIGINT
DETERMINISTIC
BEGIN
	SELECT id INTO @sec_id FROM task_sections
    WHERE name = section_name;
	RETURN @sec_id;
END;
//
DELIMITER ;