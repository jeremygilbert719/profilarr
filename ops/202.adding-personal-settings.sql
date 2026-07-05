-- @operation: export
-- @entity: batch
-- @name: adding personal settings
-- @exportedAt: 2026-07-05T22:44:19.834Z
-- @opIds: 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572

-- --- BEGIN op 405 ( create regular_expression "JermBox" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('JermBox', '(?<=^|[\s.-])JermBox\b', 'Matches "JermBox" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JermBox', 'Release Group');
-- --- END op 405

-- --- BEGIN op 406 ( create custom_format "JermBox" )
insert into "custom_formats" ("name", "description") values ('JermBox', '');
-- --- END op 406

-- --- BEGIN op 407 ( update custom_format "JermBox" )
update "custom_formats" set "description" = 'Personal Releases' where "name" = 'JermBox' and "description" = '';
-- --- END op 407

-- --- BEGIN op 408 ( update custom_format "JermBox" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('JermBox', 'New Condition', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('JermBox', 'New Condition', 'JermBox');
-- --- END op 408

-- --- BEGIN op 409 ( create quality_profile "TV Series 1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('TV Series 1080p', 'Personal Settings for TV Series Wanted', 1, 0, 0, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('TV Series 1080p', 'WEB 1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV Series 1080p', 'WEB 1080p', 'WEBDL-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV Series 1080p', 'WEB 1080p', 'WEBRip-1080p', 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('TV Series 1080p', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV Series 1080p', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV Series 1080p', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV Series 1080p', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV Series 1080p', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV Series 1080p', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV Series 1080p', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('TV Series 1080p', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV Series 1080p', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV Series 1080p', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV Series 1080p', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'Remux-2160p', NULL, 1, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'Bluray-2160p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'WEBDL-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'WEBRip-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'HDTV-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'Remux-1080p', NULL, 6, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'Bluray-1080p', NULL, 7, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', NULL, 'WEB 1080p', 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'HDTV-1080p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'Bluray-720p', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'WEBDL-720p', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'WEBRip-720p', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'HDTV-720p', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'Bluray-576p', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'Bluray-480p', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'WEBDL-480p', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'WEBRip-480p', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'HDTV-480p', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'DVD-R', NULL, 19, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'DVD', NULL, 20, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', 'SDTV', NULL, 21, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', NULL, 'Pre-releases', 22, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV Series 1080p', NULL, 'Unwanted', 23, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('TV Series 1080p', 'English', 'simple');
-- --- END op 409

-- --- BEGIN op 410 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'TV Series 1080p'
  AND name = 'WEB 1080p';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV Series 1080p', 'WEBDL-1080p', NULL, 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV Series 1080p'
    AND quality_name = 'WEBDL-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV Series 1080p', 'WEBRip-1080p', NULL, 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV Series 1080p'
    AND quality_name = 'WEBRip-1080p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 3, enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9, enabled = 0
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_group_name = 'Unwanted'
  AND quality_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 0
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 1
  AND upgrade_until = 1;
-- --- END op 410

-- --- BEGIN op 411 ( create custom_format "1080p BluRay 265" )
insert into "custom_formats" ("name", "description") values ('1080p BluRay 265', '');
-- --- END op 411

-- --- BEGIN op 412 ( update custom_format "1080p BluRay 265" )
update "custom_formats" set "description" = 'BluRay 1080p h/x265 only' where "name" = '1080p BluRay 265' and "description" = '';
-- --- END op 412

-- --- BEGIN op 413 ( update custom_format "1080p BluRay 265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p BluRay 265', 'Release type', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p BluRay 265', 'Release type', 'x265');
-- --- END op 413

-- --- BEGIN op 414 ( update custom_format "1080p BluRay 265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p BluRay 265', 'Resolution', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('1080p BluRay 265', 'Resolution', '1080p');
-- --- END op 414

-- --- BEGIN op 415 ( update custom_format "1080p BluRay 265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p BluRay 265', 'Sourse', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('1080p BluRay 265', 'Sourse', 'bluray');
-- --- END op 415

-- --- BEGIN op 416 ( update custom_format "1080p BluRay 265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p BluRay 265', 'Language', 'language', 'all', 0, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('1080p BluRay 265', 'Language', 'English', 0);
-- --- END op 416

-- --- BEGIN op 417 ( update custom_format "1080p BluRay 265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p BluRay 265', 'File Size', 'size', 'all', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('1080p BluRay 265', 'File Size', 1073741824, 10737418240);
-- --- END op 417

-- --- BEGIN op 418 ( create custom_format "1080p BluRay 264" )
insert into "custom_formats" ("name", "description") values ('1080p BluRay 264', '');
-- --- END op 418

-- --- BEGIN op 419 ( update custom_format "1080p BluRay 264" )
update "custom_formats" set "description" = 'BluRay 1080p h/x265 only' where "name" = '1080p BluRay 264' and "description" = '';
-- --- END op 419

-- --- BEGIN op 420 ( update custom_format "1080p BluRay 264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p BluRay 264', 'File Size', 'size', 'all', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('1080p BluRay 264', 'File Size', 1073741824, 10737418240);
-- --- END op 420

-- --- BEGIN op 421 ( update custom_format "1080p BluRay 264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p BluRay 264', 'Language', 'language', 'all', 0, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('1080p BluRay 264', 'Language', 'English', 0);
-- --- END op 421

-- --- BEGIN op 422 ( update custom_format "1080p BluRay 264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p BluRay 264', 'Release type', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p BluRay 264', 'Release type', 'x265');
-- --- END op 422

-- --- BEGIN op 423 ( update custom_format "1080p BluRay 264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p BluRay 264', 'Resolution', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('1080p BluRay 264', 'Resolution', '1080p');
-- --- END op 423

-- --- BEGIN op 424 ( update custom_format "1080p BluRay 264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p BluRay 264', 'Sourse', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('1080p BluRay 264', 'Sourse', 'bluray');
-- --- END op 424

-- --- BEGIN op 425 ( update custom_format "1080p BluRay 264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p BluRay 264', 'Release type2', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p BluRay 264', 'Release type2', 'h264');
-- --- END op 425

-- --- BEGIN op 426 ( update custom_format "1080p BluRay 264" )
UPDATE custom_format_conditions
SET negate = 1
WHERE custom_format_name = '1080p BluRay 264'
  AND name = 'Release type'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = '1080p BluRay 264' AND condition_name = 'Release type' AND regular_expression_name = 'x265';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p BluRay 264', 'Release type', 'x264');
-- --- END op 426

-- --- BEGIN op 427 ( create custom_format "1080p WEBDL 264" )
insert into "custom_formats" ("name", "description") values ('1080p WEBDL 264', '');
-- --- END op 427

-- --- BEGIN op 428 ( update custom_format "1080p WEBDL 264" )
update "custom_formats" set "description" = 'BluRay 1080p h/x265 only' where "name" = '1080p WEBDL 264' and "description" = '';
-- --- END op 428

-- --- BEGIN op 429 ( update custom_format "1080p WEBDL 264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEBDL 264', 'File Size', 'size', 'all', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('1080p WEBDL 264', 'File Size', 1073741824, 10737418240);
-- --- END op 429

-- --- BEGIN op 430 ( update custom_format "1080p WEBDL 264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEBDL 264', 'Language', 'language', 'all', 0, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('1080p WEBDL 264', 'Language', 'English', 0);
-- --- END op 430

-- --- BEGIN op 431 ( update custom_format "1080p WEBDL 264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEBDL 264', 'Release type', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEBDL 264', 'Release type', 'x264');
-- --- END op 431

-- --- BEGIN op 432 ( update custom_format "1080p WEBDL 264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEBDL 264', 'Release type2', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEBDL 264', 'Release type2', 'h264');
-- --- END op 432

-- --- BEGIN op 433 ( update custom_format "1080p WEBDL 264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEBDL 264', 'Resolution', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('1080p WEBDL 264', 'Resolution', '1080p');
-- --- END op 433

-- --- BEGIN op 434 ( update custom_format "1080p WEBDL 264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEBDL 264', 'Sourse', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('1080p WEBDL 264', 'Sourse', 'bluray');
-- --- END op 434

-- --- BEGIN op 435 ( update custom_format "1080p WEBDL 264" )
DELETE FROM condition_sources WHERE custom_format_name = '1080p WEBDL 264' AND condition_name = 'Sourse' AND source = 'bluray';

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('1080p WEBDL 264', 'Sourse', 'web_dl');
-- --- END op 435

-- --- BEGIN op 436 ( create custom_format "1080p WEBDL 265" )
insert into "custom_formats" ("name", "description") values ('1080p WEBDL 265', '');
-- --- END op 436

-- --- BEGIN op 437 ( update custom_format "1080p WEBDL 265" )
update "custom_formats" set "description" = 'BluRay 1080p h/x265 only' where "name" = '1080p WEBDL 265' and "description" = '';
-- --- END op 437

-- --- BEGIN op 438 ( update custom_format "1080p WEBDL 265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEBDL 265', 'File Size', 'size', 'all', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('1080p WEBDL 265', 'File Size', 1073741824, 10737418240);
-- --- END op 438

-- --- BEGIN op 439 ( update custom_format "1080p WEBDL 265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEBDL 265', 'Language', 'language', 'all', 0, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('1080p WEBDL 265', 'Language', 'English', 0);
-- --- END op 439

-- --- BEGIN op 440 ( update custom_format "1080p WEBDL 265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEBDL 265', 'Release type', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEBDL 265', 'Release type', 'x265');
-- --- END op 440

-- --- BEGIN op 441 ( update custom_format "1080p WEBDL 265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEBDL 265', 'Resolution', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('1080p WEBDL 265', 'Resolution', '1080p');
-- --- END op 441

-- --- BEGIN op 442 ( update custom_format "1080p WEBDL 265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEBDL 265', 'Sourse', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('1080p WEBDL 265', 'Sourse', 'bluray');
-- --- END op 442

-- --- BEGIN op 443 ( update custom_format "1080p WEBDL 265" )
DELETE FROM condition_sources WHERE custom_format_name = '1080p WEBDL 265' AND condition_name = 'Sourse' AND source = 'bluray';

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('1080p WEBDL 265', 'Sourse', 'web_dl');
-- --- END op 443

-- --- BEGIN op 444 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '1080p BluRay 264', 'sonarr', 45000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '1080p BluRay 264'
    AND arr_type = 'sonarr'
);
-- --- END op 444

-- --- BEGIN op 445 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '1080p BluRay 265', 'sonarr', 50000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '1080p BluRay 265'
    AND arr_type = 'sonarr'
);
-- --- END op 445

-- --- BEGIN op 446 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '1080p WEBDL 264', 'sonarr', 35000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '1080p WEBDL 264'
    AND arr_type = 'sonarr'
);
-- --- END op 446

-- --- BEGIN op 447 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '1080p WEBDL 265', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '1080p WEBDL 265'
    AND arr_type = 'sonarr'
);
-- --- END op 447

-- --- BEGIN op 448 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '480p Bluray', 'sonarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 448

-- --- BEGIN op 449 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '480p WEB-DL', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 449

-- --- BEGIN op 450 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '720p Bluray', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 450

-- --- BEGIN op 451 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '720p HDTV', 'sonarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 451

-- --- BEGIN op 452 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '720p WEB-DL', 'sonarr', 8000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 452

-- --- BEGIN op 453 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'AAC', 'sonarr', 15
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'AAC'
    AND arr_type = 'sonarr'
);
-- --- END op 453

-- --- BEGIN op 454 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'AMZN', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 454

-- --- BEGIN op 455 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Atmos', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'sonarr'
);
-- --- END op 455

-- --- BEGIN op 456 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Atmos (Missing)', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Atmos (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 456

-- --- BEGIN op 457 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'ATVP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 457

-- --- BEGIN op 458 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 458

-- --- BEGIN op 459 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Banned Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 459

-- --- BEGIN op 460 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Banned Groups (Compact)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Banned Groups (Compact)'
    AND arr_type = 'sonarr'
);
-- --- END op 460

-- --- BEGIN op 461 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Banned Groups (Efficient)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Banned Groups (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 461

-- --- BEGIN op 462 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Banned Groups (Regular)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Banned Groups (Regular)'
    AND arr_type = 'sonarr'
);
-- --- END op 462

-- --- BEGIN op 463 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 463

-- --- BEGIN op 464 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Banned Language Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Banned Language Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 464

-- --- BEGIN op 465 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'CRAV', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'sonarr'
);
-- --- END op 465

-- --- BEGIN op 466 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'CRIT', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'sonarr'
);
-- --- END op 466

-- --- BEGIN op 467 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Dolby Atmos', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'sonarr'
);
-- --- END op 467

-- --- BEGIN op 468 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Dolby Digital', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'sonarr'
);
-- --- END op 468

-- --- BEGIN op 469 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Dolby Digital +', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'sonarr'
);
-- --- END op 469

-- --- BEGIN op 470 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Dolby Vision', 'sonarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'sonarr'
);
-- --- END op 470

-- --- BEGIN op 471 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Dolby Vision (Without Fallback)', 'sonarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'sonarr'
);
-- --- END op 471

-- --- BEGIN op 472 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'DSNP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 472

-- --- BEGIN op 473 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'DTS', 'sonarr', 30
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'DTS'
    AND arr_type = 'sonarr'
);
-- --- END op 473

-- --- BEGIN op 474 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'DTS-ES', 'sonarr', 35
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'sonarr'
);
-- --- END op 474

-- --- BEGIN op 475 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'DTS-HD HRA', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'sonarr'
);
-- --- END op 475

-- --- BEGIN op 476 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'DTS-HD MA', 'sonarr', 45
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'sonarr'
);
-- --- END op 476

-- --- BEGIN op 477 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'DTS-X', 'sonarr', 55
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'sonarr'
);
-- --- END op 477

-- --- BEGIN op 478 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'DVD', 'sonarr', 900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 478

-- --- BEGIN op 479 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 479

-- --- BEGIN op 480 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'FLAC', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'sonarr'
);
-- --- END op 480

-- --- BEGIN op 481 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'HDR', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'HDR'
    AND arr_type = 'sonarr'
);
-- --- END op 481

-- --- BEGIN op 482 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'HDR (Missing)', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 482

-- --- BEGIN op 483 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'HDR10 (Missing)', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'HDR10 (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 483

-- --- BEGIN op 484 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'HDR10+', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'sonarr'
);
-- --- END op 484

-- --- BEGIN op 485 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'HMAX', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 485

-- --- BEGIN op 486 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'HULU', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'HULU'
    AND arr_type = 'sonarr'
);
-- --- END op 486

-- --- BEGIN op 487 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'iP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'iP'
    AND arr_type = 'sonarr'
);
-- --- END op 487

-- --- BEGIN op 488 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'iT', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'iT'
    AND arr_type = 'sonarr'
);
-- --- END op 488

-- --- BEGIN op 489 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'JermBox', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'JermBox'
    AND arr_type = 'sonarr'
);
-- --- END op 489

