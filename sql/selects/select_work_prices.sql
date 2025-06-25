SELECT wp.id AS 'номер', wt.name AS 'тип', wf.name AS 'формат', wu.name AS 'срочность',
wp.price_1_min  AS 'цена (1 мин)', wp.price_15_min  AS 'цена (15 мин)', wp.price_1_hour  AS 'цена (1 час)' 
FROM work_prices wp
JOIN work_types wt ON wp.type_id = wt.id
JOIN work_formats wf ON wp.format_id = wf.id
JOIN work_urgency wu ON wp.urgency_id = wu.id
ORDER BY wp.id;