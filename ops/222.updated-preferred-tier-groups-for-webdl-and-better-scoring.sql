-- @operation: export
-- @entity: batch
-- @name: updated preferred tier groups for WEBDL and better scoring
-- @exportedAt: 2026-10-26T17:54:33.737Z
-- @opIds: 2780, 2781, 2782, 2783, 2784, 2785, 2786, 2787, 2788, 2789, 2790, 2791, 2792, 2793, 2794, 2795, 2796, 2797, 2798, 2799, 2800, 2801, 2802, 2803, 2804, 2805, 2806, 2807, 2808, 2809, 2810, 2811, 2812, 2813, 2814, 2815, 2816, 2817, 2818, 2819, 2820, 2821, 2822, 2823, 2824, 2825, 2826, 2827, 2828, 2829, 2830, 2831, 2832, 2833, 2834, 2835, 2836, 2837, 2838, 2839, 2840, 2841, 2842, 2843, 2844, 2845, 2846, 2847, 2848, 2849, 2850, 2851, 2852, 2853, 2854, 2855, 2856, 2857, 2858, 2859, 2860, 2861, 2862, 2863, 2864, 2865, 2866, 2867, 2868, 2869, 2870, 2871, 2872, 2873, 2874, 2875, 2876, 2877, 2878, 2879, 2880, 2881, 2882, 2883, 2884, 2885, 2886, 2887, 2888, 2889, 2890, 2891, 2892, 2893, 2894, 2895, 2896, 2897, 2898, 2899, 2900, 2901, 2902, 2903, 2904, 2905, 2906, 2907, 2908, 2909, 2910, 2911, 2912, 2913, 2914, 2915, 2916, 2917, 2918, 2919, 2920, 2921, 2922, 2923, 2924, 2925, 2926, 2927, 2928, 2929, 2930, 2931, 2932, 2933, 2934, 2935, 2936, 2937, 2938, 2939, 2940, 2941, 2942, 2943, 2944, 2945, 2946, 2947, 2948, 2949, 2950, 2951, 2952, 2953

-- --- BEGIN op 2780 ( update quality_profile "2160p Preferred Personal" )
UPDATE quality_profile_custom_formats
SET score = 12000
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '2160p Remux'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 2780

-- --- BEGIN op 2781 ( create custom_format "1080p" )
insert into "custom_formats" ("name", "description") values ('1080p', '');
-- --- END op 2781

-- --- BEGIN op 2782 ( update custom_format "1080p" )
update "custom_formats" set "description" = '1080p Resolution' where "name" = '1080p' and "description" = '';
-- --- END op 2782

