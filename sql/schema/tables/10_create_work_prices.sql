CREATE TABLE work_prices (
    id SERIAL PRIMARY KEY,
    type_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (type_id) REFERENCES work_types(id),
    format_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (format_id) REFERENCES work_formats(id),
	urgency_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (urgency_id) REFERENCES work_urgency(id),
    price_1_min NUMERIC(10, 2) NOT NULL,
    price_15_min NUMERIC(10, 2),
    price_1_hour NUMERIC(10, 2),
    UNIQUE (type_id, urgency_id, format_id)
);