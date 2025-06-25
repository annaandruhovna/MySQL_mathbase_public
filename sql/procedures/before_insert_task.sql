DELIMITER //
CREATE PROCEDURE before_insert_task(IN task_name varchar(100), IN second_name varchar(100), IN topic_name varchar(100), IN source_name varchar(100), IN link TEXT) 
BEGIN
	SELECT get_topic_num(topic_name) INTO @topic_id;
    IF source_name IS NOT NULL THEN
		SELECT get_source_num(source_name) INTO @source_id;
	ELSE
		SET @source_id = NULL;
	END IF;
    INSERT INTO tasks (name, second_name, topic_id, sourse_id, link) VALUES 
    (task_name, second_name, @topic_id, @source_id, link);
END;
//
DELIMITER ;