-- --- BEGIN op 490 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'MAX', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 490

-- --- BEGIN op 491 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'NF', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 491

-- --- BEGIN op 492 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Opus', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Opus'
    AND arr_type = 'sonarr'
);
-- --- END op 492

-- --- BEGIN op 493 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'PCOK', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'sonarr'
);
-- --- END op 493

-- --- BEGIN op 494 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'PLAY', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'sonarr'
);
-- --- END op 494

-- --- BEGIN op 495 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'PMTP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'sonarr'
);
-- --- END op 495

-- --- BEGIN op 496 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'ROKU', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'sonarr'
);
-- --- END op 496

-- --- BEGIN op 497 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'SDTV', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 497

-- --- BEGIN op 498 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'SHO', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'SHO'
    AND arr_type = 'sonarr'
);
-- --- END op 498

-- --- BEGIN op 499 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'STAN', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'STAN'
    AND arr_type = 'sonarr'
);
-- --- END op 499

-- --- BEGIN op 500 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'TrueHD', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'sonarr'
);
-- --- END op 500

-- --- BEGIN op 501 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'TrueHD (Missing)', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'TrueHD (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 501

-- --- BEGIN op 502 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 502

-- --- BEGIN op 503 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'WeTV', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'WeTV'
    AND arr_type = 'sonarr'
);
-- --- END op 503

