-- @operation: export
-- @entity: batch
-- @name: updates
-- @exportedAt: 2026-10-16T21:05:22.331Z
-- @opIds: 2773, 2774, 2775, 2776, 2777, 2778

-- --- BEGIN op 2773 ( update custom_format "Over 7GB File Size" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Over 7GB File Size', 'bluray', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Over 7GB File Size', 'bluray', 'bluray');
-- --- END op 2773

-- --- BEGIN op 2774 ( update custom_format "Over 7GB File Size" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Over 7GB File Size', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Over 7GB File Size', 'WEB-DL', 'web_dl');
-- --- END op 2774

-- --- BEGIN op 2775 ( update custom_format "Series - Over 4GB Size" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Series - Over 4GB Size' AND condition_name = 'Size' AND min_bytes IS 4456028570 AND max_bytes IS NULL;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Series - Over 4GB Size', 'Size', 4724464026, NULL);
-- --- END op 2775

-- --- BEGIN op 2776 ( update custom_format "Series - Under 4GB Size" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Series - Under 4GB Size' AND condition_name = 'Size' AND min_bytes IS 107374182 AND max_bytes IS 4402341478;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Series - Under 4GB Size', 'Size', 107374182, 4713726607);
-- --- END op 2776

-- --- BEGIN op 2777 ( update custom_format "Over 7GB File Size" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Over 7GB File Size'
  AND name = 'WEB-DL'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 2777

-- --- BEGIN op 2778 ( update custom_format "Over 7GB File Size" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Over 7GB File Size'
  AND name = 'bluray'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 2778
