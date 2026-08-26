-- @operation: export
-- @entity: batch
-- @name: file size tweak
-- @exportedAt: 2026-08-26T07:05:25.628Z
-- @opIds: 1151, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164

-- --- BEGIN op 1151 ( create custom_format "Size Larger than 5GB Series" )
insert into "custom_formats" ("name", "description") values ('Size Larger than 5GB Series', '');
-- --- END op 1151

-- --- BEGIN op 1152 ( update custom_format "Size Larger than 5GB Series" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Size Larger than 5GB Series', 'File Size', 'size', 'sonarr', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Size Larger than 5GB Series', 'File Size', 107374182, 4402341478);
-- --- END op 1152

-- --- BEGIN op 1153 ( update custom_format "Size Larger than 4GB Series" )
update "custom_formats" set "name" = 'Size Larger than 4GB Series' where "name" = 'Size Larger than 5GB Series';
-- --- END op 1153

-- --- BEGIN op 1154 ( update custom_format "Size Larger than 4GB Series" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Size Larger than 4GB Series' AND condition_name = 'File Size' AND min_bytes IS 107374182 AND max_bytes IS 4402341478;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Size Larger than 4GB Series', 'File Size', 4456028570, NULL);
-- --- END op 1154

-- --- BEGIN op 1155 ( create custom_format "Size Under 4GB Series" )
insert into "custom_formats" ("name", "description") values ('Size Under 4GB Series', '');
-- --- END op 1155

-- --- BEGIN op 1156 ( update custom_format "Size Under 4GB Series" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Size Under 4GB Series', 'File Size', 'size', 'sonarr', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Size Under 4GB Series', 'File Size', 4456028570, NULL);
-- --- END op 1156

-- --- BEGIN op 1157 ( update custom_format "Size Under 4GB Series" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Size Under 4GB Series' AND condition_name = 'File Size' AND min_bytes IS 4456028570 AND max_bytes IS NULL;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Size Under 4GB Series', 'File Size', 107374182, 4402341478);
-- --- END op 1157

-- --- BEGIN op 1158 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = -50
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'AMZN'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 1158

-- --- BEGIN op 1159 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Size Larger than 4GB Series', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Size Larger than 4GB Series'
    AND arr_type = 'sonarr'
);
-- --- END op 1159

-- --- BEGIN op 1160 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Size Under 4GB Series', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Size Under 4GB Series'
    AND arr_type = 'sonarr'
);
-- --- END op 1160

-- --- BEGIN op 1161 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'Under 7GB File Size'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 1161

-- --- BEGIN op 1162 ( update custom_format "Over 7GB File Size" )
update "custom_formats" set "name" = 'Over 7GB File Size' where "name" = 'Over 10GB File Size';
-- --- END op 1162

-- --- BEGIN op 1163 ( update quality_profile "Movies 1080p - Personal" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Over 7GB File Size' where "quality_profile_name" = 'Movies 1080p - Personal' and "custom_format_name" = 'Over 10GB File Size' and "arr_type" = 'radarr' and "score" = -999999;
-- --- END op 1163

-- --- BEGIN op 1164 ( update custom_format "Over 7GB File Size" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Over 7GB File Size'
  AND name = 'FileSize'
  AND type = 'size'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_sizes WHERE custom_format_name = 'Over 7GB File Size' AND condition_name = 'FileSize' AND min_bytes IS 11811160064 AND max_bytes IS 1073740750258176;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Over 7GB File Size', 'FileSize', 7623566950, NULL);
-- --- END op 1164