-- --- BEGIN op 504 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "standard_episode_format" = '{Series TitleThe} - [TVDB-{TvdbId}] - S{season:00}E{episode:00} - {Episode CleanTitle}{ - Custom Format:FormatName}{ - Custom Formats}{ - MediaInfo VideoDynamicRangeType}{ - Quality Full}{ - MediaInfo - Simple}{ - MediaInfo AudioChannels}{ -Release Group}' where "name" = 'Sonarr' and "standard_episode_format" = '{Series TitleYear} - S{season:00}E{episode:00} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}';
-- --- END op 504

-- --- BEGIN op 505 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "daily_episode_format" = '{Air-Date}{ - Series CleanTitleTheYear} - [TVDB-{TvdbId}] - S{season:00}E{episode:00}{ - Episode Title:30}{ - Custom Format:FormatName}{ - Custom Formats}{ - MediaInfo VideoDynamicRangeType}{ - Quality Full}{ - MediaInfo - Simple}{ - MediaInfo AudioChannels}{ -Release Group}' where "name" = 'Sonarr' and "daily_episode_format" = '{Series TitleYear} - {Air-Date} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}';
-- --- END op 505

-- --- BEGIN op 506 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "anime_episode_format" = '{Series TitleThe} - [TVDB-{TvdbId}] - S{season:00}E{episode:00} - {Episode CleanTitle}{ - Custom Format:FormatName}{ - Custom Formats}{ - MediaInfo VideoDynamicRangeType}{ - Quality Full}{ - MediaInfo - Simple}{ - MediaInfo AudioChannels}{ -Release Group}' where "name" = 'Sonarr' and "anime_episode_format" = '{Series TitleYear} - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}[{MediaInfo VideoBitDepth}bit]{[MediaInfo VideoCodec]}[{Mediainfo AudioCodec} { Mediainfo AudioChannels}]{MediaInfo AudioLanguages}{-Release Group}';
-- --- END op 506

