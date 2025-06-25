DELIMITER //
CREATE PROCEDURE insert_topic(IN topic_name varchar(100), IN section_name varchar(30), IN descript TEXT) 
BEGIN
	SELECT get_section_num(section_name) INTO @sec_id;
    INSERT INTO task_topics (name, section_id, description) VALUES 
    (topic_name, @sec_id, descript);
END;
//
DELIMITER ;