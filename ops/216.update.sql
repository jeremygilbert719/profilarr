-- @operation: export
-- @entity: batch
-- @name: update
-- @exportedAt: 2026-10-04T04:18:10.179Z
-- @opIds: 2595, 2596, 2597, 2598, 2599, 2600, 2601, 2602, 2603, 2604, 2605, 2606, 2607, 2608, 2609, 2610, 2611, 2612, 2613, 2614, 2615, 2616, 2618, 2619, 2620, 2621, 2622, 2623, 2624, 2625, 2626, 2627, 2628, 2629, 2630, 2631, 2632, 2633, 2634, 2635, 2636, 2637, 2638, 2639, 2640, 2641, 2642, 2643, 2644, 2645, 2646, 2647, 2648, 2649, 2650, 2651, 2652, 2653, 2654, 2655, 2656, 2657, 2658, 2659, 2660, 2661, 2662, 2663, 2664, 2665, 2666, 2667, 2668, 2669, 2670, 2671, 2672, 2673, 2674, 2675, 2676, 2677, 2678, 2679, 2680, 2681, 2682, 2683, 2684, 2685, 2686, 2687, 2688, 2689, 2690, 2691, 2692, 2693, 2694, 2695, 2696, 2697, 2698, 2699, 2700, 2701, 2702, 2703, 2704, 2705, 2706, 2707, 2708, 2709, 2710, 2711, 2712, 2713, 2714, 2715, 2716, 2717, 2718, 2719, 2720, 2721, 2722, 2723, 2724, 2725

-- --- BEGIN op 2595 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 19000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 14000;
-- --- END op 2595

-- --- BEGIN op 2596 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 19000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 14000;
-- --- END op 2596

-- --- BEGIN op 2597 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 10000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'radarr'
  AND score = 8000;
-- --- END op 2597

-- --- BEGIN op 2598 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 10000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 8000;
-- --- END op 2598

-- --- BEGIN op 2599 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 9000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'radarr'
  AND score = 10000;
-- --- END op 2599

-- --- BEGIN op 2600 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 9000
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 10000;
-- --- END op 2600

-- --- BEGIN op 2601 ( update regular_expression "rmteam" )
update "regular_expressions" set "pattern" = '(?i)(^|[\s.-])rmteam\b' where "name" = 'rmteam' and "pattern" = '(?<=^|[\s.-])rmteam\b';
-- --- END op 2601

-- --- BEGIN op 2602 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 19600
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 19000;
-- --- END op 2602

-- --- BEGIN op 2603 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 19600
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 19000;
-- --- END op 2603

-- --- BEGIN op 2604 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 19999
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 19600;
-- --- END op 2604

-- --- BEGIN op 2605 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 19999
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 19600;
-- --- END op 2605

-- --- BEGIN op 2606 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 20005
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 19999;
-- --- END op 2606

-- --- BEGIN op 2607 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 20005
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 19999;
-- --- END op 2607

-- --- BEGIN op 2608 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = -2400
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'Over 4GB Size for WEBDL-1080p'
  AND arr_type = 'radarr'
  AND score = -2500;
-- --- END op 2608

-- --- BEGIN op 2609 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = -2400
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'Over 4GB Size for WEBDL-1080p'
  AND arr_type = 'sonarr'
  AND score = -2500;
-- --- END op 2609

-- --- BEGIN op 2610 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 19500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 20005;
-- --- END op 2610

-- --- BEGIN op 2611 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 19500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 20005;
-- --- END op 2611

-- --- BEGIN op 2612 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 20500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 19500;
-- --- END op 2612

-- --- BEGIN op 2613 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 20500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 19500;
-- --- END op 2613

-- --- BEGIN op 2614 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'rmteam - catchall', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'rmteam - catchall', 'rmteam');
-- --- END op 2614

-- --- BEGIN op 2615 ( create regular_expression "Phae" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Phae', '(?<=^|[\s.-])4K4U\b', 'Banned for Low Quality', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Phae', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Phae', 'Release Group');
-- --- END op 2615

-- --- BEGIN op 2616 ( update regular_expression "Phae" )
update "regular_expressions" set "pattern" = '(?i)(^|[\s.-])pahe[.-][ilx0-9]+\b' where "name" = 'Phae' and "pattern" = '(?<=^|[\s.-])4K4U\b';
-- --- END op 2616

-- --- BEGIN op 2618 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'Phae - catchall', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'Phae - catchall', 'Phae');
-- --- END op 2618

