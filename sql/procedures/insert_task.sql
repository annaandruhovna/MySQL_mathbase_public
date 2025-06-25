DELIMITER //
CREATE PROCEDURE insert_task(IN task_name varchar(100), IN second_name varchar(100), IN topic_name varchar(100), IN source_name varchar(100), IN link TEXT) 
BEGIN
	CALL before_insert_task(task_name, second_name, topic_name, source_name, link);
    SET @last_id = LAST_INSERT_ID();
    SELECT create_task_folder_name(@last_id) INTO @folder_name;
	UPDATE tasks
	SET task_folder = @folder_name
	WHERE id = @last_id;
END;
//
DELIMITER ;