-- --- BEGIN op 2783 ( update custom_format "1080p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p', '1080p', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('1080p', '1080p', '1080p');
-- --- END op 2783

-- --- BEGIN op 2784 ( create regular_expression "WEBDL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WEBDL', '\bWEB[-_. ]?DL\b', 'Matches WEB-DL, WEB,DL, WEB DL, WEBDL', NULL);
-- --- END op 2784

-- --- BEGIN op 2785 ( update custom_format "WEBDL" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'WEBDL'
  AND name = 'WEB-DL'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_sources WHERE custom_format_name = 'WEBDL' AND condition_name = 'WEB-DL' AND source = 'web_dl';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEBDL', 'WEB-DL', 'WEBDL');
-- --- END op 2785

-- --- BEGIN op 2786 ( create regular_expression "Bluray" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Bluray', '\b[Bb]l[uu][-_. ]?[Rr]ay\b|\b[Bb][Dd][-_. ]?', 'Matches: bluray, Blu-Ray, bdrip, BRRip', NULL);
-- --- END op 2786

-- --- BEGIN op 2787 ( create custom_format "Bluray" )
insert into "custom_formats" ("name", "description") values ('Bluray', '');
-- --- END op 2787

-- --- BEGIN op 2788 ( update custom_format "Bluray" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bluray', 'Bluray', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bluray', 'Bluray', 'Bluray');
-- --- END op 2788

-- --- BEGIN op 2789 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '1080p', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '1080p'
    AND arr_type = 'radarr'
);
-- --- END op 2789

-- --- BEGIN op 2790 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', '1080p', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = '1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 2790

-- --- BEGIN op 2791 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 20500;
-- --- END op 2791

-- --- BEGIN op 2792 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 20500;
-- --- END op 2792

-- --- BEGIN op 2793 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p HDTV'
  AND arr_type = 'radarr'
  AND score = 5000;
-- --- END op 2793

-- --- BEGIN op 2794 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p HDTV'
  AND arr_type = 'sonarr'
  AND score = 5000;
-- --- END op 2794

-- --- BEGIN op 2795 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'radarr'
  AND score = 9000;
-- --- END op 2795

-- --- BEGIN op 2796 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 9000;
-- --- END op 2796

-- --- BEGIN op 2797 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '576p Bluray'
  AND arr_type = 'radarr'
  AND score = 6500;
-- --- END op 2797

-- --- BEGIN op 2798 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '576p Bluray'
  AND arr_type = 'sonarr'
  AND score = 6500;
-- --- END op 2798

-- --- BEGIN op 2799 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '720p Bluray'
  AND arr_type = 'radarr'
  AND score = 7000;
-- --- END op 2799

-- --- BEGIN op 2800 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = '720p Bluray'
  AND arr_type = 'sonarr'
  AND score = 7000;
-- --- END op 2800

-- --- BEGIN op 2801 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Bluray', 'radarr', 9000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2801

-- --- BEGIN op 2802 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Bluray', 'sonarr', 9000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2802

-- --- BEGIN op 2803 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'WEBDL', 'radarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'WEBDL'
    AND arr_type = 'radarr'
);
-- --- END op 2803

-- --- BEGIN op 2804 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'WEBDL', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'WEBDL'
    AND arr_type = 'sonarr'
);
-- --- END op 2804

-- --- BEGIN op 2805 ( create custom_format "Preferred WEBDL Groups Tier 1" )
insert into "custom_formats" ("name", "description") values ('Preferred WEBDL Groups Tier 1', '');
-- --- END op 2805

-- --- BEGIN op 2806 ( update custom_format "Preferred WEBDL Groups Tier 1" )
update "custom_formats" set "description" = 'Preferred release groups' where "name" = 'Preferred WEBDL Groups Tier 1' and "description" = '';
-- --- END op 2806

-- --- BEGIN op 2807 ( update custom_format "Preferred WEBDL Groups Tier 1" )
insert into "tags" ("name") values ('Preferred') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Preferred WEBDL Groups Tier 1', 'Preferred');
-- --- END op 2807

-- --- BEGIN op 2808 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', '1080p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Preferred WEBDL Groups Tier 1', '1080p', '1080p');
-- --- END op 2808

-- --- BEGIN op 2809 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'EDITH', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 1', 'EDITH', 'EDITH');
-- --- END op 2809

-- --- BEGIN op 2810 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'FLUX', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 1', 'FLUX', 'FLUX');
-- --- END op 2810

-- --- BEGIN op 2811 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'HEEL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 1', 'HEEL', 'HEEL');
-- --- END op 2811

-- --- BEGIN op 2812 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'HHWEB', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 1', 'HHWEB', 'HHWEB');
-- --- END op 2812

-- --- BEGIN op 2813 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'HONE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 1', 'HONE', 'HONE');
-- --- END op 2813

-- --- BEGIN op 2814 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'JermBox', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 1', 'JermBox', 'JermBox');
-- --- END op 2814

-- --- BEGIN op 2815 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'NTb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 1', 'NTb', 'NTb');
-- --- END op 2815

-- --- BEGIN op 2816 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'PlayWeb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 1', 'PlayWeb', 'playWEB');
-- --- END op 2816

-- --- BEGIN op 2817 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'TyHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 1', 'TyHD', 'TyHD');
-- --- END op 2817

-- --- BEGIN op 2818 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'Vialle', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 1', 'Vialle', 'Vialle');
-- --- END op 2818