-- --- BEGIN op 2619 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'phae', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'phae', 'Phae');
-- --- END op 2619

-- --- BEGIN op 2620 ( update custom_format "Banned Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Banned Groups'
	  AND name = 'RMTeam'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2620

-- --- BEGIN op 2621 ( update custom_format "Banned Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Banned Groups'
	  AND name = 'phae'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2621

-- --- BEGIN op 2622 ( update custom_format "Banned Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Banned Groups'
	  AND name = 'Phae - catchall'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2622

-- --- BEGIN op 2623 ( update custom_format "Banned Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Banned Groups'
	  AND name = 'rmteam - catchall'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2623

-- --- BEGIN op 2624 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'Phae', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'Phae', 'Phae');
-- --- END op 2624

-- --- BEGIN op 2625 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'rmteam', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'rmteam', 'rmteam');
-- --- END op 2625

-- --- BEGIN op 2626 ( update regular_expression "rmteam" )
insert into "tags" ("name") values ('Release Title') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('rmteam', 'Release Title');
-- --- END op 2626

-- --- BEGIN op 2627 ( update custom_format "1080p TV Trash Groups" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = '1080p TV Trash Groups'
  AND name = 'ELiTE'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 2627

-- --- BEGIN op 2628 ( update custom_format "1080p TV Trash Groups" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = '1080p TV Trash Groups'
  AND name = 'MeGusta'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 2628

-- --- BEGIN op 2629 ( update custom_format "1080p TV Trash Groups" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = '1080p TV Trash Groups'
  AND name = 'PSA'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 2629

-- --- BEGIN op 2630 ( update custom_format "1080p TV Trash Groups" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = '1080p TV Trash Groups'
  AND name = 'RARBG'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 2630

-- --- BEGIN op 2631 ( update custom_format "1080p TV Trash Groups" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = '1080p TV Trash Groups'
  AND name = 'RMTeam'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 2631

-- --- BEGIN op 2632 ( update custom_format "1080p TV Trash Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = '1080p TV Trash Groups'
  AND name = 'RMTeam'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = '1080p TV Trash Groups' AND condition_name = 'RMTeam' AND regular_expression_name = 'rmteam';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p TV Trash Groups', 'RMTeam', 'rmteam');
-- --- END op 2632

-- --- BEGIN op 2633 ( update custom_format "1080p TV Trash Groups" )
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name = '1080p TV Trash Groups'
  AND name = 'RMTeam'
  AND type = 'release_title'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 2633

-- --- BEGIN op 2634 ( update regular_expression "rmteam" )
update "regular_expressions" set "description" = '(?i)(^|[\s.-])rmteam($|[\s.-]) (test)
(?i)(^|[\s.-])rmteam\b original' where "name" = 'rmteam' and "description" is null;
-- --- END op 2634

-- --- BEGIN op 2635 ( update regular_expression "rmteam" )
update "regular_expressions" set "pattern" = '(?i)(^|[\s.-])rmteam($|[\s.-])' where "name" = 'rmteam' and "pattern" = '(?i)(^|[\s.-])rmteam\b';
-- --- END op 2635

-- --- BEGIN op 2636 ( update custom_format "Banned Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Banned Groups'
	  AND name = 'rmteam'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2636

-- --- BEGIN op 2637 ( update custom_format "1080p TV Trash Groups" )
UPDATE custom_format_conditions
SET type = 'release_group', arr_type = 'sonarr'
WHERE custom_format_name = '1080p TV Trash Groups'
  AND name = 'RMTeam'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = '1080p TV Trash Groups' AND condition_name = 'RMTeam' AND regular_expression_name = 'rmteam';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p TV Trash Groups', 'RMTeam', 'rmteam');
-- --- END op 2637

-- --- BEGIN op 2638 ( update regular_expression "rmteam" )
update "regular_expressions" set "pattern" = '(?i)(^|[\s.-])rmteam\b' where "name" = 'rmteam' and "pattern" = '(?i)(^|[\s.-])rmteam($|[\s.-])';
-- --- END op 2638

-- --- BEGIN op 2639 ( update custom_format "1080p TV Trash Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = '1080p TV Trash Groups'
  AND name = 'RMTeam'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = '1080p TV Trash Groups' AND condition_name = 'RMTeam' AND regular_expression_name = 'rmteam';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p TV Trash Groups', 'RMTeam', 'rmteam');
-- --- END op 2639

-- --- BEGIN op 2640 ( create custom_format "rmteam" )
insert into "custom_formats" ("name", "description") values ('rmteam', '');
-- --- END op 2640

-- --- BEGIN op 2641 ( update custom_format "rmteam" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('rmteam', 'rmteam', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('rmteam', 'rmteam', 'rmteam');
-- --- END op 2641

-- --- BEGIN op 2642 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'rmteam', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'rmteam'
    AND arr_type = 'sonarr'
);
-- --- END op 2642

-- --- BEGIN op 2643 ( update custom_format "rmteam" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'rmteam'
  AND name = 'rmteam'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'rmteam' AND condition_name = 'rmteam' AND regular_expression_name = 'rmteam';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('rmteam', 'rmteam', 'rmteam');
-- --- END op 2643

-- --- BEGIN op 2644 ( update custom_format "rmteam" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'rmteam'
  AND name = 'rmteam'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'rmteam' AND condition_name = 'rmteam' AND regular_expression_name = 'rmteam';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('rmteam', 'rmteam', 'rmteam');
-- --- END op 2644

-- --- BEGIN op 2645 ( update custom_format "rmteam" )
insert into "tags" ("name") values ('Banned Group') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('rmteam', 'Banned Group');

insert into "tags" ("name") values ('Trash TV Group') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('rmteam', 'Trash TV Group');
-- --- END op 2645

-- --- BEGIN op 2646 ( update regular_expression "rmteam" )
update "regular_expressions" set "pattern" = '(?i)(?<=^|[\s.-])rmteam\b' where "name" = 'rmteam' and "pattern" = '(?i)(^|[\s.-])rmteam\b';
-- --- END op 2646

-- --- BEGIN op 2647 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'MeGusta', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'MeGusta', 'MeGusta');
-- --- END op 2647

-- --- BEGIN op 2648 ( update custom_format "Banned Groups (Release Title)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups (Release Title)', 'megusta', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups (Release Title)', 'megusta', 'MeGusta');
-- --- END op 2648

-- --- BEGIN op 2649 ( update custom_format "Banned Groups (Release Title)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups (Release Title)', 'rmteam', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups (Release Title)', 'rmteam', 'rmteam');
-- --- END op 2649

-- --- BEGIN op 2650 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Banned Groups (Release Title)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 2650

-- --- BEGIN op 2651 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 2651

-- --- BEGIN op 2652 ( update custom_format "1080p TV Trash Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p TV Trash Groups'
	  AND name = 'RMTeam'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2652

-- --- BEGIN op 2653 ( update custom_format "1080p TV Trash Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p TV Trash Groups', 'rmteam', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p TV Trash Groups', 'rmteam', 'rmteam');
-- --- END op 2653

-- --- BEGIN op 2654 ( update regular_expression "MeGusta" )
update "regular_expressions" set "description" = 'Banned for Low Quality. Allowed on HEVC Profiles
^-MeGusta$
(?<=^|[\s.-])MeGusta\b' where "name" = 'MeGusta' and "description" = 'Banned for Low Quality. Allowed on HEVC Profiles';
-- --- END op 2654

-- --- BEGIN op 2655 ( update regular_expression "MeGusta" )
update "regular_expressions" set "pattern" = '\b(-MeGusta)\b' where "name" = 'MeGusta' and "pattern" = '(?<=^|[\s.-])MeGusta\b';
-- --- END op 2655

-- --- BEGIN op 2656 ( update custom_format "1080p TV Trash Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p TV Trash Groups', 'av1', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p TV Trash Groups', 'av1', 'AV1');
-- --- END op 2656

-- --- BEGIN op 2657 ( update custom_format "1080p TV Trash Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p TV Trash Groups', 'web-dl', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p TV Trash Groups', 'web-dl', 'WEB-DL');
-- --- END op 2657

-- --- BEGIN op 2658 ( update custom_format "1080p TV Trash Groups" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p TV Trash Groups' AND condition_name = 'MeGusta' AND regular_expression_name = 'MeGusta';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p TV Trash Groups', 'MeGusta', 'MeGusta');
-- --- END op 2658

-- --- BEGIN op 2659 ( update regular_expression "MeGusta" )
update "regular_expressions" set "pattern" = '-\b(MeGusta)\b' where "name" = 'MeGusta' and "pattern" = '\b(-MeGusta)\b';
-- --- END op 2659

-- --- BEGIN op 2660 ( update custom_format "1080p TV Trash Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = '1080p TV Trash Groups'
  AND name = 'ELiTE'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = '1080p TV Trash Groups' AND condition_name = 'ELiTE' AND regular_expression_name = 'ELiTE';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p TV Trash Groups', 'ELiTE', 'ELiTE');
-- --- END op 2660

-- --- BEGIN op 2661 ( update custom_format "1080p TV Trash Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = '1080p TV Trash Groups'
  AND name = 'MeGusta'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = '1080p TV Trash Groups' AND condition_name = 'MeGusta' AND regular_expression_name = 'MeGusta';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p TV Trash Groups', 'MeGusta', 'MeGusta');
-- --- END op 2661

-- --- BEGIN op 2662 ( update custom_format "1080p TV Trash Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = '1080p TV Trash Groups'
  AND name = 'PSA'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = '1080p TV Trash Groups' AND condition_name = 'PSA' AND regular_expression_name = 'PSA';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p TV Trash Groups', 'PSA', 'PSA');
-- --- END op 2662

-- --- BEGIN op 2663 ( update custom_format "1080p TV Trash Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = '1080p TV Trash Groups'
  AND name = 'RARBG'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = '1080p TV Trash Groups' AND condition_name = 'RARBG' AND regular_expression_name = 'RARBG';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p TV Trash Groups', 'RARBG', 'RARBG');
-- --- END op 2663

-- --- BEGIN op 2664 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'rmteam', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'rmteam', 'rmteam');
-- --- END op 2664

-- --- BEGIN op 2665 ( update custom_format "1080p TV Trash Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p TV Trash Groups'
	  AND name = 'web-dl'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2665

-- --- BEGIN op 2666 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'MeGusta'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'MeGusta' AND regular_expression_name = 'MeGusta';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'MeGusta', 'MeGusta');
-- --- END op 2666

-- --- BEGIN op 2667 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = '4K4U'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = '4K4U' AND regular_expression_name = '4K4U';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', '4K4U', '4K4U');
-- --- END op 2667

-- --- BEGIN op 2668 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'AOC'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'AOC' AND regular_expression_name = 'AOC';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'AOC', 'AOC');
-- --- END op 2668

-- --- BEGIN op 2669 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'AROMA'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'AROMA' AND regular_expression_name = 'AROMA';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'AROMA', 'AROMA');
-- --- END op 2669

-- --- BEGIN op 2670 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'BLASPHEMY'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'BLASPHEMY' AND regular_expression_name = 'BLASPHEMY';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'BLASPHEMY', 'BLASPHEMY');
-- --- END op 2670

-- --- BEGIN op 2671 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'BOLS'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'BOLS' AND regular_expression_name = 'BOLS';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'BOLS', 'BOLS');
-- --- END op 2671

-- --- BEGIN op 2672 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'BTM'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'BTM' AND regular_expression_name = 'BTM';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'BTM', 'BTM');
-- --- END op 2672

-- --- BEGIN op 2673 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'BeyondHD'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'BeyondHD' AND regular_expression_name = 'BeyondHD';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'BeyondHD', 'BeyondHD');
-- --- END op 2673

-- --- BEGIN op 2674 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'BiTOR'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'BiTOR' AND regular_expression_name = 'BiTOR';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'BiTOR', 'BiTOR');
-- --- END op 2674

-- --- BEGIN op 2675 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'CLASSiCALHD'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'CLASSiCALHD' AND regular_expression_name = 'CLASSiCALHD';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'CLASSiCALHD', 'CLASSiCALHD');
-- --- END op 2675

-- --- BEGIN op 2676 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'CREATiVE24'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'CREATiVE24' AND regular_expression_name = 'CREATiVE24';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'CREATiVE24', 'CREATiVE24');
-- --- END op 2676

-- --- BEGIN op 2677 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'Casius08'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'Casius08' AND regular_expression_name = 'Casius08';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'Casius08', 'Casius08');
-- --- END op 2677

-- --- BEGIN op 2678 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'DRX'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'DRX' AND regular_expression_name = 'DRX';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'DRX', 'DRX');
-- --- END op 2678

-- --- BEGIN op 2679 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'DeViSiVE'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'DeViSiVE' AND regular_expression_name = 'DeViSiVE';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'DeViSiVE', 'DeViSiVE');
-- --- END op 2679

-- --- BEGIN op 2680 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'DepraveD'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'DepraveD' AND regular_expression_name = 'DepraveD';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'DepraveD', 'DepraveD');
-- --- END op 2680

-- --- BEGIN op 2681 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'E'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'E' AND regular_expression_name = 'E';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'E', 'E');
-- --- END op 2681

-- --- BEGIN op 2682 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'FGT'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'FGT' AND regular_expression_name = 'FGT';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'FGT', 'FGT');
-- --- END op 2682

-- --- BEGIN op 2683 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'Flights'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'Flights' AND regular_expression_name = 'Flights';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'Flights', 'Flights');
-- --- END op 2683

-- --- BEGIN op 2684 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'HDS'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'HDS' AND regular_expression_name = 'HDS';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'HDS', 'HDS');
-- --- END op 2684

-- --- BEGIN op 2685 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'KC'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'KC' AND regular_expression_name = 'KC';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'KC', 'KC');
-- --- END op 2685

-- --- BEGIN op 2686 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'LAMA'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'LAMA' AND regular_expression_name = 'LAMA';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'LAMA', 'LAMA');
-- --- END op 2686

-- --- BEGIN op 2687 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'MAMA'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'MAMA' AND regular_expression_name = 'MAMA';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'MAMA', 'MAMA');
-- --- END op 2687

-- --- BEGIN op 2688 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'MgB'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'MgB' AND regular_expression_name = 'MgB';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'MgB', 'MgB');
-- --- END op 2688

