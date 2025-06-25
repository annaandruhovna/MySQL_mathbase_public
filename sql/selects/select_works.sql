SELECT w.id, cl.name, wa.name, wt.name, wf.name, wu.name,
w.tariff_1_min, w.number_tasks, w.payment, w.start_date, w.end_date, w.work_folder
 FROM works w
INNER JOIN clients cl
ON w.client_id = cl.id
INNER JOIN work_areas wa
ON w.area_id = wa.id
INNER JOIN work_types wt
ON w.type_id = wt.id
INNER JOIN work_formats wf
ON w.format_id = wf.id
INNER JOIN work_urgency wu
ON w.urgency_id = wu.id;