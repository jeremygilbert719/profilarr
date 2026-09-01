-- @operation: export
-- @entity: batch
-- @name: updates
-- @exportedAt: 2026-09-01T19:10:20.803Z
-- @opIds: 2159, 2160, 2161, 2162, 2163, 2164, 2165, 2166, 2167, 2168, 2169, 2170, 2171, 2172, 2173, 2174, 2175, 2176, 2177, 2178, 2179, 2180, 2181, 2182, 2183, 2184, 2185, 2186, 2187, 2188, 2189, 2190, 2191, 2192, 2193, 2194, 2195, 2196, 2197, 2198, 2199, 2200, 2201, 2202, 2203, 2204, 2205, 2206, 2207, 2208, 2209, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218, 2219, 2220, 2221, 2222, 2223, 2224, 2225, 2226, 2227, 2228, 2229, 2230, 2231, 2232, 2233, 2234, 2235, 2236, 2237, 2238, 2239, 2240, 2241, 2242, 2243, 2244, 2245, 2246, 2247, 2248, 2249, 2250, 2251, 2252, 2253, 2254, 2255, 2256, 2257, 2258, 2259, 2260, 2261, 2262, 2263, 2264, 2265, 2266, 2267, 2268, 2269, 2270, 2271, 2272, 2273, 2274, 2275, 2276, 2277, 2278, 2279, 2280, 2281, 2282, 2283, 2284, 2285, 2286, 2287, 2288, 2289, 2290, 2291, 2292, 2293, 2294, 2295, 2296, 2297, 2298, 2299, 2300, 2301, 2302, 2303, 2304, 2305, 2306, 2307, 2308, 2309, 2310, 2311, 2312, 2313, 2314, 2315, 2316, 2317, 2318, 2319, 2320, 2321, 2322, 2323, 2324, 2325, 2326, 2327, 2328, 2329, 2330, 2331, 2332, 2333, 2334, 2335, 2336, 2337