-- --- BEGIN op 2689 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'NAHOM'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'NAHOM' AND regular_expression_name = 'NAHOM';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'NAHOM', 'NAHOM');
-- --- END op 2689

-- --- BEGIN op 2690 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'NhaNc3'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'NhaNc3' AND regular_expression_name = 'NhaNc3';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'NhaNc3', 'NhaNc3');
-- --- END op 2690

-- --- BEGIN op 2691 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'NiCEHEVC'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'NiCEHEVC' AND regular_expression_name = 'NiCEHEVC';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'NiCEHEVC', 'NiCEHEVC');
-- --- END op 2691

-- --- BEGIN op 2692 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'NoGroup'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'NoGroup' AND regular_expression_name = 'NoGroup';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'NoGroup', 'NoGroup');
-- --- END op 2692

-- --- BEGIN op 2693 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'OEPlus'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'OEPlus' AND regular_expression_name = 'OEPlus';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'OEPlus', 'OEPlus');
-- --- END op 2693

-- --- BEGIN op 2694 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'Pahe'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'Pahe' AND regular_expression_name = 'pahe';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'Pahe', 'pahe');
-- --- END op 2694

-- --- BEGIN op 2695 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'RARBG'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'RARBG' AND regular_expression_name = 'RARBG';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'RARBG', 'RARBG');
-- --- END op 2695

