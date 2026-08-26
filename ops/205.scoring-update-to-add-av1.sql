-- @operation: export
-- @entity: batch
-- @name: scoring update to add av1
-- @exportedAt: 2026-08-26T05:47:06.098Z
-- @opIds: 1147, 1148, 1149

-- --- BEGIN op 1147 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'AV1', 'sonarr', 10075
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'AV1'
    AND arr_type = 'sonarr'
);
-- --- END op 1147

-- --- BEGIN op 1148 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'AV1', 'radarr', 10075
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'AV1'
    AND arr_type = 'radarr'
);
-- --- END op 1148

-- --- BEGIN op 1149 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'AV1', 'sonarr', 10075
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'AV1'
    AND arr_type = 'sonarr'
);
-- --- END op 1149