-- --- BEGIN op 2159 ( update custom_format "Series - Size Larger than 4GB WEBDL-1080p" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Series - Size Larger than 4GB WEBDL-1080p'
	  AND name = 'File Size'
	  AND type = 'size'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2159

-- --- BEGIN op 2160 ( update custom_format "Series - Size Larger than 4GB WEBDL-1080p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Series - Size Larger than 4GB WEBDL-1080p', 'FileSize', 'size', 'sonarr', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Series - Size Larger than 4GB WEBDL-1080p', 'FileSize', 4456028570, NULL);
-- --- END op 2160

-- --- BEGIN op 2161 ( update custom_format "Series - Size Larger than 4GB WEBDL-1080p" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Series - Size Larger than 4GB WEBDL-1080p' AND condition_name = 'FileSize' AND min_bytes IS 4456028570 AND max_bytes IS NULL;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Series - Size Larger than 4GB WEBDL-1080p', 'FileSize', 4456028570, 10737408576323584);
-- --- END op 2161

-- --- BEGIN op 2162 ( update custom_format "Series - Size Larger than 4GB WEBDL-1080p" )
UPDATE custom_format_conditions
SET required = 0
WHERE custom_format_name = 'Series - Size Larger than 4GB WEBDL-1080p'
  AND name = '1080p'
  AND type = 'resolution'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 1;
-- --- END op 2162

-- --- BEGIN op 2163 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'Series - Size Larger than 4GB WEBDL-1080p'
  AND arr_type = 'sonarr'
  AND score = -5000;
-- --- END op 2163

-- --- BEGIN op 2164 ( delete custom_format "Series - Size Larger than 4GB WEBDL-1080p" )
delete from "custom_formats" where "name" = 'Series - Size Larger than 4GB WEBDL-1080p';
-- --- END op 2164

-- --- BEGIN op 2165 ( create custom_format "Series - Over 4GB for WEBDL-1080p" )
insert into "custom_formats" ("name", "description") values ('Series - Over 4GB for WEBDL-1080p', '');
-- --- END op 2165

-- --- BEGIN op 2166 ( update custom_format "Series - Over 4GB for WEBDL-1080p" )
insert into "tags" ("name") values ('FileSize') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Series - Over 4GB for WEBDL-1080p', 'FileSize');

insert into "tags" ("name") values ('WEBDL-1080p') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Series - Over 4GB for WEBDL-1080p', 'WEBDL-1080p');
-- --- END op 2166

-- --- BEGIN op 2167 ( update custom_format "Series - Over 4GB for WEBDL-1080p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Series - Over 4GB for WEBDL-1080p', 'WEB-DL', 'source', 'sonarr', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Series - Over 4GB for WEBDL-1080p', 'WEB-DL', 'web_dl');
-- --- END op 2167

-- --- BEGIN op 2168 ( update custom_format "Series - Over 4GB for WEBDL-1080p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Series - Over 4GB for WEBDL-1080p', '1080p', 'resolution', 'sonarr', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Series - Over 4GB for WEBDL-1080p', '1080p', '1080p');
-- --- END op 2168

-- --- BEGIN op 2169 ( update custom_format "Series - Over 4GB for WEBDL-1080p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Series - Over 4GB for WEBDL-1080p', 'size', 'size', 'sonarr', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Series - Over 4GB for WEBDL-1080p', 'size', 4294967296, NULL);
-- --- END op 2169

-- --- BEGIN op 2170 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Series - Over 4GB for WEBDL-1080p', 'sonarr', -5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Series - Over 4GB for WEBDL-1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 2170

-- --- BEGIN op 2171 ( update custom_format "Series - Over 4GB for WEBDL-1080p" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Series - Over 4GB for WEBDL-1080p' AND condition_name = 'size' AND min_bytes IS 4294967296 AND max_bytes IS NULL;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Series - Over 4GB for WEBDL-1080p', 'size', 4294967296, 34359738368);
-- --- END op 2171

-- --- BEGIN op 2172 ( create quality_profile "1080p Preferred Personal (Sports)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('1080p Preferred Personal (Sports)', '1080p Preferred Personal

Average Movie Sizes ~ 4 to 7gb per Movie
Average TV Sizes ~ 500mb to 4.1 gb per Episode
Preferred TV Release groups : 
         Bluray :  iVy, SiQ, PoF, d3g
         WEBDL : JermBox, FLUX, EDITH, NTb, PlayWEB, DBTV, FUZZER, BiGDOC, CBFM, 
Preferred Movie Release Groups:
         Bluray :  iVy
         WEBDL : JermBox
Preferred Sports Groups : 
         Bluray : 
         WEBDL : JermBox, HEEL', 1, 0, 0, 1);

insert into "tags" ("name") values ('1080p Quality') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Preferred Personal (Sports)', '1080p Quality');

insert into "tags" ("name") values ('Quality Profile') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Preferred Personal (Sports)', 'Quality Profile');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Preferred Personal (Sports)', '1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '1080p', 'Bluray-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '1080p', 'WEBDL-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '1080p', 'WEBRip-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '1080p', 'Remux-1080p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '1080p', 'HDTV-1080p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred Personal (Sports)', NULL, '1080p', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Preferred Personal (Sports)', '720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '720p', 'Bluray-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '720p', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '720p', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '720p', 'HDTV-720p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred Personal (Sports)', NULL, '720p', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Preferred Personal (Sports)', '2160p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '2160p', 'Bluray-2160p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '2160p', 'WEBDL-2160p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '2160p', 'Remux-2160p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '2160p', 'WEBRip-2160p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', '2160p', 'HDTV-2160p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred Personal (Sports)', NULL, '2160p', 2, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Preferred Personal (Sports)', 'Standard');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Standard', 'Bluray-576p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Standard', 'Bluray-480p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Standard', 'WEBDL-480p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Standard', 'WEBRip-480p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Standard', 'HDTV-480p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Standard', 'DVD-R', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Standard', 'DVD', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Standard', 'SDTV', 7);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred Personal (Sports)', NULL, 'Standard', 3, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Preferred Personal (Sports)', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred Personal (Sports)', NULL, 'Pre-releases', 4, 0, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Preferred Personal (Sports)', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred Personal (Sports)', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred Personal (Sports)', NULL, 'Unwanted', 5, 0, 0);
-- --- END op 2172

-- --- BEGIN op 2173 ( update quality_profile "1080p Preferred Personal (Sports)" )
update "quality_profiles" set "minimum_custom_format_score" = 4000 where "name" = '1080p Preferred Personal (Sports)' and "minimum_custom_format_score" = 0;
-- --- END op 2173

-- --- BEGIN op 2174 ( update quality_profile "1080p Preferred Personal (Sports)" )
update "quality_profiles" set "upgrade_until_score" = 1000000 where "name" = '1080p Preferred Personal (Sports)' and "upgrade_until_score" = 0;
-- --- END op 2174

-- --- BEGIN op 2175 ( update quality_profile "1080p Preferred Personal (Sports)" )
update "quality_profiles" set "upgrade_score_increment" = 100 where "name" = '1080p Preferred Personal (Sports)' and "upgrade_score_increment" = 1;
-- --- END op 2175

-- --- BEGIN op 2176 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '1080p Bluray', 'radarr', 14000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2176

-- --- BEGIN op 2177 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '1080p Bluray', 'sonarr', 14000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2177

-- --- BEGIN op 2178 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '1080p Bluray Preferred Groups', 'radarr', 50000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '1080p Bluray Preferred Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2178

-- --- BEGIN op 2179 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '1080p Bluray Preferred Groups', 'sonarr', 50000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '1080p Bluray Preferred Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2179

-- --- BEGIN op 2180 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '1080p HDTV', 'radarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2180

-- --- BEGIN op 2181 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '1080p HDTV', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2181

-- --- BEGIN op 2182 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '1080p TV Trash Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '1080p TV Trash Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2182

-- --- BEGIN op 2183 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '1080p TV Trash Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '1080p TV Trash Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2183

-- --- BEGIN op 2184 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '1080p WEB-DL', 'radarr', 8000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2184

-- --- BEGIN op 2185 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '1080p WEB-DL', 'sonarr', 8000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2185

-- --- BEGIN op 2186 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '1080p WEBRip', 'radarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 2186

-- --- BEGIN op 2187 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '1080p WEBRip', 'sonarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 2187

-- --- BEGIN op 2188 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '576p Bluray', 'radarr', 6500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2188

-- --- BEGIN op 2189 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '576p Bluray', 'sonarr', 6500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2189

-- --- BEGIN op 2190 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '576p WEB-DL', 'radarr', 625
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2190

-- --- BEGIN op 2191 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '576p WEB-DL', 'sonarr', 625
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2191

-- --- BEGIN op 2192 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '720p Bluray', 'radarr', 7000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2192

-- --- BEGIN op 2193 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '720p Bluray', 'sonarr', 7000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2193

-- --- BEGIN op 2194 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '720p HDTV', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2194

-- --- BEGIN op 2195 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '720p HDTV', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2195

-- --- BEGIN op 2196 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '720p WEB-DL', 'radarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2196

-- --- BEGIN op 2197 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '720p WEB-DL', 'sonarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2197

-- --- BEGIN op 2198 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '720p WEBRip', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 2198

-- --- BEGIN op 2199 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', '720p WEBRip', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 2199

-- --- BEGIN op 2200 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'AAC', 'radarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'AAC'
    AND arr_type = 'radarr'
);
-- --- END op 2200

-- --- BEGIN op 2201 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'AAC', 'sonarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'AAC'
    AND arr_type = 'sonarr'
);
-- --- END op 2201

-- --- BEGIN op 2202 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'AMZN', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 2202

-- --- BEGIN op 2203 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'AMZN', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 2203

-- --- BEGIN op 2204 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'ATVP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 2204

-- --- BEGIN op 2205 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'ATVP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 2205

-- --- BEGIN op 2206 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'AV1', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'AV1'
    AND arr_type = 'radarr'
);
-- --- END op 2206

-- --- BEGIN op 2207 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'AV1', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'AV1'
    AND arr_type = 'sonarr'
);
-- --- END op 2207

-- --- BEGIN op 2208 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Atmos', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'radarr'
);
-- --- END op 2208

