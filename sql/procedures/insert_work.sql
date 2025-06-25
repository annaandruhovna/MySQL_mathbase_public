#Процедура добавления данных в таблицу works
DELIMITER //
CREATE PROCEDURE insert_work(IN client_id BIGINT, IN area_name VARCHAR(255),
IN type_name VARCHAR(30), IN format_name VARCHAR(30), IN urgency_name VARCHAR(30),
IN number_tasks INT, IN payment DECIMAl(10,2),
    IN start_date DATE, IN end_date DATE)
BEGIN
	CALL before_insert_work(client_id, area_name, type_name, format_name, urgency_name,
	number_tasks, payment, start_date, end_date);
    SET @last_id = LAST_INSERT_ID();
	SET @folder_name = CONCAT(end_date, '_', LPAD(@last_id, 4, '0'));
	UPDATE works
	SET work_folder = @folder_name
	WHERE id = @last_id;
END;
//
DELIMITER ;