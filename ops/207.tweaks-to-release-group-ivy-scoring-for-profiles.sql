-- @operation: export
-- @entity: batch
-- @name: tweaks to release group iVy scoring for profiles
-- @exportedAt: 2026-08-27T21:28:24.149Z
-- @opIds: 1166, 1167, 1168, 1169, 1170, 1171, 1172

-- --- BEGIN op 1166 ( create custom_format "Ivy" )
insert into "custom_formats" ("name", "description") values ('Ivy', '');
-- --- END op 1166

-- --- BEGIN op 1167 ( update custom_format "Ivy" )
update "custom_formats" set "description" = 'Release group Ivy' where "name" = 'Ivy' and "description" = '';
-- --- END op 1167

-- --- BEGIN op 1168 ( update custom_format "Ivy" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Ivy', 'Release Group', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Ivy', 'Release Group', 'iVy');
-- --- END op 1168

-- --- BEGIN op 1169 ( update custom_format "Ivy" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Ivy', 'Resolution', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Ivy', 'Resolution', '1080p');
-- --- END op 1169

-- --- BEGIN op 1170 ( update custom_format "Ivy" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Ivy', 'Source', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Ivy', 'Source', 'bluray');
-- --- END op 1170

-- --- BEGIN op 1171 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Ivy', 'sonarr', 450
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Ivy'
    AND arr_type = 'sonarr'
);
-- --- END op 1171

-- --- BEGIN op 1172 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Ivy', 'radarr', 450
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Ivy'
    AND arr_type = 'radarr'
);
-- --- END op 1172