-- --- BEGIN op 507 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "series_folder_format" = '{Series TitleTheYear} [TVDB{-TvdbId}]' where "name" = 'Sonarr' and "series_folder_format" = '{Series TitleYear} {tvdb-{TvdbId}}';
-- --- END op 507

-- --- BEGIN op 508 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "replace_illegal_characters" = 1 where "name" = 'Sonarr' and "replace_illegal_characters" = 0;
-- --- END op 508

-- --- BEGIN op 509 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "colon_replacement_format" = 0 where "name" = 'Sonarr' and "colon_replacement_format" = 4;
-- --- END op 509

-- --- BEGIN op 510 ( update custom_format "1080p BluRay 265" )
update "custom_formats" set "include_in_rename" = 1 where "name" = '1080p BluRay 265' and "include_in_rename" = 0;
-- --- END op 510

-- --- BEGIN op 511 ( update custom_format "1080p BluRay 265" )
update "custom_formats" set "include_in_rename" = 0 where "name" = '1080p BluRay 265' and "include_in_rename" = 1;
-- --- END op 511

-- --- BEGIN op 512 ( update quality_profile "TV Series 1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 2000 where "name" = 'TV Series 1080p' and "minimum_custom_format_score" = 0;
-- --- END op 512

-- --- BEGIN op 513 ( update quality_profile "TV Series 1080p" )
update "quality_profiles" set "upgrade_until_score" = 100000 where "name" = 'TV Series 1080p' and "upgrade_until_score" = 0;
-- --- END op 513

-- --- BEGIN op 514 ( update custom_format "JermBox" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'JermBox' and "include_in_rename" = 0;
-- --- END op 514

-- --- BEGIN op 515 ( update custom_format "JermBox" )
update "custom_formats" set "include_in_rename" = 0 where "name" = 'JermBox' and "include_in_rename" = 1;
-- --- END op 515

-- --- BEGIN op 516 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Full Disc', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'sonarr'
);
-- --- END op 516

-- --- BEGIN op 517 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Full Disc (Quality Match)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'sonarr'
);
-- --- END op 517

