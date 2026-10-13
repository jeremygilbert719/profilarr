-- @operation: export
-- @entity: batch
-- @name: udpdates
-- @exportedAt: 2026-10-13T19:37:34.806Z
-- @opIds: 2769, 2770, 2771

-- --- BEGIN op 2769 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'YTS'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'YTS' AND regular_expression_name = 'YTS';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'YTS', 'YTS');
-- --- END op 2769

-- --- BEGIN op 2770 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Over 7GB File Size', 'sonarr', -5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Over 7GB File Size'
    AND arr_type = 'sonarr'
);
-- --- END op 2770

-- --- BEGIN op 2771 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'Series - Over 4GB Size'
  AND arr_type = 'radarr'
  AND score = -2400;
-- --- END op 2771
