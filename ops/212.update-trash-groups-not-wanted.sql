-- @operation: export
-- @entity: batch
-- @name: update trash groups not wanted
-- @exportedAt: 2026-09-02T14:42:45.126Z
-- @opIds: 2339, 2340, 2341, 2342

-- --- BEGIN op 2339 ( update custom_format "1080p TV Trash Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p TV Trash Groups'
	  AND name = '1080p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2339

-- --- BEGIN op 2340 ( update custom_format "1080p TV Trash Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p TV Trash Groups'
	  AND name = 'Bluray'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2340

-- --- BEGIN op 2341 ( update custom_format "1080p TV Trash Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p TV Trash Groups'
	  AND name = 'WEB-DL'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2341

-- --- BEGIN op 2342 ( update custom_format "1080p TV Trash Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p TV Trash Groups'
	  AND name = 'WEBRiP'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2342
