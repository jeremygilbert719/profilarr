-- @operation: export
-- @entity: batch
-- @name: update scoring adn rename size preference format
-- @exportedAt: 2026-10-06T04:04:27.130Z
-- @opIds: 2732, 2733, 2734, 2735, 2736, 2737, 2738, 2739, 2740, 2741, 2742, 2743, 2744, 2745, 2746, 2747, 2748, 2749, 2750, 2751, 2752, 2753, 2754, 2755, 2756, 2757

-- --- BEGIN op 2732 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 7000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'x265'
  AND arr_type = 'radarr'
  AND score = 5000;
-- --- END op 2732

-- --- BEGIN op 2733 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 7000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'x265'
  AND arr_type = 'sonarr'
  AND score = 5000;
-- --- END op 2733

-- --- BEGIN op 2734 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 2500;
-- --- END op 2734

-- --- BEGIN op 2735 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 2500;
-- --- END op 2735

-- --- BEGIN op 2736 ( update custom_format "Series - Under 4GB Preferred Range for WEBDL-1080p" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Series - Under 4GB Preferred Range for WEBDL-1080p' AND condition_name = 'Size' AND min_bytes IS 1610612736 AND max_bytes IS 3221225472;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Series - Under 4GB Preferred Range for WEBDL-1080p', 'Size', 429496730, 3221225472);
-- --- END op 2736

-- --- BEGIN op 2737 ( update custom_format "Series - Under 4GB Preferred Range for WEBDL-1080p" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Series - Under 4GB Preferred Range for WEBDL-1080p' AND condition_name = 'Size' AND min_bytes IS 429496730 AND max_bytes IS 3221225472;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Series - Under 4GB Preferred Range for WEBDL-1080p', 'Size', 322122547, 3221225472);
-- --- END op 2737

-- --- BEGIN op 2738 ( update custom_format "Series - Under 4GB Size" )
update "custom_formats" set "name" = 'Series - Under 4GB Size' where "name" = 'Series - Under 4GB Size for WEBDL-1080p';
-- --- END op 2738

