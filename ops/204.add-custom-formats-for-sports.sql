-- @operation: export
-- @entity: batch
-- @name: add custom formats for sports
-- @exportedAt: 2026-08-26T05:36:44.007Z
-- @opIds: 999, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083, 1084, 1085, 1086, 1087, 1088, 1089, 1090, 1091, 1092, 1093, 1094, 1095, 1096, 1097, 1098, 1099, 1100, 1101, 1102, 1103, 1104, 1105, 1106, 1107, 1108, 1109, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1119, 1120, 1121, 1122, 1123, 1124, 1125, 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1135, 1136, 1137, 1138, 1139, 1140, 1141, 1142, 1143, 1144, 1145

-- --- BEGIN op 999 ( create regular_expression "pahe" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('pahe', '(?<=^|[\s.-])126811\b', 'Matches the release group `126811` only if it is:

- Preceded by the start of the string (`^`), a whitespace character (`\s`), a period (`.`), or a hyphen (`-`).
- Followed by a word boundary (`\b`), ensuring it ends cleanly without being part of a longer word.', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('pahe', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('pahe', 'WEB-DL');
-- --- END op 999

-- --- BEGIN op 1000 ( update regular_expression "pahe" )
update "regular_expressions" set "description" = 'Matches the release group `pahe`' where "name" = 'pahe' and "description" = 'Matches the release group `126811` only if it is:

- Preceded by the start of the string (`^`), a whitespace character (`\s`), a period (`.`), or a hyphen (`-`).
- Followed by a word boundary (`\b`), ensuring it ends cleanly without being part of a longer word.';
-- --- END op 1000

-- --- BEGIN op 1001 ( update regular_expression "pahe" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])pahe\b' where "name" = 'pahe' and "pattern" = '(?<=^|[\s.-])126811\b';
-- --- END op 1001

-- --- BEGIN op 1002 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'Pahe', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'Pahe', 'pahe');
-- --- END op 1002

-- --- BEGIN op 1003 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBDL-1080p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'TV Series 1080p', 'Bluray/WEBDL 1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'TV Series 1080p'
    AND name = 'Bluray/WEBDL 1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'TV Series 1080p', 'Bluray/WEBDL 1080p', 'Bluray-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'TV Series 1080p'
    AND quality_group_name = 'Bluray/WEBDL 1080p'
    AND quality_name = 'Bluray-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'TV Series 1080p', 'Bluray/WEBDL 1080p', 'WEBDL-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'TV Series 1080p'
    AND quality_group_name = 'Bluray/WEBDL 1080p'
    AND quality_name = 'WEBDL-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV Series 1080p', NULL, 'Bluray/WEBDL 1080p', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV Series 1080p'
    AND quality_name IS NULL
    AND quality_group_name = 'Bluray/WEBDL 1080p'
);

UPDATE quality_profile_qualities
SET position = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBRip-1080p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_group_name = 'Unwanted'
  AND quality_name IS NULL
  AND position = 23
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 1003

-- --- BEGIN op 1004 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = -999999
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p Remux'
  AND arr_type = 'sonarr'
  AND score = 9500;
-- --- END op 1004

-- --- BEGIN op 1005 ( create sonarr_media_settings "Sonarr-Sports" )
insert into "sonarr_media_settings" ("name", "propers_repacks", "enable_media_info") values ('Sonarr-Sports', 'doNotPrefer', 1);
-- --- END op 1005