-- --- BEGIN op 2209 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Atmos', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'sonarr'
);
-- --- END op 2209

-- --- BEGIN op 2210 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'B&W', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 2210

-- --- BEGIN op 2211 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'B&W', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'B&W'
    AND arr_type = 'sonarr'
);
-- --- END op 2211

-- --- BEGIN op 2212 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'BCORE', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 2212

-- --- BEGIN op 2213 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'BCORE', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'sonarr'
);
-- --- END op 2213

-- --- BEGIN op 2214 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2214

-- --- BEGIN op 2215 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2215

-- --- BEGIN op 2216 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Banned Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2216

-- --- BEGIN op 2217 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Banned Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2217

-- --- BEGIN op 2218 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Banned Remux', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Banned Remux'
    AND arr_type = 'radarr'
);
-- --- END op 2218

-- --- BEGIN op 2219 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Banned Remux', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Banned Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 2219

-- --- BEGIN op 2220 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Banned UHD Bluray', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2220

-- --- BEGIN op 2221 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Banned UHD Bluray', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2221

-- --- BEGIN op 2222 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Better Theatricals', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Better Theatricals'
    AND arr_type = 'radarr'
);
-- --- END op 2222

-- --- BEGIN op 2223 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'CR', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'CR'
    AND arr_type = 'radarr'
);
-- --- END op 2223