-- --- BEGIN op 2819 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'Vyndros', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 1', 'Vyndros', 'Vyndros');
-- --- END op 2819

-- --- BEGIN op 2820 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'WEB-DL', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Preferred WEBDL Groups Tier 1', 'WEB-DL', 'web_dl');
-- --- END op 2820

-- --- BEGIN op 2821 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'edge2020', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 1', 'edge2020', 'edge2020');
-- --- END op 2821

-- --- BEGIN op 2822 ( create custom_format "Preferred WEBDL Groups Tier 2" )
insert into "custom_formats" ("name", "description") values ('Preferred WEBDL Groups Tier 2', '');
-- --- END op 2822

-- --- BEGIN op 2823 ( update custom_format "Preferred WEBDL Groups Tier 2" )
update "custom_formats" set "description" = 'Preferred release groups' where "name" = 'Preferred WEBDL Groups Tier 2' and "description" = '';
-- --- END op 2823

-- --- BEGIN op 2824 ( update custom_format "Preferred WEBDL Groups Tier 2" )
insert into "tags" ("name") values ('Preferred') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Preferred WEBDL Groups Tier 2', 'Preferred');
-- --- END op 2824

-- --- BEGIN op 2825 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', '1080p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Preferred WEBDL Groups Tier 2', '1080p', '1080p');
-- --- END op 2825

-- --- BEGIN op 2826 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'EDITH', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 2', 'EDITH', 'EDITH');
-- --- END op 2826

-- --- BEGIN op 2827 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'FLUX', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 2', 'FLUX', 'FLUX');
-- --- END op 2827

-- --- BEGIN op 2828 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'HEEL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 2', 'HEEL', 'HEEL');
-- --- END op 2828

-- --- BEGIN op 2829 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'HHWEB', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 2', 'HHWEB', 'HHWEB');
-- --- END op 2829

-- --- BEGIN op 2830 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'HONE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 2', 'HONE', 'HONE');
-- --- END op 2830

-- --- BEGIN op 2831 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'JermBox', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 2', 'JermBox', 'JermBox');
-- --- END op 2831

-- --- BEGIN op 2832 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'NTb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 2', 'NTb', 'NTb');
-- --- END op 2832

-- --- BEGIN op 2833 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'PlayWeb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 2', 'PlayWeb', 'playWEB');
-- --- END op 2833

-- --- BEGIN op 2834 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'TyHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 2', 'TyHD', 'TyHD');
-- --- END op 2834

-- --- BEGIN op 2835 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'Vialle', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 2', 'Vialle', 'Vialle');
-- --- END op 2835

-- --- BEGIN op 2836 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'Vyndros', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 2', 'Vyndros', 'Vyndros');
-- --- END op 2836

-- --- BEGIN op 2837 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'WEB-DL', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Preferred WEBDL Groups Tier 2', 'WEB-DL', 'web_dl');
-- --- END op 2837

-- --- BEGIN op 2838 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'edge2020', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 2', 'edge2020', 'edge2020');
-- --- END op 2838

-- --- BEGIN op 2839 ( create custom_format "Preferred WEBDL Sports Groups Tier 1" )
insert into "custom_formats" ("name", "description") values ('Preferred WEBDL Sports Groups Tier 1', '');
-- --- END op 2839

-- --- BEGIN op 2840 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
update "custom_formats" set "description" = 'Preferred release groups' where "name" = 'Preferred WEBDL Sports Groups Tier 1' and "description" = '';
-- --- END op 2840

-- --- BEGIN op 2841 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
insert into "tags" ("name") values ('Preferred') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Preferred WEBDL Sports Groups Tier 1', 'Preferred');
-- --- END op 2841

-- --- BEGIN op 2842 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', '1080p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Preferred WEBDL Sports Groups Tier 1', '1080p', '1080p');
-- --- END op 2842

-- --- BEGIN op 2843 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', 'EDITH', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Sports Groups Tier 1', 'EDITH', 'EDITH');
-- --- END op 2843

-- --- BEGIN op 2844 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', 'FLUX', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Sports Groups Tier 1', 'FLUX', 'FLUX');
-- --- END op 2844