-- --- BEGIN op 2696 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'SHD'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'SHD' AND regular_expression_name = 'SHD';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'SHD', 'SHD');
-- --- END op 2696

-- --- BEGIN op 2697 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'SM737'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'SM737' AND regular_expression_name = 'SM737';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'SM737', 'SM737');
-- --- END op 2697

-- --- BEGIN op 2698 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'STUTTERSHIT'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'STUTTERSHIT' AND regular_expression_name = 'STUTTERSHIT';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'STUTTERSHIT', 'STUTTERSHIT');
-- --- END op 2698

-- --- BEGIN op 2699 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'ShieldBearer'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'ShieldBearer' AND regular_expression_name = 'ShieldBearer';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'ShieldBearer', 'ShieldBearer');
-- --- END op 2699

-- --- BEGIN op 2700 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'SumVision'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'SumVision' AND regular_expression_name = 'SumVision';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'SumVision', 'SumVision');
-- --- END op 2700

-- --- BEGIN op 2701 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'TEKNO3D'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'TEKNO3D' AND regular_expression_name = 'TEKNO3D';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'TEKNO3D', 'TEKNO3D');
-- --- END op 2701

-- --- BEGIN op 2702 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'Telly'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'Telly' AND regular_expression_name = 'Telly';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'Telly', 'Telly');
-- --- END op 2702