-- --- BEGIN op 518 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Season Pack', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 518

-- --- BEGIN op 519 ( update custom_format "1080p BluRay 265" )
update "custom_formats" set "include_in_rename" = 1 where "name" = '1080p BluRay 265' and "include_in_rename" = 0;
-- --- END op 519

-- --- BEGIN op 520 ( update custom_format "1080p BluRay 265" )
update "custom_formats" set "include_in_rename" = 0 where "name" = '1080p BluRay 265' and "include_in_rename" = 1;
-- --- END op 520

-- --- BEGIN op 521 ( update custom_format "1080p BluRay 265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p BluRay 265'
	  AND name = 'Sourse'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 521

-- --- BEGIN op 522 ( update custom_format "1080p BluRay 265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p BluRay 265', 'Source', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('1080p BluRay 265', 'Source', 'bluray');
-- --- END op 522

-- --- BEGIN op 523 ( update custom_format "1080p BluRay 265" )
insert into "tags" ("name") values ('Source') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1080p BluRay 265', 'Source');
-- --- END op 523

-- --- BEGIN op 524 ( update custom_format "1080p BluRay 264" )
insert into "tags" ("name") values ('Source') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1080p BluRay 264', 'Source');
-- --- END op 524

-- --- BEGIN op 525 ( update custom_format "1080p WEBDL 264" )
insert into "tags" ("name") values ('Source') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1080p WEBDL 264', 'Source');
-- --- END op 525

-- --- BEGIN op 526 ( update custom_format "1080p WEBDL 265" )
insert into "tags" ("name") values ('Source') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1080p WEBDL 265', 'Source');
-- --- END op 526

-- --- BEGIN op 527 ( update custom_format "JermBox" )
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('JermBox', 'Release Group');
-- --- END op 527

-- --- BEGIN op 528 ( create custom_format "FLUX" )
insert into "custom_formats" ("name", "description") values ('FLUX', '');
-- --- END op 528

-- --- BEGIN op 529 ( update custom_format "FLUX" )
update "custom_formats" set "description" = 'Personal Releases' where "name" = 'FLUX' and "description" = '';
-- --- END op 529

-- --- BEGIN op 530 ( update custom_format "FLUX" )
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('FLUX', 'Release Group');
-- --- END op 530

-- --- BEGIN op 531 ( update custom_format "FLUX" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FLUX', 'New Condition', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FLUX', 'New Condition', 'JermBox');
-- --- END op 531

-- --- BEGIN op 532 ( update custom_format "FLUX" )
update "custom_formats" set "description" = 'FLUX Releases' where "name" = 'FLUX' and "description" = 'Personal Releases';
-- --- END op 532

-- --- BEGIN op 533 ( update custom_format "FLUX" )
insert into "tags" ("name") values ('Regex') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FLUX', 'Regex');
-- --- END op 533

-- --- BEGIN op 534 ( update custom_format "FLUX" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'FLUX' AND tag_name = 'Regex';
-- --- END op 534

-- --- BEGIN op 535 ( update custom_format "FLUX" )
DELETE FROM condition_patterns WHERE custom_format_name = 'FLUX' AND condition_name = 'New Condition' AND regular_expression_name = 'JermBox';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FLUX', 'New Condition', 'FLUX');
-- --- END op 535

-- --- BEGIN op 536 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'FLUX', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'FLUX'
    AND arr_type = 'sonarr'
);
-- --- END op 536

-- --- BEGIN op 537 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'BCORE', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'sonarr'
);
-- --- END op 537

-- --- BEGIN op 538 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'CR', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'CR'
    AND arr_type = 'sonarr'
);
-- --- END op 538

