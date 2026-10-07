-- @operation: export
-- @entity: batch
-- @name: adding TyHD
-- @exportedAt: 2026-10-07T16:00:22.825Z
-- @opIds: 2759, 2760, 2761, 2762, 2763, 2764, 2765, 2766, 2767

-- --- BEGIN op 2759 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Preferred Personal', 'WEBRip-1080p', NULL, 1, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND quality_name = 'WEBRip-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Preferred Personal', 'WEBRip-720p', NULL, 3, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND quality_name = 'WEBRip-720p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = '720p'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = '720p') = 4
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = '720p'
      AND quality_name NOT IN ('Bluray-720p', 'WEBDL-720p', 'WEBRip-720p', 'HDTV-720p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = '720p'
        AND NOT (
          (quality_name = 'Bluray-720p'
        AND position = 0)
      OR (quality_name = 'WEBDL-720p'
        AND position = 1)
      OR (quality_name = 'WEBRip-720p'
        AND position = 2)
      OR (quality_name = 'HDTV-720p'
        AND position = 3)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = '720p'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Preferred Personal'
      AND quality_group_name = '720p'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p Preferred Personal' AS quality_profile_name, '720p' AS quality_group_name, 'Bluray-720p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p Preferred Personal' AS quality_profile_name, '720p' AS quality_group_name, 'WEBDL-720p' AS quality_name, 1 AS position
UNION ALL
SELECT '1080p Preferred Personal' AS quality_profile_name, '720p' AS quality_group_name, 'HDTV-720p' AS quality_name, 2 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = '2160p'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = 'Standard'
  AND quality_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = 'Pre-releases'
  AND quality_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = 'Unwanted'
  AND quality_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = '1080p'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = '1080p') = 5
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = '1080p'
      AND quality_name NOT IN ('Bluray-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'Remux-1080p', 'HDTV-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = '1080p'
        AND NOT (
          (quality_name = 'Bluray-1080p'
        AND position = 0)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 1)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 2)
      OR (quality_name = 'Remux-1080p'
        AND position = 3)
      OR (quality_name = 'HDTV-1080p'
        AND position = 4)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Preferred Personal'
  AND quality_group_name = '1080p'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Preferred Personal'
      AND quality_group_name = '1080p'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p Preferred Personal' AS quality_profile_name, '1080p' AS quality_group_name, 'Bluray-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p Preferred Personal' AS quality_profile_name, '1080p' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT '1080p Preferred Personal' AS quality_profile_name, '1080p' AS quality_group_name, 'Remux-1080p' AS quality_name, 2 AS position
UNION ALL
SELECT '1080p Preferred Personal' AS quality_profile_name, '1080p' AS quality_group_name, 'HDTV-1080p' AS quality_name, 3 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2759

-- --- BEGIN op 2760 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 2760

-- --- BEGIN op 2761 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 2761

-- --- BEGIN op 2762 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 2762

-- --- BEGIN op 2763 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 100;
-- --- END op 2763

-- --- BEGIN op 2764 ( create regular_expression "TyHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TyHD', '(?<=^|[\s.-])JermBox\b', 'Matches "JermBox" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TyHD', 'Release Group');
-- --- END op 2764

-- --- BEGIN op 2765 ( update regular_expression "TyHD" )
update "regular_expressions" set "description" = 'Matches "TyHD" when preceded by whitespace, a hyphen or dot' where "name" = 'TyHD' and "description" = 'Matches "JermBox" when preceded by whitespace, a hyphen or dot';
-- --- END op 2765

-- --- BEGIN op 2766 ( update regular_expression "TyHD" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])TyHD\b' where "name" = 'TyHD' and "pattern" = '(?<=^|[\s.-])JermBox\b';
-- --- END op 2766

-- --- BEGIN op 2767 ( update custom_format "Preferred WEBDL Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups', 'TyHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups', 'TyHD', 'TyHD');
-- --- END op 2767
