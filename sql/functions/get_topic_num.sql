#Функция получения номера темы по ее имени
DELIMITER //
CREATE FUNCTION get_topic_num(topic_name varchar(30)) 
RETURNS BIGINT
DETERMINISTIC
BEGIN
	SELECT id INTO @topic_id FROM task_topics
    WHERE name = topic_name;
	RETURN @topic_id;
END;
//
DELIMITER ;