-- --- BEGIN op 2845 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', 'HEEL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Sports Groups Tier 1', 'HEEL', 'HEEL');
-- --- END op 2845

-- --- BEGIN op 2846 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', 'HHWEB', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Sports Groups Tier 1', 'HHWEB', 'HHWEB');
-- --- END op 2846

-- --- BEGIN op 2847 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', 'HONE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Sports Groups Tier 1', 'HONE', 'HONE');
-- --- END op 2847

-- --- BEGIN op 2848 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', 'JermBox', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Sports Groups Tier 1', 'JermBox', 'JermBox');
-- --- END op 2848

-- --- BEGIN op 2849 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', 'NTb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Sports Groups Tier 1', 'NTb', 'NTb');
-- --- END op 2849

-- --- BEGIN op 2850 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', 'PlayWeb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Sports Groups Tier 1', 'PlayWeb', 'playWEB');
-- --- END op 2850

-- --- BEGIN op 2851 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', 'TyHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Sports Groups Tier 1', 'TyHD', 'TyHD');
-- --- END op 2851

-- --- BEGIN op 2852 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', 'Vialle', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Sports Groups Tier 1', 'Vialle', 'Vialle');
-- --- END op 2852

-- --- BEGIN op 2853 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', 'Vyndros', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Sports Groups Tier 1', 'Vyndros', 'Vyndros');
-- --- END op 2853

-- --- BEGIN op 2854 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', 'WEB-DL', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Preferred WEBDL Sports Groups Tier 1', 'WEB-DL', 'web_dl');
-- --- END op 2854

-- --- BEGIN op 2855 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Sports Groups Tier 1', 'edge2020', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Sports Groups Tier 1', 'edge2020', 'edge2020');
-- --- END op 2855

-- --- BEGIN op 2856 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Sports Groups Tier 1'
	  AND name = 'EDITH'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2856

-- --- BEGIN op 2857 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Sports Groups Tier 1'
	  AND name = 'FLUX'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2857

-- --- BEGIN op 2858 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Sports Groups Tier 1'
	  AND name = 'HHWEB'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2858

-- --- BEGIN op 2859 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Sports Groups Tier 1'
	  AND name = 'HONE'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2859

-- --- BEGIN op 2860 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Sports Groups Tier 1'
	  AND name = 'NTb'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2860

-- --- BEGIN op 2861 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Sports Groups Tier 1'
	  AND name = 'PlayWeb'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2861

-- --- BEGIN op 2862 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Sports Groups Tier 1'
	  AND name = 'TyHD'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2862

-- --- BEGIN op 2863 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Sports Groups Tier 1'
	  AND name = 'Vialle'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2863

-- --- BEGIN op 2864 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Sports Groups Tier 1'
	  AND name = 'Vyndros'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2864