-- --- BEGIN op 1006 ( create quality_profile "Sports 1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Sports 1080p', 'Personal Settings for TV Series Wanted', 1, 0, 0, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Sports 1080p', 'Bluray/WEBDL 1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports 1080p', 'Bluray/WEBDL 1080p', 'Bluray-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports 1080p', 'Bluray/WEBDL 1080p', 'WEBDL-1080p', 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', NULL, 'Bluray/WEBDL 1080p', 0, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'WEBRip-1080p', NULL, 1, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'Remux-1080p', NULL, 2, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'HDTV-1080p', NULL, 3, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'Remux-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'Bluray-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'WEBDL-2160p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'WEBRip-2160p', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'HDTV-2160p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'Bluray-720p', NULL, 9, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'WEBDL-720p', NULL, 10, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'WEBRip-720p', NULL, 11, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'HDTV-720p', NULL, 12, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'Bluray-576p', NULL, 13, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'Bluray-480p', NULL, 14, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'WEBDL-480p', NULL, 15, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'WEBRip-480p', NULL, 16, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'HDTV-480p', NULL, 17, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'DVD-R', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'DVD', NULL, 19, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', 'SDTV', NULL, 20, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Sports 1080p', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports 1080p', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports 1080p', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports 1080p', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports 1080p', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports 1080p', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports 1080p', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', NULL, 'Pre-releases', 21, 0, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Sports 1080p', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports 1080p', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports 1080p', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports 1080p', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports 1080p', NULL, 'Unwanted', 22, 1, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Sports 1080p', 'English', 'simple');
-- --- END op 1006

-- --- BEGIN op 1007 ( update quality_profile "Sports 1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 200 where "name" = 'Sports 1080p' and "minimum_custom_format_score" = 0;
-- --- END op 1007

-- --- BEGIN op 1008 ( update quality_profile "Sports 1080p" )
update "quality_profiles" set "upgrade_until_score" = 100000 where "name" = 'Sports 1080p' and "upgrade_until_score" = 0;
-- --- END op 1008

-- --- BEGIN op 1009 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', '1080p Bluray', 'sonarr', 50000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1009

-- --- BEGIN op 1010 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', '1080p HDTV', 'sonarr', 9000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1010

-- --- BEGIN op 1011 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', '1080p Remux', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = '1080p Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 1011

-- --- BEGIN op 1012 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', '1080p WEB-DL', 'sonarr', 30000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1012

-- --- BEGIN op 1013 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', '1080p WEBRip', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 1013

-- --- BEGIN op 1014 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', '480p Bluray', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1014

-- --- BEGIN op 1015 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', '480p WEB-DL', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1015

-- --- BEGIN op 1016 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', '576p Bluray', 'sonarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1016

-- --- BEGIN op 1017 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', '576p WEB-DL', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1017

-- --- BEGIN op 1018 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', '720p Bluray', 'sonarr', 8000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1018

-- --- BEGIN op 1019 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', '720p HDTV', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1019

-- --- BEGIN op 1020 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', '720p WEB-DL', 'sonarr', 7000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1020

-- --- BEGIN op 1021 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', '720p WEBRip', 'sonarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 1021

-- --- BEGIN op 1022 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'AAC', 'sonarr', 15
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'AAC'
    AND arr_type = 'sonarr'
);
-- --- END op 1022

-- --- BEGIN op 1023 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'AMZN', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 1023

-- --- BEGIN op 1024 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'ATVP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 1024

-- --- BEGIN op 1025 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Atmos', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'sonarr'
);
-- --- END op 1025

-- --- BEGIN op 1026 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Atmos (Missing)', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Atmos (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 1026

-- --- BEGIN op 1027 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'BCORE', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'sonarr'
);
-- --- END op 1027

-- --- BEGIN op 1028 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1028

-- --- BEGIN op 1029 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Banned Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1029

-- --- BEGIN op 1030 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Banned Groups (Compact)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Banned Groups (Compact)'
    AND arr_type = 'sonarr'
);
-- --- END op 1030

-- --- BEGIN op 1031 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Banned Groups (Efficient)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Banned Groups (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 1031

-- --- BEGIN op 1032 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Banned Groups (Regular)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Banned Groups (Regular)'
    AND arr_type = 'sonarr'
);
-- --- END op 1032

-- --- BEGIN op 1033 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 1033

-- --- BEGIN op 1034 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Banned Language Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Banned Language Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1034

-- --- BEGIN op 1035 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'CR', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'CR'
    AND arr_type = 'sonarr'
);
-- --- END op 1035

-- --- BEGIN op 1036 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'CRAV', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'sonarr'
);
-- --- END op 1036

-- --- BEGIN op 1037 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'CRIT', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'sonarr'
);
-- --- END op 1037

-- --- BEGIN op 1038 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'DSNP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 1038