-- --- BEGIN op 2224 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'CR', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'CR'
    AND arr_type = 'sonarr'
);
-- --- END op 2224

-- --- BEGIN op 2225 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'CRAV', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'radarr'
);
-- --- END op 2225

-- --- BEGIN op 2226 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'CRAV', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'sonarr'
);
-- --- END op 2226

-- --- BEGIN op 2227 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DSNP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 2227

-- --- BEGIN op 2228 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DSNP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 2228

-- --- BEGIN op 2229 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DTS', 'radarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DTS'
    AND arr_type = 'radarr'
);
-- --- END op 2229

-- --- BEGIN op 2230 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DTS', 'sonarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DTS'
    AND arr_type = 'sonarr'
);
-- --- END op 2230

-- --- BEGIN op 2231 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DTS-ES', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'radarr'
);
-- --- END op 2231

-- --- BEGIN op 2232 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DTS-ES', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'sonarr'
);
-- --- END op 2232

-- --- BEGIN op 2233 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DTS-HD HRA', 'radarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'radarr'
);
-- --- END op 2233

-- --- BEGIN op 2234 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DTS-HD HRA', 'sonarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'sonarr'
);
-- --- END op 2234

-- --- BEGIN op 2235 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DTS-HD MA', 'radarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'radarr'
);
-- --- END op 2235

-- --- BEGIN op 2236 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DTS-HD MA', 'sonarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'sonarr'
);
-- --- END op 2236

-- --- BEGIN op 2237 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DTS-X', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'radarr'
);
-- --- END op 2237

-- --- BEGIN op 2238 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DTS-X', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'sonarr'
);
-- --- END op 2238

-- --- BEGIN op 2239 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DVD', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 2239

-- --- BEGIN op 2240 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'DVD', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 2240

-- --- BEGIN op 2241 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Dolby Atmos', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'radarr'
);
-- --- END op 2241