-- --- BEGIN op 2865 ( update custom_format "Preferred WEBDL Sports Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Sports Groups Tier 1'
	  AND name = 'edge2020'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2865

-- --- BEGIN op 2866 ( update custom_format "Preferred WEBDL Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 1'
	  AND name = 'EDITH'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2866

-- --- BEGIN op 2867 ( update custom_format "Preferred WEBDL Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 1'
	  AND name = 'HEEL'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2867

-- --- BEGIN op 2868 ( update custom_format "Preferred WEBDL Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 1'
	  AND name = 'HHWEB'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2868

-- --- BEGIN op 2869 ( update custom_format "Preferred WEBDL Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 1'
	  AND name = 'HONE'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2869

-- --- BEGIN op 2870 ( update custom_format "Preferred WEBDL Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 1'
	  AND name = 'NTb'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2870

-- --- BEGIN op 2871 ( update custom_format "Preferred WEBDL Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 1'
	  AND name = 'PlayWeb'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2871

-- --- BEGIN op 2872 ( update custom_format "Preferred WEBDL Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 1'
	  AND name = 'TyHD'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2872

-- --- BEGIN op 2873 ( update custom_format "Preferred WEBDL Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 1'
	  AND name = 'Vialle'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2873

-- --- BEGIN op 2874 ( update custom_format "Preferred WEBDL Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 1'
	  AND name = 'Vyndros'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2874

-- --- BEGIN op 2875 ( update custom_format "Preferred WEBDL Groups Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 1'
	  AND name = 'edge2020'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2875

-- --- BEGIN op 2876 ( update custom_format "Preferred WEBDL Groups Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 2'
	  AND name = 'EDITH'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2876

-- --- BEGIN op 2877 ( update custom_format "Preferred WEBDL Groups Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 2'
	  AND name = 'FLUX'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2877

-- --- BEGIN op 2878 ( update custom_format "Preferred WEBDL Groups Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 2'
	  AND name = 'HEEL'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2878

-- --- BEGIN op 2879 ( update custom_format "Preferred WEBDL Groups Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 2'
	  AND name = 'HHWEB'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2879

-- --- BEGIN op 2880 ( update custom_format "Preferred WEBDL Groups Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 2'
	  AND name = 'HONE'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2880

-- --- BEGIN op 2881 ( update custom_format "Preferred WEBDL Groups Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 2'
	  AND name = 'JermBox'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2881

-- --- BEGIN op 2882 ( update custom_format "Preferred WEBDL Groups Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 2'
	  AND name = 'NTb'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2882

-- --- BEGIN op 2883 ( update custom_format "Preferred WEBDL Groups Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 2'
	  AND name = 'PlayWeb'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2883

-- --- BEGIN op 2884 ( update custom_format "Preferred WEBDL Groups Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 2'
	  AND name = 'edge2020'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2884

-- --- BEGIN op 2885 ( create custom_format "Preferred WEBDL Groups Tier 3" )
insert into "custom_formats" ("name", "description") values ('Preferred WEBDL Groups Tier 3', '');
-- --- END op 2885

-- --- BEGIN op 2886 ( update custom_format "Preferred WEBDL Groups Tier 3" )
update "custom_formats" set "description" = 'Preferred release groups' where "name" = 'Preferred WEBDL Groups Tier 3' and "description" = '';
-- --- END op 2886

-- --- BEGIN op 2887 ( update custom_format "Preferred WEBDL Groups Tier 3" )
insert into "tags" ("name") values ('Preferred') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Preferred WEBDL Groups Tier 3', 'Preferred');
-- --- END op 2887

-- --- BEGIN op 2888 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', '1080p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Preferred WEBDL Groups Tier 3', '1080p', '1080p');
-- --- END op 2888

-- --- BEGIN op 2889 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'EDITH', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'EDITH', 'EDITH');
-- --- END op 2889

-- --- BEGIN op 2890 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'FLUX', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'FLUX', 'FLUX');
-- --- END op 2890

-- --- BEGIN op 2891 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'HEEL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'HEEL', 'HEEL');
-- --- END op 2891

-- --- BEGIN op 2892 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'HHWEB', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'HHWEB', 'HHWEB');
-- --- END op 2892

-- --- BEGIN op 2893 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'HONE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'HONE', 'HONE');
-- --- END op 2893

-- --- BEGIN op 2894 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'JermBox', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'JermBox', 'JermBox');
-- --- END op 2894

-- --- BEGIN op 2895 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'NTb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'NTb', 'NTb');
-- --- END op 2895

-- --- BEGIN op 2896 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'PlayWeb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'PlayWeb', 'playWEB');
-- --- END op 2896

-- --- BEGIN op 2897 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'TyHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'TyHD', 'TyHD');
-- --- END op 2897

-- --- BEGIN op 2898 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'Vialle', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'Vialle', 'Vialle');
-- --- END op 2898

-- --- BEGIN op 2899 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'Vyndros', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'Vyndros', 'Vyndros');
-- --- END op 2899

-- --- BEGIN op 2900 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'WEB-DL', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Preferred WEBDL Groups Tier 3', 'WEB-DL', 'web_dl');
-- --- END op 2900

-- --- BEGIN op 2901 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'edge2020', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'edge2020', 'edge2020');
-- --- END op 2901

-- --- BEGIN op 2902 ( update custom_format "Preferred WEBDL Groups Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 2', 'HONE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 2', 'HONE', 'HONE');
-- --- END op 2902

-- --- BEGIN op 2903 ( update custom_format "Preferred WEBDL Groups Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 3'
	  AND name = 'FLUX'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2903

-- --- BEGIN op 2904 ( update custom_format "Preferred WEBDL Groups Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 3'
	  AND name = 'HEEL'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2904

-- --- BEGIN op 2905 ( update custom_format "Preferred WEBDL Groups Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 3'
	  AND name = 'HHWEB'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2905

-- --- BEGIN op 2906 ( update custom_format "Preferred WEBDL Groups Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 3'
	  AND name = 'HONE'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2906

-- --- BEGIN op 2907 ( update custom_format "Preferred WEBDL Groups Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 3'
	  AND name = 'JermBox'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2907

-- --- BEGIN op 2908 ( update custom_format "Preferred WEBDL Groups Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 3'
	  AND name = 'PlayWeb'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2908

-- --- BEGIN op 2909 ( update custom_format "Preferred WEBDL Groups Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 3'
	  AND name = 'TyHD'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2909

-- --- BEGIN op 2910 ( update custom_format "Preferred WEBDL Groups Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 3'
	  AND name = 'Vialle'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2910

-- --- BEGIN op 2911 ( update custom_format "Preferred WEBDL Groups Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 3'
	  AND name = 'Vyndros'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2911

-- --- BEGIN op 2912 ( create custom_format "Preferred WEBDL Groups Tier 4" )
insert into "custom_formats" ("name", "description") values ('Preferred WEBDL Groups Tier 4', '');
-- --- END op 2912

-- --- BEGIN op 2913 ( update custom_format "Preferred WEBDL Groups Tier 4" )
update "custom_formats" set "description" = 'Preferred release groups' where "name" = 'Preferred WEBDL Groups Tier 4' and "description" = '';
-- --- END op 2913

-- --- BEGIN op 2914 ( update custom_format "Preferred WEBDL Groups Tier 4" )
insert into "tags" ("name") values ('Preferred') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Preferred WEBDL Groups Tier 4', 'Preferred');
-- --- END op 2914

-- --- BEGIN op 2915 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', '1080p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Preferred WEBDL Groups Tier 4', '1080p', '1080p');
-- --- END op 2915

-- --- BEGIN op 2916 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'EDITH', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 4', 'EDITH', 'EDITH');
-- --- END op 2916

-- --- BEGIN op 2917 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'FLUX', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 4', 'FLUX', 'FLUX');
-- --- END op 2917

-- --- BEGIN op 2918 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'HEEL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 4', 'HEEL', 'HEEL');
-- --- END op 2918

-- --- BEGIN op 2919 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'HHWEB', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 4', 'HHWEB', 'HHWEB');
-- --- END op 2919

-- --- BEGIN op 2920 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'HONE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 4', 'HONE', 'HONE');
-- --- END op 2920

-- --- BEGIN op 2921 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'JermBox', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 4', 'JermBox', 'JermBox');
-- --- END op 2921

-- --- BEGIN op 2922 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'NTb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 4', 'NTb', 'NTb');
-- --- END op 2922

-- --- BEGIN op 2923 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'PlayWeb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 4', 'PlayWeb', 'playWEB');
-- --- END op 2923

-- --- BEGIN op 2924 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'TyHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 4', 'TyHD', 'TyHD');
-- --- END op 2924

-- --- BEGIN op 2925 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'Vialle', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 4', 'Vialle', 'Vialle');
-- --- END op 2925

-- --- BEGIN op 2926 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'Vyndros', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 4', 'Vyndros', 'Vyndros');
-- --- END op 2926

-- --- BEGIN op 2927 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'WEB-DL', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Preferred WEBDL Groups Tier 4', 'WEB-DL', 'web_dl');
-- --- END op 2927

-- --- BEGIN op 2928 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'edge2020', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 4', 'edge2020', 'edge2020');
-- --- END op 2928

-- --- BEGIN op 2929 ( update custom_format "Preferred WEBDL Groups Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 4'
	  AND name = 'EDITH'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2929

-- --- BEGIN op 2930 ( update custom_format "Preferred WEBDL Groups Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 4'
	  AND name = 'FLUX'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2930

-- --- BEGIN op 2931 ( update custom_format "Preferred WEBDL Groups Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 4'
	  AND name = 'HEEL'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2931

-- --- BEGIN op 2932 ( update custom_format "Preferred WEBDL Groups Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 4'
	  AND name = 'HONE'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2932

-- --- BEGIN op 2933 ( update custom_format "Preferred WEBDL Groups Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 4'
	  AND name = 'JermBox'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2933

-- --- BEGIN op 2934 ( update custom_format "Preferred WEBDL Groups Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 4'
	  AND name = 'NTb'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2934

-- --- BEGIN op 2935 ( update custom_format "Preferred WEBDL Groups Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 4'
	  AND name = 'TyHD'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2935

-- --- BEGIN op 2936 ( update custom_format "Preferred WEBDL Groups Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 4'
	  AND name = 'Vialle'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2936

-- --- BEGIN op 2937 ( update custom_format "Preferred WEBDL Groups Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 4'
	  AND name = 'Vyndros'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2937

-- --- BEGIN op 2938 ( update custom_format "Preferred WEBDL Groups Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Preferred WEBDL Groups Tier 4'
	  AND name = 'edge2020'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2938

-- --- BEGIN op 2939 ( update custom_format "Preferred WEBDL Groups Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 1', 'HEEL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 1', 'HEEL', 'HEEL');
-- --- END op 2939

-- --- BEGIN op 2940 ( delete custom_format "Preferred WEBDL Sports Groups Tier 1" )
delete from "custom_formats" where "name" = 'Preferred WEBDL Sports Groups Tier 1';
-- --- END op 2940

-- --- BEGIN op 2941 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'Preferred WEBDL Groups'
  AND arr_type = 'radarr'
  AND score = 4000;
-- --- END op 2941

-- --- BEGIN op 2942 ( update quality_profile "1080p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Preferred Personal'
  AND custom_format_name = 'Preferred WEBDL Groups'
  AND arr_type = 'sonarr'
  AND score = 4000;
-- --- END op 2942

-- --- BEGIN op 2943 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Preferred WEBDL Groups Tier 1', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Preferred WEBDL Groups Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2943

-- --- BEGIN op 2944 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Preferred WEBDL Groups Tier 1', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Preferred WEBDL Groups Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2944

-- --- BEGIN op 2945 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Preferred WEBDL Groups Tier 2', 'radarr', 8000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Preferred WEBDL Groups Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2945

-- --- BEGIN op 2946 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Preferred WEBDL Groups Tier 2', 'sonarr', 8000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Preferred WEBDL Groups Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2946

-- --- BEGIN op 2947 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Preferred WEBDL Groups Tier 3', 'radarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Preferred WEBDL Groups Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2947

-- --- BEGIN op 2948 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Preferred WEBDL Groups Tier 3', 'sonarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Preferred WEBDL Groups Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2948

-- --- BEGIN op 2949 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Preferred WEBDL Groups Tier 4', 'radarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Preferred WEBDL Groups Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 2949

-- --- BEGIN op 2950 ( update quality_profile "1080p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred Personal', 'Preferred WEBDL Groups Tier 4', 'sonarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred Personal'
    AND custom_format_name = 'Preferred WEBDL Groups Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 2950

-- --- BEGIN op 2951 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'd3g', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'd3g', 'd3g');
-- --- END op 2951

-- --- BEGIN op 2952 ( update custom_format "Preferred WEBDL Groups Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 4', 'KiNGS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 4', 'KiNGS', 'KiNGS');
-- --- END op 2952

-- --- BEGIN op 2953 ( update custom_format "Preferred WEBDL Groups Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Preferred WEBDL Groups Tier 3', 'New Condition', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Preferred WEBDL Groups Tier 3', 'New Condition', 'KONTRAST');
-- --- END op 2953
