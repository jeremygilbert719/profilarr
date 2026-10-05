-- @operation: export
-- @entity: batch
-- @name: lower score for webrips
-- @exportedAt: 2026-10-05T01:00:02.074Z
-- @opIds: 2727, 2728, 2729, 2730

-- --- BEGIN op 2727 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 2500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 4500;
-- --- END op 2727

-- --- BEGIN op 2728 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 2500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 4500;
-- --- END op 2728

-- --- BEGIN op 2729 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 2729

-- --- BEGIN op 2730 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 2730