-- --- BEGIN op 2242 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Dolby Atmos', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'sonarr'
);
-- --- END op 2242

-- --- BEGIN op 2243 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Dolby Digital', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'radarr'
);
-- --- END op 2243

-- --- BEGIN op 2244 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Dolby Digital', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'sonarr'
);
-- --- END op 2244

-- --- BEGIN op 2245 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Dolby Digital +', 'radarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'radarr'
);
-- --- END op 2245

-- --- BEGIN op 2246 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Dolby Digital +', 'sonarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'sonarr'
);
-- --- END op 2246

-- --- BEGIN op 2247 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Dolby Vision', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'radarr'
);
-- --- END op 2247

-- --- BEGIN op 2248 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Dolby Vision', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'sonarr'
);
-- --- END op 2248

-- --- BEGIN op 2249 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Dolby Vision (Without Fallback)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'radarr'
);
-- --- END op 2249

-- --- BEGIN op 2250 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Dolby Vision (Without Fallback)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'sonarr'
);
-- --- END op 2250

-- --- BEGIN op 2251 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 2251

-- --- BEGIN op 2252 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 2252

-- --- BEGIN op 2253 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'FLAC', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'radarr'
);
-- --- END op 2253

-- --- BEGIN op 2254 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'FLAC', 'sonarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'sonarr'
);
-- --- END op 2254

-- --- BEGIN op 2255 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'FLUX', 'radarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'FLUX'
    AND arr_type = 'radarr'
);
-- --- END op 2255

-- --- BEGIN op 2256 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'FLUX', 'sonarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'FLUX'
    AND arr_type = 'sonarr'
);
-- --- END op 2256

-- --- BEGIN op 2257 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Full Disc', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'radarr'
);
-- --- END op 2257

-- --- BEGIN op 2258 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Full Disc', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'sonarr'
);
-- --- END op 2258

-- --- BEGIN op 2259 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'German DL', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'German DL'
    AND arr_type = 'radarr'
);
-- --- END op 2259

-- --- BEGIN op 2260 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'German DL', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'German DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2260

-- --- BEGIN op 2261 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'HDR', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'HDR'
    AND arr_type = 'radarr'
);
-- --- END op 2261

-- --- BEGIN op 2262 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'HDR', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'HDR'
    AND arr_type = 'sonarr'
);
-- --- END op 2262

-- --- BEGIN op 2263 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'HDR10+', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'radarr'
);
-- --- END op 2263

-- --- BEGIN op 2264 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'HDR10+', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'sonarr'
);
-- --- END op 2264

-- --- BEGIN op 2265 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'HEEL', 'radarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'HEEL'
    AND arr_type = 'radarr'
);
-- --- END op 2265

-- --- BEGIN op 2266 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'HEEL', 'sonarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'HEEL'
    AND arr_type = 'sonarr'
);
-- --- END op 2266

-- --- BEGIN op 2267 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'HMAX', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 2267

-- --- BEGIN op 2268 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'HMAX', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2268

-- --- BEGIN op 2269 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'HULU', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'HULU'
    AND arr_type = 'radarr'
);
-- --- END op 2269

-- --- BEGIN op 2270 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'HULU', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'HULU'
    AND arr_type = 'sonarr'
);
-- --- END op 2270

-- --- BEGIN op 2271 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'IMAX', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'IMAX'
    AND arr_type = 'radarr'
);
-- --- END op 2271

-- --- BEGIN op 2272 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Ivy', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Ivy'
    AND arr_type = 'radarr'
);
-- --- END op 2272

-- --- BEGIN op 2273 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Ivy', 'sonarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Ivy'
    AND arr_type = 'sonarr'
);
-- --- END op 2273

-- --- BEGIN op 2274 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'JermBox', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'JermBox'
    AND arr_type = 'radarr'
);
-- --- END op 2274

-- --- BEGIN op 2275 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'JermBox', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'JermBox'
    AND arr_type = 'sonarr'
);
-- --- END op 2275