-- --- BEGIN op 2739 ( update quality_profile "1080p Preferred Personal" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Series - Under 4GB Size' where "quality_profile_name" = '1080p Preferred Personal' and "custom_format_name" = 'Series - Under 4GB Size for WEBDL-1080p' and "arr_type" = 'sonarr' and "score" = 5000;
-- --- END op 2739

-- --- BEGIN op 2740 ( update quality_profile "1080p Preferred Personal (Sports)" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Series - Under 4GB Size' where "quality_profile_name" = '1080p Preferred Personal (Sports)' and "custom_format_name" = 'Series - Under 4GB Size for WEBDL-1080p' and "arr_type" = 'sonarr' and "score" = 5000;
-- --- END op 2740

-- --- BEGIN op 2741 ( update custom_format "Series - Under 4GB Size" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Series - Under 4GB Size'
	  AND name = 'Source-WEBDL'
	  AND type = 'source'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2741

-- --- BEGIN op 2742 ( update custom_format "Series - Over 4GB Size" )
update "custom_formats" set "name" = 'Series - Over 4GB Size' where "name" = 'Over 4GB Size for WEBDL-1080p';
-- --- END op 2742

-- --- BEGIN op 2743 ( update quality_profile "1080p Preferred Personal" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Series - Over 4GB Size' where "quality_profile_name" = '1080p Preferred Personal' and "custom_format_name" = 'Over 4GB Size for WEBDL-1080p' and "arr_type" = 'radarr' and "score" = -2400;

update "quality_profile_custom_formats" set "custom_format_name" = 'Series - Over 4GB Size' where "quality_profile_name" = '1080p Preferred Personal' and "custom_format_name" = 'Over 4GB Size for WEBDL-1080p' and "arr_type" = 'sonarr' and "score" = -2400;
-- --- END op 2743

-- --- BEGIN op 2744 ( update quality_profile "1080p Preferred Personal (Sports)" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Series - Over 4GB Size' where "quality_profile_name" = '1080p Preferred Personal (Sports)' and "custom_format_name" = 'Over 4GB Size for WEBDL-1080p' and "arr_type" = 'radarr' and "score" = -500;

update "quality_profile_custom_formats" set "custom_format_name" = 'Series - Over 4GB Size' where "quality_profile_name" = '1080p Preferred Personal (Sports)' and "custom_format_name" = 'Over 4GB Size for WEBDL-1080p' and "arr_type" = 'sonarr' and "score" = -500;
-- --- END op 2744

-- --- BEGIN op 2745 ( update quality_profile "2160p Preferred Personal" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Series - Over 4GB Size' where "quality_profile_name" = '2160p Preferred Personal' and "custom_format_name" = 'Over 4GB Size for WEBDL-1080p' and "arr_type" = 'radarr' and "score" = -2500;

update "quality_profile_custom_formats" set "custom_format_name" = 'Series - Over 4GB Size' where "quality_profile_name" = '2160p Preferred Personal' and "custom_format_name" = 'Over 4GB Size for WEBDL-1080p' and "arr_type" = 'sonarr' and "score" = -2500;
-- --- END op 2745

-- --- BEGIN op 2746 ( update custom_format "Series - Over 4GB Size" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Series - Over 4GB Size'
	  AND name = 'Source'
	  AND type = 'source'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2746

-- --- BEGIN op 2747 ( update custom_format "Series - Under 4GB Preferred Range for WEBDL-1080p" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Series - Under 4GB Preferred Range for WEBDL-1080p'
	  AND name = 'Source-WEBDL'
	  AND type = 'source'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2747

-- --- BEGIN op 2748 ( update custom_format "Series - Under 4GB Preferred Range for WEBDL-1080p" )
update "custom_formats" set "description" = 'File Size for TV Series Under 4.1 GB' where "name" = 'Series - Under 4GB Preferred Range for WEBDL-1080p' and "description" = 'File Size for TV Series Under 4.1 GB for WEBDL-1080p, does not apply to bluray';
-- --- END op 2748

-- --- BEGIN op 2749 ( update custom_format "Series - Under 4GB Preferred Range for WEBDL-1080p" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Series - Under 4GB Preferred Range for WEBDL-1080p' AND tag_name = 'WEBDL-1080p';
-- --- END op 2749

-- --- BEGIN op 2750 ( update custom_format "Series - Under 4GB Preferred Range" )
update "custom_formats" set "name" = 'Series - Under 4GB Preferred Range' where "name" = 'Series - Under 4GB Preferred Range for WEBDL-1080p';
-- --- END op 2750

-- --- BEGIN op 2751 ( update quality_profile "1080p Preferred Personal" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Series - Under 4GB Preferred Range' where "quality_profile_name" = '1080p Preferred Personal' and "custom_format_name" = 'Series - Under 4GB Preferred Range for WEBDL-1080p' and "arr_type" = 'sonarr' and "score" = 2500;
-- --- END op 2751

-- --- BEGIN op 2752 ( update quality_profile "1080p Preferred Personal (Sports)" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Series - Under 4GB Preferred Range' where "quality_profile_name" = '1080p Preferred Personal (Sports)' and "custom_format_name" = 'Series - Under 4GB Preferred Range for WEBDL-1080p' and "arr_type" = 'sonarr' and "score" = 2500;
-- --- END op 2752

-- --- BEGIN op 2753 ( update custom_format "Series - Under 4GB Preferred Range" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Series - Under 4GB Preferred Range' AND condition_name = 'Size' AND min_bytes IS 322122547 AND max_bytes IS 3221225472;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Series - Under 4GB Preferred Range', 'Size', 107374182, 3221225472);
-- --- END op 2753

-- --- BEGIN op 2754 ( update custom_format "Series - Under 4GB Size" )
update "custom_formats" set "description" = 'File Size for TV Series Under 4.1 GB' where "name" = 'Series - Under 4GB Size' and "description" = 'File Size for TV Series Under 4.1 GB for WEBDL-1080p, does not apply to bluray';
-- --- END op 2754

-- --- BEGIN op 2755 ( update custom_format "Series - Under 4GB Size" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Series - Under 4GB Size' AND tag_name = 'WEBDL-1080p';
-- --- END op 2755

-- --- BEGIN op 2756 ( update custom_format "Series - Over 4GB Size" )
update "custom_formats" set "description" = 'downloads should not be over 4GB for tv series' where "name" = 'Series - Over 4GB Size' and "description" = 'For WEBDL-1080p downloads should not be over 4GB for tv series. does not affect Bluray-1080p sizes only WEBDL';
-- --- END op 2756

-- --- BEGIN op 2757 ( update custom_format "Series - Over 4GB Size" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Series - Over 4GB Size' AND tag_name = 'WEBDL-1080p';
-- --- END op 2757