-- --- BEGIN op 539 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'NOW', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'NOW'
    AND arr_type = 'sonarr'
);
-- --- END op 539

-- --- BEGIN op 540 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'SKST', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 540

-- --- BEGIN op 541 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '1080p Bluray', 'sonarr', 45000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 541

-- --- BEGIN op 542 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '1080p Bluray (Efficient)', 'sonarr', 50000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '1080p Bluray (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 542

-- --- BEGIN op 543 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'h265', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'h265'
    AND arr_type = 'sonarr'
);
-- --- END op 543

-- --- BEGIN op 544 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'h265 (Efficient)', 'sonarr', 11000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'h265 (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 544

-- --- BEGIN op 545 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'x265 (Bluray)', 'sonarr', 12000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'sonarr'
);
-- --- END op 545

-- --- BEGIN op 546 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'x265 (Efficient)', 'sonarr', 11000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'x265 (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 546

-- --- BEGIN op 547 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'x265 (Missing)', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'x265 (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 547

-- --- BEGIN op 548 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'x265 (WEB)', 'sonarr', 9000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'sonarr'
);
-- --- END op 548

-- --- BEGIN op 549 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '1080p WEB-DL', 'sonarr', 35000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 549

-- --- BEGIN op 550 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '1080p WEB-DL (Efficient)', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '1080p WEB-DL (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 550