-- --- BEGIN op 2276 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'MA', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 2276

-- --- BEGIN op 2277 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'MAX', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 2277

-- --- BEGIN op 2278 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'MAX', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2278

-- --- BEGIN op 2279 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Movies Anywhere Enhancement', 'radarr', -3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Movies Anywhere Enhancement'
    AND arr_type = 'radarr'
);
-- --- END op 2279

-- --- BEGIN op 2280 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'NF', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 2280

-- --- BEGIN op 2281 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'NF', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 2281

-- --- BEGIN op 2282 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'NJPWWorld', 'radarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'NJPWWorld'
    AND arr_type = 'radarr'
);
-- --- END op 2282

-- --- BEGIN op 2283 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'NJPWWorld', 'sonarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'NJPWWorld'
    AND arr_type = 'sonarr'
);
-- --- END op 2283

-- --- BEGIN op 2284 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 2284

-- --- BEGIN op 2285 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 2285

-- --- BEGIN op 2286 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Opus', 'radarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Opus'
    AND arr_type = 'radarr'
);
-- --- END op 2286

-- --- BEGIN op 2287 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Opus', 'sonarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Opus'
    AND arr_type = 'sonarr'
);
-- --- END op 2287

-- --- BEGIN op 2288 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Over 4GB Size for WEBDL-1080p', 'radarr', -2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Over 4GB Size for WEBDL-1080p'
    AND arr_type = 'radarr'
);
-- --- END op 2288

-- --- BEGIN op 2289 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Over 4GB Size for WEBDL-1080p', 'sonarr', -2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Over 4GB Size for WEBDL-1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 2289

-- --- BEGIN op 2290 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Over 7GB File Size', 'radarr', -5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Over 7GB File Size'
    AND arr_type = 'radarr'
);
-- --- END op 2290

-- --- BEGIN op 2291 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'PCM', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'PCM'
    AND arr_type = 'radarr'
);
-- --- END op 2291

-- --- BEGIN op 2292 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'PCM', 'sonarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'PCM'
    AND arr_type = 'sonarr'
);
-- --- END op 2292

-- --- BEGIN op 2293 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'PCOK', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'radarr'
);
-- --- END op 2293

-- --- BEGIN op 2294 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'PCOK', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'sonarr'
);
-- --- END op 2294

-- --- BEGIN op 2295 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'PMTP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'radarr'
);
-- --- END op 2295

-- --- BEGIN op 2296 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'PMTP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'sonarr'
);
-- --- END op 2296

-- --- BEGIN op 2297 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Preferred WEBDL Groups', 'radarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Preferred WEBDL Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2297

-- --- BEGIN op 2298 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Preferred WEBDL Groups', 'sonarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Preferred WEBDL Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2298

-- --- BEGIN op 2299 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'ROKU', 'radarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'radarr'
);
-- --- END op 2299

-- --- BEGIN op 2300 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'ROKU', 'sonarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'sonarr'
);
-- --- END op 2300

-- --- BEGIN op 2301 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Remux', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Remux'
    AND arr_type = 'radarr'
);
-- --- END op 2301

-- --- BEGIN op 2302 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Remux', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 2302

-- --- BEGIN op 2303 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'SDTV', 'radarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2303

-- --- BEGIN op 2304 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'SDTV', 'sonarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2304

-- --- BEGIN op 2305 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'SHO', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'SHO'
    AND arr_type = 'radarr'
);
-- --- END op 2305

-- --- BEGIN op 2306 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'SHO', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'SHO'
    AND arr_type = 'sonarr'
);
-- --- END op 2306

-- --- BEGIN op 2307 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'SKST', 'radarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 2307

-- --- BEGIN op 2308 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'SKST', 'sonarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 2308

-- --- BEGIN op 2309 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'STAN', 'radarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'STAN'
    AND arr_type = 'radarr'
);
-- --- END op 2309