-- --- BEGIN op 1039 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'DTS', 'sonarr', 30
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'DTS'
    AND arr_type = 'sonarr'
);
-- --- END op 1039

-- --- BEGIN op 1040 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'DTS-ES', 'sonarr', 35
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'sonarr'
);
-- --- END op 1040

-- --- BEGIN op 1041 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'DTS-HD HRA', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'sonarr'
);
-- --- END op 1041

-- --- BEGIN op 1042 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'DTS-HD MA', 'sonarr', 45
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'sonarr'
);
-- --- END op 1042

-- --- BEGIN op 1043 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'DTS-X', 'sonarr', 55
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'sonarr'
);
-- --- END op 1043

-- --- BEGIN op 1044 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'DVD', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 1044

-- --- BEGIN op 1045 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Dolby Atmos', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'sonarr'
);
-- --- END op 1045

-- --- BEGIN op 1046 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Dolby Digital', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'sonarr'
);
-- --- END op 1046

-- --- BEGIN op 1047 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Dolby Digital +', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'sonarr'
);
-- --- END op 1047

-- --- BEGIN op 1048 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Dolby Vision', 'sonarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'sonarr'
);
-- --- END op 1048

-- --- BEGIN op 1049 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Dolby Vision (Without Fallback)', 'sonarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'sonarr'
);
-- --- END op 1049

-- --- BEGIN op 1050 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 1050

-- --- BEGIN op 1051 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'FLAC', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'sonarr'
);
-- --- END op 1051

-- --- BEGIN op 1052 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'FLUX', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'FLUX'
    AND arr_type = 'sonarr'
);
-- --- END op 1052

-- --- BEGIN op 1053 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Full Disc', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'sonarr'
);
-- --- END op 1053

-- --- BEGIN op 1054 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Full Disc (Quality Match)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'sonarr'
);
-- --- END op 1054

-- --- BEGIN op 1055 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'HDR', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'HDR'
    AND arr_type = 'sonarr'
);
-- --- END op 1055

-- --- BEGIN op 1056 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'HDR (Missing)', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 1056

-- --- BEGIN op 1057 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'HDR10 (Missing)', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'HDR10 (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 1057

-- --- BEGIN op 1058 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'HDR10+', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'sonarr'
);
-- --- END op 1058

-- --- BEGIN op 1059 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'HMAX', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 1059

-- --- BEGIN op 1060 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'HULU', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'HULU'
    AND arr_type = 'sonarr'
);
-- --- END op 1060

-- --- BEGIN op 1061 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'JermBox', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'JermBox'
    AND arr_type = 'sonarr'
);
-- --- END op 1061

-- --- BEGIN op 1062 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'MAX', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 1062

-- --- BEGIN op 1063 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'NF', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 1063

-- --- BEGIN op 1064 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'NOW', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'NOW'
    AND arr_type = 'sonarr'
);
-- --- END op 1064

-- --- BEGIN op 1065 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Nordic', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Nordic'
    AND arr_type = 'sonarr'
);
-- --- END op 1065

-- --- BEGIN op 1066 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 1066

-- --- BEGIN op 1067 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Opus', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Opus'
    AND arr_type = 'sonarr'
);
-- --- END op 1067

-- --- BEGIN op 1068 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'PCOK', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'sonarr'
);
-- --- END op 1068

-- --- BEGIN op 1069 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'PLAY', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'sonarr'
);
-- --- END op 1069

-- --- BEGIN op 1070 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'PMTP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'sonarr'
);
-- --- END op 1070

-- --- BEGIN op 1071 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'ROKU', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'sonarr'
);
-- --- END op 1071

-- --- BEGIN op 1072 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'SDTV', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1072

-- --- BEGIN op 1073 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'SHO', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'SHO'
    AND arr_type = 'sonarr'
);
-- --- END op 1073

-- --- BEGIN op 1074 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'SKST', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 1074

-- --- BEGIN op 1075 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'STAN', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'STAN'
    AND arr_type = 'sonarr'
);
-- --- END op 1075

-- --- BEGIN op 1076 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Season Pack', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 1076