-- --- BEGIN op 551 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '1080p WEBRip', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 551

-- --- BEGIN op 552 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '576p Bluray', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 552

-- --- BEGIN op 553 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '576p WEB-DL', 'sonarr', 4500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 553

-- --- BEGIN op 554 ( update custom_format "1080p BluRay 265" )
DELETE FROM custom_format_tags WHERE custom_format_name = '1080p BluRay 265' AND tag_name = 'Source';

insert into "tags" ("name") values ('Release Title') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1080p BluRay 265', 'Release Title');
-- --- END op 554

-- --- BEGIN op 555 ( update custom_format "1080p WEBDL 265" )
DELETE FROM custom_format_tags WHERE custom_format_name = '1080p WEBDL 265' AND tag_name = 'Source';

insert into "tags" ("name") values ('Release Title') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1080p WEBDL 265', 'Release Title');
-- --- END op 555

-- --- BEGIN op 556 ( update custom_format "1080p WEBDL 264" )
DELETE FROM custom_format_tags WHERE custom_format_name = '1080p WEBDL 264' AND tag_name = 'Source';

insert into "tags" ("name") values ('Release Title') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1080p WEBDL 264', 'Release Title');
-- --- END op 556

-- --- BEGIN op 557 ( update custom_format "1080p BluRay 264" )
DELETE FROM custom_format_tags WHERE custom_format_name = '1080p BluRay 264' AND tag_name = 'Source';

insert into "tags" ("name") values ('Release Title') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1080p BluRay 264', 'Release Title');
-- --- END op 557