-- --- BEGIN op 2310 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'STAN', 'sonarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'STAN'
    AND arr_type = 'sonarr'
);
-- --- END op 2310

-- --- BEGIN op 2311 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Season Pack', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 2311

-- --- BEGIN op 2312 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Series - Over 4GB for WEBDL-1080p', 'sonarr', -5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Series - Over 4GB for WEBDL-1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 2312

-- --- BEGIN op 2313 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Series - Under 4GB Preferred Range for WEBDL-1080p', 'sonarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Series - Under 4GB Preferred Range for WEBDL-1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 2313

-- --- BEGIN op 2314 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Series - Under 4GB Size for WEBDL-1080p', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Series - Under 4GB Size for WEBDL-1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 2314

-- --- BEGIN op 2315 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Special Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 2315

-- --- BEGIN op 2316 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'TNA+', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'TNA+'
    AND arr_type = 'radarr'
);
-- --- END op 2316

-- --- BEGIN op 2317 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'TNA+', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'TNA+'
    AND arr_type = 'sonarr'
);
-- --- END op 2317

-- --- BEGIN op 2318 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Theatrical', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Theatrical'
    AND arr_type = 'radarr'
);
-- --- END op 2318

-- --- BEGIN op 2319 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'TrueHD', 'radarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'radarr'
);
-- --- END op 2319

-- --- BEGIN op 2320 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'TrueHD', 'sonarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'sonarr'
);
-- --- END op 2320

-- --- BEGIN op 2321 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Under 7GB File Size', 'radarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Under 7GB File Size'
    AND arr_type = 'radarr'
);
-- --- END op 2321

-- --- BEGIN op 2322 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 2322

-- --- BEGIN op 2323 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 2323

-- --- BEGIN op 2324 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'WWENetwork', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'WWENetwork'
    AND arr_type = 'radarr'
);
-- --- END op 2324

-- --- BEGIN op 2325 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'WWENetwork', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'WWENetwork'
    AND arr_type = 'sonarr'
);
-- --- END op 2325

-- --- BEGIN op 2326 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'WeTV', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'WeTV'
    AND arr_type = 'radarr'
);
-- --- END op 2326

-- --- BEGIN op 2327 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'WeTV', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'WeTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2327

-- --- BEGIN op 2328 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'YouTube', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'YouTube'
    AND arr_type = 'radarr'
);
-- --- END op 2328

-- --- BEGIN op 2329 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'YouTube', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'YouTube'
    AND arr_type = 'sonarr'
);
-- --- END op 2329

-- --- BEGIN op 2330 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'iT', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 2330

-- --- BEGIN op 2331 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'iT', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'iT'
    AND arr_type = 'sonarr'
);
-- --- END op 2331

-- --- BEGIN op 2332 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'x264', 'radarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'x264'
    AND arr_type = 'radarr'
);
-- --- END op 2332

-- --- BEGIN op 2333 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'x264', 'sonarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'x264'
    AND arr_type = 'sonarr'
);
-- --- END op 2333

-- --- BEGIN op 2334 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'x265', 'radarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'x265'
    AND arr_type = 'radarr'
);
-- --- END op 2334

-- --- BEGIN op 2335 ( update quality_profile "1080p Preferred Personal (Sports)" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal (Sports)', 'x265', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
    AND custom_format_name = 'x265'
    AND arr_type = 'sonarr'
);
-- --- END op 2335

-- --- BEGIN op 2336 ( update quality_profile "1080p Preferred Personal (Sports)" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
  AND custom_format_name = 'Series - Over 4GB for WEBDL-1080p'
  AND arr_type = 'sonarr'
  AND score = -5000;
-- --- END op 2336

-- --- BEGIN op 2337 ( update quality_profile "1080p Preferred Personal (Sports)" )
UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
  AND quality_group_name = 'Unwanted'
  AND quality_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 2337