-- --- BEGIN op 2703 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'UnKn0wn'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'UnKn0wn' AND regular_expression_name = 'UnKn0wn';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'UnKn0wn', 'UnKn0wn');
-- --- END op 2703

-- --- BEGIN op 2704 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'VD0N'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'VD0N' AND regular_expression_name = 'VD0N';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'VD0N', 'VD0N');
-- --- END op 2704

-- --- BEGIN op 2705 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'VECTOR'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'VECTOR' AND regular_expression_name = 'VECTOR';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'VECTOR', 'VECTOR');
-- --- END op 2705

-- --- BEGIN op 2706 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'VisionXpert'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'VisionXpert' AND regular_expression_name = 'VisionXpert';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'VisionXpert', 'VisionXpert');
-- --- END op 2706

-- --- BEGIN op 2707 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'YIFY'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'YIFY' AND regular_expression_name = 'YIFY';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'YIFY', 'YIFY');
-- --- END op 2707

-- --- BEGIN op 2708 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'YTS'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'YTS' AND regular_expression_name = 'YTS';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'YTS', 'YTS');
-- --- END op 2708

-- --- BEGIN op 2709 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'jennaortegaUHD'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'jennaortegaUHD' AND regular_expression_name = 'jennaortegaUHD';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'jennaortegaUHD', 'jennaortegaUHD');
-- --- END op 2709

