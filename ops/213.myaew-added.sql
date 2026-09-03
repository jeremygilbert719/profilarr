-- @operation: export
-- @entity: batch
-- @name: MyAEW added
-- @exportedAt: 2026-09-03T06:06:10.320Z
-- @opIds: 2344, 2345, 2346, 2347, 2348, 2349, 2350, 2351, 2352

-- --- BEGIN op 2344 ( create regular_expression "MyAEW" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MyAEW', '\bPCOK\b|\bPeacock[ ._-]WEB[ ._-]?(DL|RIP)?\b', 'Peacock is an American over-the-top subscription streaming service owned and operated by Peacock TV, LLC, a subsidiary of NBCUniversal Media Group. The service primarily features series and film content from NBCUniversal studios and other third-party content providers (such as WWE and Hallmark Channel).', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MyAEW', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MyAEW', 'WEB-DL');
-- --- END op 2344

-- --- BEGIN op 2345 ( update regular_expression "MyAEW" )
update "regular_expressions" set "pattern" = '\bMYAEW\b|\bMyAEW[ ._-]WEB[ ._-]?(DL|RIP)?\b' where "name" = 'MyAEW' and "pattern" = '\bPCOK\b|\bPeacock[ ._-]WEB[ ._-]?(DL|RIP)?\b';
-- --- END op 2345

-- --- BEGIN op 2346 ( create custom_format "MyAEW" )
insert into "custom_formats" ("name", "description") values ('MyAEW', '');
-- --- END op 2346

-- --- BEGIN op 2347 ( update custom_format "MyAEW" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'MyAEW' and "include_in_rename" = 0;
-- --- END op 2347

-- --- BEGIN op 2348 ( update custom_format "MyAEW" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('MyAEW', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('MyAEW', 'WEB-DL');
-- --- END op 2348

-- --- BEGIN op 2349 ( update custom_format "MyAEW" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MyAEW', 'MyAEW', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MyAEW', 'MyAEW', 'MyAEW');
-- --- END op 2349

-- --- BEGIN op 2350 ( update custom_format "MyAEW" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MyAEW', 'Source', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('MyAEW', 'Source', 'web_dl');
-- --- END op 2350

-- --- BEGIN op 2351 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'MyAEW', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'MyAEW'
    AND arr_type = 'radarr'
);
-- --- END op 2351

-- --- BEGIN op 2352 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'MyAEW', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'MyAEW'
    AND arr_type = 'sonarr'
);
-- --- END op 2352
