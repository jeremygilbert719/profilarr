-- @operation: export
-- @entity: batch
-- @name: preferred profile created
-- @exportedAt: 2026-08-31T05:56:37.870Z
-- @opIds: 1946, 1947, 1948, 1949, 1950, 1951, 1952, 1953, 1954, 1955, 1956, 1957, 1958, 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039

-- --- BEGIN op 1946 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'x264', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'x264', 'x264');
-- --- END op 1946

-- --- BEGIN op 1947 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'avc', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'avc', 'AVC');
-- --- END op 1947

-- --- BEGIN op 1948 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'h264', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'h264', 'h264');
-- --- END op 1948

-- --- BEGIN op 1949 ( update custom_format "h264|x264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('h264|x264', 'x264', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('h264|x264', 'x264', 'x264');
-- --- END op 1949

-- --- BEGIN op 1950 ( update custom_format "h264|x264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('h264|x264', 'h264', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('h264|x264', 'h264', 'h264');
-- --- END op 1950

-- --- BEGIN op 1951 ( update custom_format "h264|x264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('h264|x264', 'avc', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('h264|x264', 'avc', 'AVC');
-- --- END op 1951

-- --- BEGIN op 1952 ( update custom_format "h264|x264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('h264|x264', 'x265', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('h264|x264', 'x265', 'x265');
-- --- END op 1952

-- --- BEGIN op 1953 ( update custom_format "h264|x264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('h264|x264', 'HEVC', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('h264|x264', 'HEVC', 'HEVC');
-- --- END op 1953

-- --- BEGIN op 1954 ( update custom_format "h264|x264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('h264|x264', 'h265', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('h264|x264', 'h265', 'h265');
-- --- END op 1954

-- --- BEGIN op 1955 ( update custom_format "x264" )
update "custom_formats" set "name" = 'x264' where "name" = 'h264|x264';
-- --- END op 1955

-- --- BEGIN op 1956 ( update quality_profile "TV Series 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'x264' where "quality_profile_name" = 'TV Series 1080p' and "custom_format_name" = 'h264|x264' and "arr_type" = 'sonarr' and "score" = 5000;
-- --- END op 1956

-- --- BEGIN op 1957 ( update quality_profile "Movies 1080p - Personal" )
update "quality_profile_custom_formats" set "custom_format_name" = 'x264' where "quality_profile_name" = 'Movies 1080p - Personal' and "custom_format_name" = 'h264|x264' and "arr_type" = 'radarr' and "score" = 5000;
-- --- END op 1957

-- --- BEGIN op 1958 ( update quality_profile "Sports Series 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'x264' where "quality_profile_name" = 'Sports Series 1080p' and "custom_format_name" = 'h264|x264' and "arr_type" = 'sonarr' and "score" = 5000;
-- --- END op 1958

-- --- BEGIN op 1959 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'x264', 'radarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'x264'
    AND arr_type = 'radarr'
);
-- --- END op 1959

-- --- BEGIN op 1960 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'x264', 'sonarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'x264'
    AND arr_type = 'sonarr'
);
-- --- END op 1960

-- --- BEGIN op 1961 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = -5000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'Size Larger than 4GB Series'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 1961

-- --- BEGIN op 1962 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'Size Under 4GB Series'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 1962

-- --- BEGIN op 1963 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = -5000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'Over 7GB File Size'
  AND arr_type = 'radarr'
  AND score = -50000;
-- --- END op 1963

-- --- BEGIN op 1964 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 5000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'Under 7GB File Size'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 1964

-- --- BEGIN op 1965 ( delete custom_format "Size Under 4GB Series" )
delete from "custom_formats" where "name" = 'Size Under 4GB Series';
-- --- END op 1965

-- --- BEGIN op 1966 ( update custom_format "Over 4GB Size for WEBDL-1080p" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Over 4GB Size for WEBDL-1080p'
	  AND name = 'Source2'
	  AND type = 'source'
	  AND arr_type = 'sonarr'
	  AND negate = 1
	  AND required = 0;
-- --- END op 1966

-- --- BEGIN op 1967 ( delete quality_profile "TV Series 1080p" )
delete from "quality_profile_tags" where "quality_profile_name" = 'TV Series 1080p';

delete from "quality_profile_languages" where "quality_profile_name" = 'TV Series 1080p';

delete from "quality_profile_qualities" where "quality_profile_name" = 'TV Series 1080p';

delete from "quality_profile_custom_formats" where "quality_profile_name" = 'TV Series 1080p';

delete from "quality_groups" where "quality_profile_name" = 'TV Series 1080p';

delete from "quality_profiles" where "name" = 'TV Series 1080p';
-- --- END op 1967

-- --- BEGIN op 1968 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 50000;
-- --- END op 1968

-- --- BEGIN op 1969 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = '1080p HDTV'
  AND arr_type = 'sonarr'
  AND score = 9000;
-- --- END op 1969

-- --- BEGIN op 1970 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = '1080p Remux'
  AND arr_type = 'sonarr'
  AND score = 9500;
-- --- END op 1970

-- --- BEGIN op 1971 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 30000;
-- --- END op 1971

-- --- BEGIN op 1972 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 10000;
-- --- END op 1972

-- --- BEGIN op 1973 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = '480p Bluray'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 1973

-- --- BEGIN op 1974 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = '480p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 1974

-- --- BEGIN op 1975 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = '576p Bluray'
  AND arr_type = 'sonarr'
  AND score = 4000;
-- --- END op 1975

-- --- BEGIN op 1976 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = '576p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 1976

-- --- BEGIN op 1977 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = '720p Bluray'
  AND arr_type = 'sonarr'
  AND score = 8000;
-- --- END op 1977

-- --- BEGIN op 1978 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'sonarr'
  AND score = 5000;
-- --- END op 1978

-- --- BEGIN op 1979 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = '720p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 7000;
-- --- END op 1979

-- --- BEGIN op 1980 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 6000;
-- --- END op 1980

-- --- BEGIN op 1981 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'AAC'
  AND arr_type = 'sonarr'
  AND score = 15;
-- --- END op 1981

-- --- BEGIN op 1982 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'AMZN'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 1982

-- --- BEGIN op 1983 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Atmos'
  AND arr_type = 'sonarr'
  AND score = 60;
-- --- END op 1983

-- --- BEGIN op 1984 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Atmos (Missing)'
  AND arr_type = 'sonarr'
  AND score = 60;
-- --- END op 1984

-- --- BEGIN op 1985 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 1985

-- --- BEGIN op 1986 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'AV1'
  AND arr_type = 'sonarr'
  AND score = 10075;
-- --- END op 1986

-- --- BEGIN op 1987 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Banned Dual Audio Groups'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 1987

-- --- BEGIN op 1988 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Banned Groups'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 1988

-- --- BEGIN op 1989 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'BCORE'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 1989

-- --- BEGIN op 1990 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'CR'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 1990

-- --- BEGIN op 1991 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'CRAV'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 1991

-- --- BEGIN op 1992 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'CRIT'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 1992

-- --- BEGIN op 1993 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Dolby Atmos'
  AND arr_type = 'sonarr'
  AND score = 60;
-- --- END op 1993

-- --- BEGIN op 1994 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Dolby Digital'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 1994

-- --- BEGIN op 1995 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Dolby Digital +'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 1995

-- --- BEGIN op 1996 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Dolby Vision'
  AND arr_type = 'sonarr'
  AND score = 70;
-- --- END op 1996

-- --- BEGIN op 1997 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Dolby Vision (Without Fallback)'
  AND arr_type = 'sonarr'
  AND score = 70;
-- --- END op 1997

-- --- BEGIN op 1998 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'DSNP'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 1998

-- --- BEGIN op 1999 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'DTS'
  AND arr_type = 'sonarr'
  AND score = 30;
-- --- END op 1999

-- --- BEGIN op 2000 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'DTS-ES'
  AND arr_type = 'sonarr'
  AND score = 35;
-- --- END op 2000

-- --- BEGIN op 2001 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'DTS-HD HRA'
  AND arr_type = 'sonarr'
  AND score = 40;
-- --- END op 2001

-- --- BEGIN op 2002 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'DTS-HD MA'
  AND arr_type = 'sonarr'
  AND score = 45;
-- --- END op 2002

-- --- BEGIN op 2003 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'DTS-X'
  AND arr_type = 'sonarr'
  AND score = 55;
-- --- END op 2003

-- --- BEGIN op 2004 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'DVD'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 2004

-- --- BEGIN op 2005 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Extras'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2005

-- --- BEGIN op 2006 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'FLAC'
  AND arr_type = 'sonarr'
  AND score = 10;
-- --- END op 2006

-- --- BEGIN op 2007 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'FLUX'
  AND arr_type = 'sonarr'
  AND score = 400;
-- --- END op 2007

-- --- BEGIN op 2008 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Full Disc'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2008

-- --- BEGIN op 2009 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Full Disc (Quality Match)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2009

-- --- BEGIN op 2010 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'h265|x265'
  AND arr_type = 'sonarr'
  AND score = 10000;
-- --- END op 2010

-- --- BEGIN op 2011 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'HDR'
  AND arr_type = 'sonarr'
  AND score = 40;
-- --- END op 2011

-- --- BEGIN op 2012 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'HDR (Missing)'
  AND arr_type = 'sonarr'
  AND score = 40;
-- --- END op 2012

-- --- BEGIN op 2013 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'HDR10 (Missing)'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 2013

-- --- BEGIN op 2014 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'HDR10+'
  AND arr_type = 'sonarr'
  AND score = 60;
-- --- END op 2014

-- --- BEGIN op 2015 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'HEEL'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 2015

-- --- BEGIN op 2016 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'HMAX'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 2016

-- --- BEGIN op 2017 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'HULU'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 2017

-- --- BEGIN op 2018 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'iP'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 2018

-- --- BEGIN op 2019 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'iT'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 2019

-- --- BEGIN op 2020 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'JermBox'
  AND arr_type = 'sonarr'
  AND score = 800;
-- --- END op 2020

-- --- BEGIN op 2021 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'MAX'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 2021

-- --- BEGIN op 2022 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'NF'
  AND arr_type = 'sonarr'
  AND score = 30;
-- --- END op 2022

-- --- BEGIN op 2023 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'NJPWWorld'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 2023

-- --- BEGIN op 2024 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Nordic'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2024

-- --- BEGIN op 2025 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Not Original or English'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2025

-- --- BEGIN op 2026 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'NOW'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 2026

-- --- BEGIN op 2027 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Opus'
  AND arr_type = 'sonarr'
  AND score = 5;
-- --- END op 2027

-- --- BEGIN op 2028 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'PCOK'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 2028

-- --- BEGIN op 2029 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'PLAY'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 2029

-- --- BEGIN op 2030 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'PMTP'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 2030

-- --- BEGIN op 2031 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'SDTV'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 2031

-- --- BEGIN op 2032 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Under 7GB File Size'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 2032

-- --- BEGIN op 2033 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'ROKU'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 2033

-- --- BEGIN op 2034 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'Season Pack'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 2034

-- --- BEGIN op 2035 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'SHO'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 2035

-- --- BEGIN op 2036 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'SKST'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 2036

-- --- BEGIN op 2037 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'STAN'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 2037

-- --- BEGIN op 2038 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'TNA+'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 2038

-- --- BEGIN op 2039 ( delete quality_profile "Sports Series 1080p" )
delete from "quality_profile_tags" where "quality_profile_name" = 'Sports Series 1080p';

delete from "quality_profile_languages" where "quality_profile_name" = 'Sports Series 1080p';

delete from "quality_profile_qualities" where "quality_profile_name" = 'Sports Series 1080p';

delete from "quality_profile_custom_formats" where "quality_profile_name" = 'Sports Series 1080p';

delete from "quality_groups" where "quality_profile_name" = 'Sports Series 1080p';

delete from "quality_profiles" where "name" = 'Sports Series 1080p';
-- --- END op 2039
