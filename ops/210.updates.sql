-- @operation: export
-- @entity: batch
-- @name: updates
-- @exportedAt: 2026-09-01T18:34:39.148Z
-- @opIds: 2041, 2042, 2043, 2044, 2045, 2046, 2047, 2048, 2049, 2050, 2051, 2052, 2053, 2054, 2055, 2056, 2057, 2058, 2059, 2060, 2061, 2062, 2063, 2064, 2065, 2066, 2067, 2068, 2069, 2070, 2071, 2072, 2073, 2074, 2075, 2076, 2077, 2078, 2079, 2080, 2081, 2082, 2083, 2084, 2085, 2086, 2087, 2088, 2089, 2090, 2091, 2092, 2093, 2094, 2095, 2096, 2097, 2098, 2099, 2100, 2101, 2102, 2103, 2104, 2105, 2106, 2107, 2108, 2109, 2110, 2111, 2112, 2113, 2114, 2115, 2116, 2117, 2118, 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2127, 2128, 2129, 2130, 2131, 2132, 2133, 2134, 2135, 2136, 2137, 2138, 2139, 2140, 2141, 2142, 2143, 2144, 2145, 2146, 2147, 2148, 2149, 2150, 2151, 2152, 2153, 2154, 2155, 2156, 2157

-- --- BEGIN op 2041 ( delete quality_profile "Movies 1080p - Personal" )
delete from "quality_profile_tags" where "quality_profile_name" = 'Movies 1080p - Personal';

delete from "quality_profile_languages" where "quality_profile_name" = 'Movies 1080p - Personal';

delete from "quality_profile_qualities" where "quality_profile_name" = 'Movies 1080p - Personal';

delete from "quality_profile_custom_formats" where "quality_profile_name" = 'Movies 1080p - Personal';

delete from "quality_groups" where "quality_profile_name" = 'Movies 1080p - Personal';

delete from "quality_profiles" where "name" = 'Movies 1080p - Personal';
-- --- END op 2041

