#Процедура добавления части данных в таблицу works (кроме имени папки)
DELIMITER //
CREATE PROCEDURE before_insert_work(IN client_id BIGINT, IN area_name VARCHAR(255),
IN type_name VARCHAR(30), IN format_name VARCHAR(30), IN urgency_name VARCHAR(30),
IN number_tasks INT, IN payment DECIMAl(10,2), IN start_date DATE, IN end_date DATE) 
BEGIN
	SELECT get_price_1_min(type_name, format_name, urgency_name) INTO @price_1_min;
    INSERT INTO works (
    client_id, area_id, 
    type_id, format_id, urgency_id,
    tariff_1_min, number_tasks, payment,
    start_date, end_date)
VALUES (
    client_id,
    (SELECT id FROM work_areas WHERE name = area_name),
    (SELECT id FROM work_types WHERE name = type_name),
    (SELECT id FROM work_formats WHERE name = format_name),
    (SELECT id FROM work_urgency WHERE name = urgency_name),
    @price_1_min, number_tasks, payment,
    start_date, end_date);
END;
//
DELIMITER ;