-- --- BEGIN op 1077 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'TrueHD', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'sonarr'
);
-- --- END op 1077

-- --- BEGIN op 1078 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'TrueHD (Missing)', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'TrueHD (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 1078

-- --- BEGIN op 1079 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Under 7GB File Size', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Under 7GB File Size'
    AND arr_type = 'sonarr'
);
-- --- END op 1079

-- --- BEGIN op 1080 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 1080

-- --- BEGIN op 1081 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'WeTV', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'WeTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1081

-- --- BEGIN op 1082 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'h264|x264', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'h264|x264'
    AND arr_type = 'sonarr'
);
-- --- END op 1082

-- --- BEGIN op 1083 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'h265|x265', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'h265|x265'
    AND arr_type = 'sonarr'
);
-- --- END op 1083

-- --- BEGIN op 1084 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'iP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'iP'
    AND arr_type = 'sonarr'
);
-- --- END op 1084

-- --- BEGIN op 1085 ( update quality_profile "Sports 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports 1080p', 'iT', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports 1080p'
    AND custom_format_name = 'iT'
    AND arr_type = 'sonarr'
);
-- --- END op 1085

-- --- BEGIN op 1086 ( create sonarr_quality_definitions "Sonarr-Sports" )
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'Bluray-1080p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'Bluray-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'Bluray-480p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'Bluray-576p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'Bluray-720p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'DVD', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'HDTV-1080p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'HDTV-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'HDTV-720p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'Raw-HD', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'Remux-1080p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'Remux-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'SDTV', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'Unknown', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'WEBDL-1080p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'WEBDL-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'WEBDL-480p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'WEBDL-720p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'WEBRip-1080p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'WEBRip-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'WEBRip-480p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr-Sports', 'WEBRip-720p', 0, 0, 0);
-- --- END op 1086

-- --- BEGIN op 1087 ( update quality_profile "Sports Series 1080p" )
UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 1087

-- --- BEGIN op 1088 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'WEBDL-1080p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Sports Series 1080p', '1080P'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND name = '1080P'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Sports Series 1080p', '1080P', 'Bluray-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND quality_group_name = '1080P'
    AND quality_name = 'Bluray-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Sports Series 1080p', '1080P', 'WEBDL-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND quality_group_name = '1080P'
    AND quality_name = 'WEBDL-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Sports Series 1080p', NULL, '1080P', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND quality_name IS NULL
    AND quality_group_name = '1080P'
);

UPDATE quality_profile_qualities
SET position = 1
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'WEBRip-1080p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name IS NULL
  AND position = 22
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_group_name = 'Unwanted'
  AND quality_name IS NULL
  AND position = 23
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 1088

-- --- BEGIN op 1089 ( create regular_expression "NJPWWorld" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NJPWWorld', '\bAMZN\b|\bAMAZON[ ._-]WEB[ ._-]?(DL|RIP)?\b', 'Matches Amazon Prime Video source tags in both abbreviated (`AMZN`) and full (`AMAZON WEB-DL` / `AMAZON WEBRIP`) forms. Separators between words can be a space, dot, underscore, or hyphen, and the separator between `WEB` and `DL`/`RIP` is optional entirely. Word boundaries are enforced on both patterns to prevent partial matches.

Examples:
- `AMZN`
- `AMAZON WEB-DL`
- `AMAZON.WEB.DL`
- `AMAZON_WEBDL`
- `AMAZON-WEBRIP`
- `AMAZON.WEB_RIP`', 'K6HrsR/4');

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NJPWWorld', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NJPWWorld', 'WEB-DL');
-- --- END op 1089

-- --- BEGIN op 1090 ( update regular_expression "NJPWWorld" )
update "regular_expressions" set "description" = 'Matches events from NJPWWorld Streaming site' where "name" = 'NJPWWorld' and "description" = 'Matches Amazon Prime Video source tags in both abbreviated (`AMZN`) and full (`AMAZON WEB-DL` / `AMAZON WEBRIP`) forms. Separators between words can be a space, dot, underscore, or hyphen, and the separator between `WEB` and `DL`/`RIP` is optional entirely. Word boundaries are enforced on both patterns to prevent partial matches.