-- --- BEGIN op 2042 ( update custom_format "1080p Bluray Preferred Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Preferred Groups', 'd3g', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Preferred Groups', 'd3g', 'd3g');
-- --- END op 2042

-- --- BEGIN op 2043 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'WEB-DL Tier 1', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'WEB-DL Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2043

-- --- BEGIN op 2044 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'WEB-DL Tier 1', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'WEB-DL Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2044

-- --- BEGIN op 2045 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 1'
  AND arr_type = 'all'
  AND score = 100;
-- --- END op 2045

-- --- BEGIN op 2046 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'WEB-DL Tier 2', 'radarr', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'WEB-DL Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2046

-- --- BEGIN op 2047 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'WEB-DL Tier 2', 'sonarr', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'WEB-DL Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2047

-- --- BEGIN op 2048 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 2'
  AND arr_type = 'all'
  AND score = 80;
-- --- END op 2048

-- --- BEGIN op 2049 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'WEB-DL Tier 3', 'radarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'WEB-DL Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2049

-- --- BEGIN op 2050 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'WEB-DL Tier 3', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'WEB-DL Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2050

-- --- BEGIN op 2051 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 3'
  AND arr_type = 'all'
  AND score = 60;
-- --- END op 2051

-- --- BEGIN op 2052 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'WEB-DL Tier 4', 'radarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'WEB-DL Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 2052

-- --- BEGIN op 2053 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'WEB-DL Tier 4', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'WEB-DL Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 2053

-- --- BEGIN op 2054 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 4'
  AND arr_type = 'all'
  AND score = 40;
-- --- END op 2054

-- --- BEGIN op 2055 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'WEB-DL Tier 5', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'WEB-DL Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 2055

-- --- BEGIN op 2056 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'WEB-DL Tier 5', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'WEB-DL Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 2056

-- --- BEGIN op 2057 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 5'
  AND arr_type = 'all'
  AND score = 20;
-- --- END op 2057

-- --- BEGIN op 2058 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 1'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 2058

-- --- BEGIN op 2059 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 1'
  AND arr_type = 'sonarr'
  AND score = 100;
-- --- END op 2059

-- --- BEGIN op 2060 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 2'
  AND arr_type = 'radarr'
  AND score = 80;
-- --- END op 2060

-- --- BEGIN op 2061 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 2'
  AND arr_type = 'sonarr'
  AND score = 80;
-- --- END op 2061

-- --- BEGIN op 2062 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 3'
  AND arr_type = 'radarr'
  AND score = 60;
-- --- END op 2062

-- --- BEGIN op 2063 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 3'
  AND arr_type = 'sonarr'
  AND score = 60;
-- --- END op 2063

-- --- BEGIN op 2064 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 4'
  AND arr_type = 'radarr'
  AND score = 40;
-- --- END op 2064

-- --- BEGIN op 2065 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 4'
  AND arr_type = 'sonarr'
  AND score = 40;
-- --- END op 2065

-- --- BEGIN op 2066 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 5'
  AND arr_type = 'radarr'
  AND score = 20;
-- --- END op 2066

-- --- BEGIN op 2067 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'WEB-DL Tier 5'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 2067

-- --- BEGIN op 2068 ( delete quality_profile "2160p Balanced" )
delete from "quality_profile_tags" where "quality_profile_name" = '2160p Balanced';

delete from "quality_profile_languages" where "quality_profile_name" = '2160p Balanced';

delete from "quality_profile_qualities" where "quality_profile_name" = '2160p Balanced';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Balanced';

delete from "quality_groups" where "quality_profile_name" = '2160p Balanced';

delete from "quality_profiles" where "name" = '2160p Balanced';
-- --- END op 2068

-- --- BEGIN op 2069 ( delete quality_profile "2160p Remux" )
delete from "quality_profile_tags" where "quality_profile_name" = '2160p Remux';

delete from "quality_profile_languages" where "quality_profile_name" = '2160p Remux';

delete from "quality_profile_qualities" where "quality_profile_name" = '2160p Remux';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Remux';

delete from "quality_groups" where "quality_profile_name" = '2160p Remux';

delete from "quality_profiles" where "name" = '2160p Remux';
-- --- END op 2069

-- --- BEGIN op 2070 ( delete quality_profile "2160p Quality" )
delete from "quality_profile_tags" where "quality_profile_name" = '2160p Quality';

delete from "quality_profile_languages" where "quality_profile_name" = '2160p Quality';

delete from "quality_profile_qualities" where "quality_profile_name" = '2160p Quality';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Quality';

delete from "quality_groups" where "quality_profile_name" = '2160p Quality';

delete from "quality_profiles" where "name" = '2160p Quality';
-- --- END op 2070

-- --- BEGIN op 2071 ( create custom_format "WEBDL" )
insert into "custom_formats" ("name", "description") values ('WEBDL', '');
-- --- END op 2071

-- --- BEGIN op 2072 ( update custom_format "WEBDL" )
insert into "tags" ("name") values ('Source') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('WEBDL', 'Source');

insert into "tags" ("name") values ('WEBDL') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('WEBDL', 'WEBDL');
-- --- END op 2072

-- --- BEGIN op 2073 ( update custom_format "WEBDL" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEBDL', 'WEB-DL', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('WEBDL', 'WEB-DL', 'web_dl');
-- --- END op 2073

-- --- BEGIN op 2074 ( update custom_format "WEBDL" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEBDL', 'WEBRip', 'source', 'all', 1, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('WEBDL', 'WEBRip', 'webrip');
-- --- END op 2074

-- --- BEGIN op 2075 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '1080p Bluray', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2075

-- --- BEGIN op 2076 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '1080p Bluray', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2076

-- --- BEGIN op 2077 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '1080p WEB-DL', 'radarr', 900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2077

-- --- BEGIN op 2078 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '1080p WEB-DL', 'sonarr', 900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2078

-- --- BEGIN op 2079 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '1080p WEBRip', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 2079

-- --- BEGIN op 2080 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '1080p WEBRip', 'sonarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 2080

-- --- BEGIN op 2081 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '576p Bluray', 'radarr', 650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2081

-- --- BEGIN op 2082 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '576p Bluray', 'sonarr', 650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2082

-- --- BEGIN op 2083 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '576p WEB-DL', 'radarr', 625
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2083

-- --- BEGIN op 2084 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '576p WEB-DL', 'sonarr', 625
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2084

-- --- BEGIN op 2085 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '720p Bluray', 'radarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2085

-- --- BEGIN op 2086 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '720p Bluray', 'sonarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2086

-- --- BEGIN op 2087 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '720p HDTV', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2087

-- --- BEGIN op 2088 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '720p HDTV', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2088

-- --- BEGIN op 2089 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '720p WEB-DL', 'radarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2089

-- --- BEGIN op 2090 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '720p WEB-DL', 'sonarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2090

-- --- BEGIN op 2091 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '720p WEBRip', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 2091

-- --- BEGIN op 2092 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '720p WEBRip', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 2092

-- --- BEGIN op 2093 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'DVD', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 2093

-- --- BEGIN op 2094 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'DVD', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 2094

-- --- BEGIN op 2095 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'SDTV', 'radarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2095

-- --- BEGIN op 2096 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'SDTV', 'sonarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2096

-- --- BEGIN op 2097 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '1080p HDTV', 'radarr', 750
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2097

-- --- BEGIN op 2098 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '1080p HDTV', 'sonarr', 750
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2098

-- --- BEGIN op 2099 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'AMZN'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 2099

-- --- BEGIN op 2100 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'AMZN'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 2100

-- --- BEGIN op 2101 ( update custom_format "Preferred WEBDL Groups" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Preferred WEBDL Groups'
  AND name = '1080p'
  AND type = 'resolution'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 2101

-- --- BEGIN op 2102 ( update custom_format "x265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x265'
	  AND name = 'avc'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 2102

-- --- BEGIN op 2103 ( update custom_format "x265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x265'
	  AND name = 'h264'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 2103

-- --- BEGIN op 2104 ( update custom_format "x265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x265'
	  AND name = 'x264'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 2104

-- --- BEGIN op 2105 ( update custom_format "x264" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x264'
	  AND name = 'HEVC'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 2105

-- --- BEGIN op 2106 ( update custom_format "x264" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x264'
	  AND name = 'h265'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 2106

-- --- BEGIN op 2107 ( update custom_format "x264" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x264'
	  AND name = 'x265'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 2107

-- --- BEGIN op 2108 ( create regular_expression "PoF" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PoF', '(?<=^|[\s.-])BMF\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PoF', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PoF', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PoF', 'Remux');
-- --- END op 2108

-- --- BEGIN op 2109 ( update regular_expression "PoF" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])PoF\b' where "name" = 'PoF' and "pattern" = '(?<=^|[\s.-])BMF\b';
-- --- END op 2109

-- --- BEGIN op 2110 ( update regular_expression "PoF" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PoF' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PoF' AND tag_name = 'Remux';
-- --- END op 2110

-- --- BEGIN op 2111 ( update custom_format "1080p Bluray Preferred Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Preferred Groups', 'PoF', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Preferred Groups', 'PoF', 'PoF');
-- --- END op 2111

-- --- BEGIN op 2112 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 10000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 2112

-- --- BEGIN op 2113 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 10000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 2113

-- --- BEGIN op 2114 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 50000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray Preferred Groups'
  AND arr_type = 'radarr'
  AND score = 5000;
-- --- END op 2114

-- --- BEGIN op 2115 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 50000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray Preferred Groups'
  AND arr_type = 'sonarr'
  AND score = 5000;
-- --- END op 2115

-- --- BEGIN op 2116 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 5000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p HDTV'
  AND arr_type = 'radarr'
  AND score = 750;
-- --- END op 2116

-- --- BEGIN op 2117 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 5000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p HDTV'
  AND arr_type = 'sonarr'
  AND score = 750;
-- --- END op 2117

-- --- BEGIN op 2118 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 8000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 2118

-- --- BEGIN op 2119 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 8000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 900;
-- --- END op 2119

-- --- BEGIN op 2120 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 6000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 800;
-- --- END op 2120

-- --- BEGIN op 2121 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 6000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 800;
-- --- END op 2121

-- --- BEGIN op 2122 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 6500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '576p Bluray'
  AND arr_type = 'radarr'
  AND score = 650;
-- --- END op 2122

-- --- BEGIN op 2123 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 6500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '576p Bluray'
  AND arr_type = 'sonarr'
  AND score = 650;
-- --- END op 2123

-- --- BEGIN op 2124 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 7000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '720p Bluray'
  AND arr_type = 'radarr'
  AND score = 700;
-- --- END op 2124

-- --- BEGIN op 2125 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 7000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '720p Bluray'
  AND arr_type = 'sonarr'
  AND score = 700;
-- --- END op 2125

-- --- BEGIN op 2126 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = -2500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'Over 4GB Size for WEBDL-1080p'
  AND arr_type = 'radarr'
  AND score = -5000;
-- --- END op 2126

-- --- BEGIN op 2127 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = -2500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'Over 4GB Size for WEBDL-1080p'
  AND arr_type = 'sonarr'
  AND score = -5000;
-- --- END op 2127

-- --- BEGIN op 2128 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 14000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 10000;
-- --- END op 2128

-- --- BEGIN op 2129 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 14000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 10000;
-- --- END op 2129

-- --- BEGIN op 2130 ( update custom_format "Preferred WEBDL Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups', 'EDITH', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups', 'EDITH', 'EDITH');
-- --- END op 2130

-- --- BEGIN op 2131 ( create regular_expression "YELLOWBiRD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('YELLOWBiRD', '(?<=^|[\s.-])AJP69\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YELLOWBiRD', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YELLOWBiRD', 'WEB-DL');
-- --- END op 2131

-- --- BEGIN op 2132 ( update regular_expression "YELLOWBiRD" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])YELLOWBiRD\b' where "name" = 'YELLOWBiRD' and "pattern" = '(?<=^|[\s.-])AJP69\b';
-- --- END op 2132

-- --- BEGIN op 2133 ( update regular_expression "YELLOWBiRD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'YELLOWBiRD' AND tag_name = 'WEB-DL';
-- --- END op 2133

-- --- BEGIN op 2134 ( update custom_format "1080p Bluray Preferred Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Preferred Groups', 'YELLOWBiRD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Preferred Groups', 'YELLOWBiRD', 'YELLOWBiRD');
-- --- END op 2134

-- --- BEGIN op 2135 ( update quality_profile "1080p Preferred Personal" )
update "quality_profiles" set "minimum_custom_format_score" = 4000 where "name" = '1080p Preferred Personal' and "minimum_custom_format_score" = 9000;
-- --- END op 2135

-- --- BEGIN op 2136 ( update custom_format "Series - Under 4GB Size for WEBDL-1080p" )
insert into "tags" ("name") values ('Preferred') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Under 4GB Size for WEBDL-1080p', 'Preferred');
-- --- END op 2136

-- --- BEGIN op 2137 ( update custom_format "Series - Under 4GB Size for WEBDL-1080p" )
update "custom_formats" set "name" = 'Series - Under 4GB Size for WEBDL-1080p' where "name" = 'Under 4GB Size for WEBDL-1080p';
-- --- END op 2137

-- --- BEGIN op 2138 ( update quality_profile "1080p Preferred Personal" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Series - Under 4GB Size for WEBDL-1080p' where "quality_profile_name" = '1080p Preferred Personal' and "custom_format_name" = 'Under 4GB Size for WEBDL-1080p' and "arr_type" = 'sonarr' and "score" = 5000;
-- --- END op 2138

-- --- BEGIN op 2139 ( update custom_format "Series - Under 4GB Size for WEBDL-1080p" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Series - Under 4GB Size for WEBDL-1080p'
	  AND name = 'Source-Bluray'
	  AND type = 'source'
	  AND arr_type = 'sonarr'
	  AND negate = 1
	  AND required = 0;
-- --- END op 2139

-- --- BEGIN op 2140 ( create custom_format "Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)" )
insert into "custom_formats" ("name", "description") values ('Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)', '');
-- --- END op 2140

-- --- BEGIN op 2141 ( update custom_format "Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)" )
update "custom_formats" set "description" = 'File Size for TV Series Under 4.1 GB for WEBDL-1080p, does not apply to bluray' where "name" = 'Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)' and "description" = '';
-- --- END op 2141

-- --- BEGIN op 2142 ( update custom_format "Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)" )
insert into "tags" ("name") values ('FileSize') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)', 'FileSize');

insert into "tags" ("name") values ('Preferred') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)', 'Preferred');

insert into "tags" ("name") values ('WEBDL-1080p') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)', 'WEBDL-1080p');
-- --- END op 2142

-- --- BEGIN op 2143 ( update custom_format "Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)', 'Size', 'size', 'sonarr', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)', 'Size', 107374182, 4402341478);
-- --- END op 2143

-- --- BEGIN op 2144 ( update custom_format "Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)', 'Source-WEBDL', 'source', 'sonarr', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)', 'Source-WEBDL', 'web_dl');
-- --- END op 2144

-- --- BEGIN op 2145 ( update custom_format "Series - Under 4GB Preferred Range for WEBDL-1080p" )
update "custom_formats" set "name" = 'Series - Under 4GB Preferred Range for WEBDL-1080p' where "name" = 'Series - Under 4GB Preferred Range for WEBDL-1080p (Copy)';
-- --- END op 2145

-- --- BEGIN op 2146 ( update custom_format "Series - Under 4GB Preferred Range for WEBDL-1080p" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Series - Under 4GB Preferred Range for WEBDL-1080p' AND condition_name = 'Size' AND min_bytes IS 107374182 AND max_bytes IS 4402341478;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Series - Under 4GB Preferred Range for WEBDL-1080p', 'Size', 1610612736, 3221225472);
-- --- END op 2146

-- --- BEGIN op 2147 ( delete custom_format "1080p Efficient TV Bluray Tier 5" )
delete from "custom_formats" where "name" = '1080p Efficient TV Bluray Tier 5';
-- --- END op 2147

-- --- BEGIN op 2148 ( delete custom_format "1080p Efficient Movie WEB Tier 3" )
delete from "custom_formats" where "name" = '1080p Efficient Movie WEB Tier 3';
-- --- END op 2148

-- --- BEGIN op 2149 ( delete custom_format "1080p Efficient Movie WEB Tier 2" )
delete from "custom_formats" where "name" = '1080p Efficient Movie WEB Tier 2';
-- --- END op 2149

-- --- BEGIN op 2150 ( update custom_format "Series - Under 4GB Size for WEBDL-1080p" )
insert into "tags" ("name") values ('Series') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Series - Under 4GB Size for WEBDL-1080p', 'Series');
-- --- END op 2150

-- --- BEGIN op 2151 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Series - Under 4GB Preferred Range for WEBDL-1080p', 'sonarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Series - Under 4GB Preferred Range for WEBDL-1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 2151

-- --- BEGIN op 2152 ( update custom_format "Series - Size Larger than 4GB Series" )
update "custom_formats" set "name" = 'Series - Size Larger than 4GB Series' where "name" = 'Size Larger than 4GB Series';
-- --- END op 2152

-- --- BEGIN op 2153 ( update quality_profile "1080p Preferred Personal" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Series - Size Larger than 4GB Series' where "quality_profile_name" = '1080p Preferred Personal' and "custom_format_name" = 'Size Larger than 4GB Series' and "arr_type" = 'sonarr' and "score" = -5000;
-- --- END op 2153

-- --- BEGIN op 2154 ( update custom_format "Series - Size Larger than 4GB WEBDL-1080p" )
update "custom_formats" set "name" = 'Series - Size Larger than 4GB WEBDL-1080p' where "name" = 'Series - Size Larger than 4GB Series';
-- --- END op 2154

-- --- BEGIN op 2155 ( update quality_profile "1080p Preferred Personal" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Series - Size Larger than 4GB WEBDL-1080p' where "quality_profile_name" = '1080p Preferred Personal' and "custom_format_name" = 'Series - Size Larger than 4GB Series' and "arr_type" = 'sonarr' and "score" = -5000;
-- --- END op 2155

-- --- BEGIN op 2156 ( update custom_format "Series - Size Larger than 4GB WEBDL-1080p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Series - Size Larger than 4GB WEBDL-1080p', 'WEB-DL', 'source', 'sonarr', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Series - Size Larger than 4GB WEBDL-1080p', 'WEB-DL', 'web_dl');
-- --- END op 2156

-- --- BEGIN op 2157 ( update custom_format "Series - Size Larger than 4GB WEBDL-1080p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Series - Size Larger than 4GB WEBDL-1080p', '1080p', 'resolution', 'sonarr', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Series - Size Larger than 4GB WEBDL-1080p', '1080p', '1080p');
-- --- END op 2157