-- --- BEGIN op 558 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'x265', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'x265'
    AND arr_type = 'sonarr'
);
-- --- END op 558

-- --- BEGIN op 559 ( create custom_format "h264|x264" )
insert into "custom_formats" ("name", "description") values ('h264|x264', '');
-- --- END op 559

-- --- BEGIN op 560 ( update custom_format "h264|x264" )
update "custom_formats" set "description" = 'Codec for h264 or x264 releases' where "name" = 'h264|x264' and "description" = '';
-- --- END op 560

-- --- BEGIN op 561 ( update custom_format "h264|x264" )
insert into "tags" ("name") values ('Codec') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('h264|x264', 'Codec');
-- --- END op 561

-- --- BEGIN op 562 ( create regular_expression "h|x 264 AVC" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('h|x 264 AVC', '[xh][ ._-]?264|\\bAVC(\\b|\\d)', 'AVC codec for h264 or x264', NULL);

insert into "tags" ("name") values ('Codec') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('h|x 264 AVC', 'Codec');

insert into "tags" ("name") values ('Regex') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('h|x 264 AVC', 'Regex');
-- --- END op 562

-- --- BEGIN op 563 ( update regular_expression "h|x 264 AVC" )
insert into "tags" ("name") values ('Release Title') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('h|x 264 AVC', 'Release Title');
-- --- END op 563

-- --- BEGIN op 564 ( update custom_format "1080p WEBDL 264" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p WEBDL 264'
	  AND name = 'Release type2'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 564

-- --- BEGIN op 565 ( update custom_format "1080p WEBDL 264" )
UPDATE custom_format_conditions
SET negate = 0
WHERE custom_format_name = '1080p WEBDL 264'
  AND name = 'Release type'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = '1080p WEBDL 264' AND condition_name = 'Release type' AND regular_expression_name = 'x264';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEBDL 264', 'Release type', 'h|x 264 AVC');
-- --- END op 565

-- --- BEGIN op 566 ( create regular_expression "h|x 265" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('h|x 265', '[xh][ ._-]?265|\\bHEVC(\\b|\\d)', 'Codec for h265 or x265', NULL);

insert into "tags" ("name") values ('Codec') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('h|x 265', 'Codec');

insert into "tags" ("name") values ('Release Title') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('h|x 265', 'Release Title');

insert into "tags" ("name") values ('Regex') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('h|x 265', 'Regex');
-- --- END op 566

-- --- BEGIN op 567 ( update custom_format "1080p BluRay 265" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p BluRay 265' AND condition_name = 'Release type' AND regular_expression_name = 'x265';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p BluRay 265', 'Release type', 'h|x 265');
-- --- END op 567

-- --- BEGIN op 568 ( update custom_format "1080p WEBDL 265" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p WEBDL 265' AND condition_name = 'Release type' AND regular_expression_name = 'x265';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEBDL 265', 'Release type', 'h|x 265');
-- --- END op 568

-- --- BEGIN op 569 ( update custom_format "1080p WEBDL 264" )
update "custom_formats" set "description" = 'BluRay 1080p h/x264 only' where "name" = '1080p WEBDL 264' and "description" = 'BluRay 1080p h/x265 only';
-- --- END op 569

-- --- BEGIN op 570 ( update custom_format "1080p WEBDL 264" )
update "custom_formats" set "description" = 'WEBDL 1080p h/x264 only' where "name" = '1080p WEBDL 264' and "description" = 'BluRay 1080p h/x264 only';
-- --- END op 570

-- --- BEGIN op 571 ( update custom_format "1080p BluRay 264" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p BluRay 264'
	  AND name = 'Release type2'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 571

-- --- BEGIN op 572 ( update custom_format "1080p BluRay 264" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p BluRay 264' AND condition_name = 'Release type' AND regular_expression_name = 'x264';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p BluRay 264', 'Release type', 'h|x 264 AVC');
-- --- END op 572