Examples:
- `AMZN`
- `AMAZON WEB-DL`
- `AMAZON.WEB.DL`
- `AMAZON_WEBDL`
- `AMAZON-WEBRIP`
- `AMAZON.WEB_RIP`';
-- --- END op 1090

-- --- BEGIN op 1091 ( update regular_expression "NJPWWorld" )
update "regular_expressions" set "regex101_id" = NULL where "name" = 'NJPWWorld' and "regex101_id" = 'K6HrsR/4';
-- --- END op 1091

-- --- BEGIN op 1092 ( update regular_expression "NJPWWorld" )
update "regular_expressions" set "pattern" = '\bNJPWWORLD\b[ ._-]WEB[ ._-]?(DL|RIP)?\b' where "name" = 'NJPWWorld' and "pattern" = '\bAMZN\b|\bAMAZON[ ._-]WEB[ ._-]?(DL|RIP)?\b';
-- --- END op 1092

-- --- BEGIN op 1093 ( create regular_expression "YouTube" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('YouTube', '\b(Youku|YK)\b', 'Youku is a major Chinese streaming platform owned by Alibaba Group, offering a wide range of long-form video content including TV dramas, films, variety shows, animation, original productions, and licensed international titles. Known as one of China’s top three streaming services alongside iQIYI and Tencent Video, Youku operates on both ad-supported and subscription models and is integrated across mobile, web, smart TV, and other devices. The platform emphasizes high-quality, professionally produced content and also supports user-generated videos and live broadcasts, making it a central hub for digital entertainment within China.', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YouTube', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YouTube', 'WEB-DL');
-- --- END op 1093

-- --- BEGIN op 1094 ( update regular_expression "YouTube" )
update "regular_expressions" set "description" = 'YouTube content' where "name" = 'YouTube' and "description" = 'Youku is a major Chinese streaming platform owned by Alibaba Group, offering a wide range of long-form video content including TV dramas, films, variety shows, animation, original productions, and licensed international titles. Known as one of China’s top three streaming services alongside iQIYI and Tencent Video, Youku operates on both ad-supported and subscription models and is integrated across mobile, web, smart TV, and other devices. The platform emphasizes high-quality, professionally produced content and also supports user-generated videos and live broadcasts, making it a central hub for digital entertainment within China.';
-- --- END op 1094

-- --- BEGIN op 1095 ( update regular_expression "YouTube" )
update "regular_expressions" set "pattern" = '\b(YouTube|YTube)\b' where "name" = 'YouTube' and "pattern" = '\b(Youku|YK)\b';
-- --- END op 1095

-- --- BEGIN op 1096 ( create regular_expression "WWENetwork" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WWENetwork', '\b(YouTube|YTube)\b', 'YouTube content', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WWENetwork', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WWENetwork', 'WEB-DL');
-- --- END op 1096

-- --- BEGIN op 1097 ( update regular_expression "WWENetwork" )
update "regular_expressions" set "description" = 'WWE Network Content' where "name" = 'WWENetwork' and "description" = 'YouTube content';
-- --- END op 1097

-- --- BEGIN op 1098 ( update regular_expression "WWENetwork" )
update "regular_expressions" set "pattern" = '\b(WWEN|WWENetwork)\b' where "name" = 'WWENetwork' and "pattern" = '\b(YouTube|YTube)\b';
-- --- END op 1098

-- --- BEGIN op 1099 ( create regular_expression "TNA+" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TNA+', '\bNJPWWORLD\b[ ._-]WEB[ ._-]?(DL|RIP)?\b', 'Matches events from NJPWWorld Streaming site', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TNA+', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TNA+', 'WEB-DL');
-- --- END op 1099

-- --- BEGIN op 1100 ( update regular_expression "TNA+" )
update "regular_expressions" set "description" = 'TNA+ Content' where "name" = 'TNA+' and "description" = 'Matches events from NJPWWorld Streaming site';
-- --- END op 1100

-- --- BEGIN op 1101 ( update regular_expression "TNA+" )
update "regular_expressions" set "pattern" = '\bTNA+\b|TNAPlus[ ._-]WEB[ ._-]?(DL|RIP)?\b' where "name" = 'TNA+' and "pattern" = '\bNJPWWORLD\b[ ._-]WEB[ ._-]?(DL|RIP)?\b';
-- --- END op 1101

-- --- BEGIN op 1102 ( update regular_expression "TNA+" )
update "regular_expressions" set "pattern" = '\b(TNAPLUS|TNA+(p)?|tnaplus\+)\s*\b' where "name" = 'TNA+' and "pattern" = '\bTNA+\b|TNAPlus[ ._-]WEB[ ._-]?(DL|RIP)?\b';
-- --- END op 1102

-- --- BEGIN op 1103 ( create custom_format "TNA+" )
insert into "custom_formats" ("name", "description") values ('TNA+', '');
-- --- END op 1103

-- --- BEGIN op 1104 ( update custom_format "TNA+" )
update "custom_formats" set "description" = 'Matches ''Crave'' WEB-DLs' where "name" = 'TNA+' and "description" = '';
-- --- END op 1104

-- --- BEGIN op 1105 ( update custom_format "TNA+" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'TNA+' and "include_in_rename" = 0;
-- --- END op 1105

-- --- BEGIN op 1106 ( update custom_format "TNA+" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TNA+', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TNA+', 'WEB-DL');
-- --- END op 1106

-- --- BEGIN op 1107 ( update custom_format "TNA+" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TNA+', 'CRAV Regex', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TNA+', 'CRAV Regex', 'Crave');
-- --- END op 1107

-- --- BEGIN op 1108 ( update custom_format "TNA+" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TNA+', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TNA+', 'WEB-DL', 'web_dl');
-- --- END op 1108

-- --- BEGIN op 1109 ( update custom_format "TNA+" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TNA+', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TNA+', 'WEBRip', 'webrip');
-- --- END op 1109

-- --- BEGIN op 1110 ( update custom_format "TNA+" )
update "custom_formats" set "description" = 'Matches ''TNA+'' WEB-DLs' where "name" = 'TNA+' and "description" = 'Matches ''Crave'' WEB-DLs';
-- --- END op 1110

-- --- BEGIN op 1111 ( update custom_format "TNA+" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TNA+'
	  AND name = 'CRAV Regex'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1111

-- --- BEGIN op 1112 ( update custom_format "TNA+" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TNA+'
	  AND name = 'WEBRip'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1112

-- --- BEGIN op 1113 ( update custom_format "TNA+" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TNA+', 'TNA+ RegEx', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TNA+', 'TNA+ RegEx', 'TNA+');
-- --- END op 1113

-- --- BEGIN op 1114 ( update custom_format "TNA+" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'TNA+'
  AND name = 'WEB-DL'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1114

-- --- BEGIN op 1115 ( create custom_format "NJPWWorld" )
insert into "custom_formats" ("name", "description") values ('NJPWWorld', '');
-- --- END op 1115

-- --- BEGIN op 1116 ( update custom_format "NJPWWorld" )
update "custom_formats" set "description" = 'Matches ''TNA+'' WEB-DLs' where "name" = 'NJPWWorld' and "description" = '';
-- --- END op 1116

-- --- BEGIN op 1117 ( update custom_format "NJPWWorld" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'NJPWWorld' and "include_in_rename" = 0;
-- --- END op 1117

-- --- BEGIN op 1118 ( update custom_format "NJPWWorld" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('NJPWWorld', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('NJPWWorld', 'WEB-DL');
-- --- END op 1118

-- --- BEGIN op 1119 ( update custom_format "NJPWWorld" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('NJPWWorld', 'TNA+ RegEx', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('NJPWWorld', 'TNA+ RegEx', 'TNA+');
-- --- END op 1119

-- --- BEGIN op 1120 ( update custom_format "NJPWWorld" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('NJPWWorld', 'WEB-DL', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('NJPWWorld', 'WEB-DL', 'web_dl');
-- --- END op 1120

-- --- BEGIN op 1121 ( update custom_format "NJPWWorld" )
update "custom_formats" set "description" = '' where "name" = 'NJPWWorld' and "description" = 'Matches ''TNA+'' WEB-DLs';
-- --- END op 1121

-- --- BEGIN op 1122 ( update custom_format "NJPWWorld" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'NJPWWorld'
	  AND name = 'TNA+ RegEx'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1122

-- --- BEGIN op 1123 ( update custom_format "NJPWWorld" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('NJPWWorld', 'NJPWWorld RegEx', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('NJPWWorld', 'NJPWWorld RegEx', 'NJPWWorld');
-- --- END op 1123

-- --- BEGIN op 1124 ( create custom_format "YouTube" )
insert into "custom_formats" ("name", "description") values ('YouTube', '');
-- --- END op 1124

-- --- BEGIN op 1125 ( update custom_format "YouTube" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'YouTube' and "include_in_rename" = 0;
-- --- END op 1125

-- --- BEGIN op 1126 ( update custom_format "YouTube" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('YouTube', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('YouTube', 'WEB-DL');
-- --- END op 1126

-- --- BEGIN op 1127 ( update custom_format "YouTube" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('YouTube', 'NJPWWorld RegEx', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('YouTube', 'NJPWWorld RegEx', 'NJPWWorld');
-- --- END op 1127

-- --- BEGIN op 1128 ( update custom_format "YouTube" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('YouTube', 'WEB-DL', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('YouTube', 'WEB-DL', 'web_dl');
-- --- END op 1128

-- --- BEGIN op 1129 ( create custom_format "WWENetwork" )
insert into "custom_formats" ("name", "description") values ('WWENetwork', '');
-- --- END op 1129

-- --- BEGIN op 1130 ( update custom_format "WWENetwork" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'WWENetwork' and "include_in_rename" = 0;
-- --- END op 1130

-- --- BEGIN op 1131 ( update custom_format "WWENetwork" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('WWENetwork', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('WWENetwork', 'WEB-DL');
-- --- END op 1131

-- --- BEGIN op 1132 ( update custom_format "WWENetwork" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WWENetwork', 'NJPWWorld RegEx', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WWENetwork', 'NJPWWorld RegEx', 'NJPWWorld');
-- --- END op 1132

-- --- BEGIN op 1133 ( update custom_format "WWENetwork" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WWENetwork', 'WEB-DL', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('WWENetwork', 'WEB-DL', 'web_dl');
-- --- END op 1133

-- --- BEGIN op 1134 ( update custom_format "YouTube" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'YouTube'
	  AND name = 'NJPWWorld RegEx'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1134

-- --- BEGIN op 1135 ( update custom_format "YouTube" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('YouTube', 'YouTube RegEx', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('YouTube', 'YouTube RegEx', 'YouTube');
-- --- END op 1135

-- --- BEGIN op 1136 ( update custom_format "WWENetwork" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'WWENetwork'
	  AND name = 'NJPWWorld RegEx'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1136

-- --- BEGIN op 1137 ( update custom_format "WWENetwork" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WWENetwork', 'WWENetwork RegEx', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WWENetwork', 'WWENetwork RegEx', 'WWENetwork');
-- --- END op 1137

-- --- BEGIN op 1138 ( update quality_profile "Sports Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'HEEL'
  AND arr_type = 'sonarr'
  AND score = 400;
-- --- END op 1138

-- --- BEGIN op 1139 ( update quality_profile "Sports Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'JermBox'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 1139

-- --- BEGIN op 1140 ( update quality_profile "Sports Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'MAX'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 1140

-- --- BEGIN op 1141 ( update quality_profile "Sports Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 30
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'NF'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 1141

-- --- BEGIN op 1142 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'NJPWWorld', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'NJPWWorld'
    AND arr_type = 'sonarr'
);
-- --- END op 1142

-- --- BEGIN op 1143 ( update quality_profile "Sports Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'Sports Series 1080p'
  AND custom_format_name = 'PCOK'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 1143

-- --- BEGIN op 1144 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'TNA+', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'TNA+'
    AND arr_type = 'sonarr'
);
-- --- END op 1144

-- --- BEGIN op 1145 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'YouTube', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'YouTube'
    AND arr_type = 'sonarr'
);
-- --- END op 1145
