-- @operation: export
-- @entity: batch
-- @name: fix TNA+ regex and create TUBI
-- @exportedAt: 2026-09-05T09:58:12.501Z
-- @opIds: 2354, 2355, 2356, 2357, 2358, 2359, 2360, 2361, 2362, 2363, 2364, 2365, 2366, 2367, 2368, 2369

-- --- BEGIN op 2354 ( create regular_expression "TUBI" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TUBI', '\b(YouTube|YTube)\b', 'YouTube content', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TUBI', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TUBI', 'WEB-DL');
-- --- END op 2354

-- --- BEGIN op 2355 ( update regular_expression "TUBI" )
update "regular_expressions" set "pattern" = '\b(TUBI|TUBITV)\b' where "name" = 'TUBI' and "pattern" = '\b(YouTube|YTube)\b';
-- --- END op 2355

-- --- BEGIN op 2356 ( create custom_format "TUBI" )
insert into "custom_formats" ("name", "description") values ('TUBI', '');
-- --- END op 2356

-- --- BEGIN op 2357 ( update custom_format "TUBI" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'TUBI' and "include_in_rename" = 0;
-- --- END op 2357

-- --- BEGIN op 2358 ( update custom_format "TUBI" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TUBI', 'Streaming Service');
-- --- END op 2358

-- --- BEGIN op 2359 ( update custom_format "TUBI" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TUBI', 'TUBI', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TUBI', 'TUBI', 'TUBI');
-- --- END op 2359

-- --- BEGIN op 2360 ( update custom_format "TUBI" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TUBI', 'WEB-DL', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TUBI', 'WEB-DL', 'web_dl');
-- --- END op 2360

-- --- BEGIN op 2361 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'TUBI', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'TUBI'
    AND arr_type = 'radarr'
);
-- --- END op 2361

-- --- BEGIN op 2362 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'TUBI', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'TUBI'
    AND arr_type = 'sonarr'
);
-- --- END op 2362

-- --- BEGIN op 2363 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'TUBI', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'TUBI'
    AND arr_type = 'radarr'
);
-- --- END op 2363

-- --- BEGIN op 2364 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'TUBI', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'TUBI'
    AND arr_type = 'sonarr'
);
-- --- END op 2364

-- --- BEGIN op 2365 ( update quality_profile "1080p Preferred Personal (Sports)" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
  AND custom_format_name = 'JermBox'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 2365

-- --- BEGIN op 2366 ( update quality_profile "1080p Preferred Personal (Sports)" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
  AND custom_format_name = 'JermBox'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 2366

-- --- BEGIN op 2367 ( update quality_profile "1080p Preferred Personal (Sports)" )
UPDATE quality_profile_custom_formats
SET score = 1500
WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
  AND custom_format_name = 'HEEL'
  AND arr_type = 'radarr'
  AND score = 700;
-- --- END op 2367

-- --- BEGIN op 2368 ( update quality_profile "1080p Preferred Personal (Sports)" )
UPDATE quality_profile_custom_formats
SET score = 1500
WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
  AND custom_format_name = 'HEEL'
  AND arr_type = 'sonarr'
  AND score = 700;
-- --- END op 2368

-- --- BEGIN op 2369 ( update regular_expression "TNA+" )
update "regular_expressions" set "pattern" = '\b(TNAPLUS|TNA\+|tnaplus)\b' where "name" = 'TNA+' and "pattern" = '\b(TNAPLUS|TNA+(p)?|tnaplus\+)\s*\b';
-- --- END op 2369
