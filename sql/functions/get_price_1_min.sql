#Функция получения стоимости одной минуты при заданных типу, формату и срочности из таблицы prices
DELIMITER //
CREATE FUNCTION get_price_1_min(type_name varchar(30), format_name varchar(30), urgency_name varchar(30)) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
SELECT price_1_min INTO @price_1_min FROM work_prices wp
INNER JOIN work_types wt
ON wp.type_id = wt.id
INNER JOIN work_formats wf
ON wp.format_id = wf.id
INNER JOIN work_urgency wu
ON wp.urgency_id = wu.id
WHERE (wt.name = type_name) and (wf.name = format_name) and (wu.name = urgency_name);
  RETURN @price_1_min;
END;
//
DELIMITER ;