-- --- BEGIN op 2710 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'jff'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'jff' AND regular_expression_name = 'jff';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'jff', 'jff');
-- --- END op 2710

-- --- BEGIN op 2711 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'nikt0'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'nikt0' AND regular_expression_name = 'nikt0';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'nikt0', 'nikt0');
-- --- END op 2711

-- --- BEGIN op 2712 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'rbb'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'rbb' AND regular_expression_name = 'rbb';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'rbb', 'rbb');
-- --- END op 2712

-- --- BEGIN op 2713 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'tarunk9c'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'tarunk9c' AND regular_expression_name = 'tarunk9c';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'tarunk9c', 'tarunk9c');
-- --- END op 2713

-- --- BEGIN op 2714 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Banned Groups'
  AND name = 'x0r'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Banned Groups' AND condition_name = 'x0r' AND regular_expression_name = 'x0r';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'x0r', 'x0r');
-- --- END op 2714

-- --- BEGIN op 2715 ( update custom_format "1080p TV Trash Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p TV Trash Groups'
	  AND name = 'av1'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2715

-- --- BEGIN op 2716 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 4500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 6000;
-- --- END op 2716

-- --- BEGIN op 2717 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 4500
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 6000;
-- --- END op 2717

-- --- BEGIN op 2718 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 525
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '576p WEB-DL'
  AND arr_type = 'radarr'
  AND score = 625;
-- --- END op 2718

-- --- BEGIN op 2719 ( update quality_profile "1080p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 525
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '576p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 625;
-- --- END op 2719

-- --- BEGIN op 2720 ( update quality_profile "1080p Preferred Personal (Sports)" )
UPDATE quality_profile_custom_formats
SET score = 4500
WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 6000;
-- --- END op 2720

-- --- BEGIN op 2721 ( update quality_profile "1080p Preferred Personal (Sports)" )
UPDATE quality_profile_custom_formats
SET score = 4500
WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 6000;
-- --- END op 2721

-- --- BEGIN op 2722 ( update quality_profile "1080p Preferred Personal (Sports)" )
UPDATE quality_profile_custom_formats
SET score = 525
WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
  AND custom_format_name = '576p WEB-DL'
  AND arr_type = 'radarr'
  AND score = 625;
-- --- END op 2722

-- --- BEGIN op 2723 ( update quality_profile "1080p Preferred Personal (Sports)" )
UPDATE quality_profile_custom_formats
SET score = 525
WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
  AND custom_format_name = '576p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 625;
-- --- END op 2723

-- --- BEGIN op 2724 ( update quality_profile "1080p Preferred Personal (Sports)" )
UPDATE quality_profile_custom_formats
SET score = -500
WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
  AND custom_format_name = 'Over 4GB Size for WEBDL-1080p'
  AND arr_type = 'radarr'
  AND score = -2500;
-- --- END op 2724

-- --- BEGIN op 2725 ( update quality_profile "1080p Preferred Personal (Sports)" )
UPDATE quality_profile_custom_formats
SET score = -500
WHERE quality_profile_name = '1080p Preferred Personal (Sports)'
  AND custom_format_name = 'Over 4GB Size for WEBDL-1080p'
  AND arr_type = 'sonarr'
  AND score = -2500;
-- --- END op 2725
