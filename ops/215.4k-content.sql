-- @operation: export
-- @entity: batch
-- @name: 4k content
-- @exportedAt: 2026-09-05T10:31:05.767Z
-- @opIds: 2371, 2372, 2373, 2374, 2375, 2376, 2377, 2378, 2379, 2380, 2381, 2382, 2383, 2384, 2385, 2386, 2387, 2388, 2389, 2390, 2391, 2392, 2393, 2394, 2395, 2396, 2397, 2398, 2399, 2400, 2401, 2402, 2403, 2404, 2405, 2406, 2407, 2408, 2409, 2410, 2411, 2412, 2413, 2414, 2415, 2416, 2417, 2418, 2419, 2420, 2421, 2422, 2423, 2424, 2425, 2426, 2427, 2428, 2429, 2430, 2431, 2432, 2433, 2434, 2435, 2436, 2437, 2438, 2439, 2440, 2441, 2442, 2443, 2444, 2445, 2446, 2447, 2448, 2449, 2450, 2451, 2452, 2453, 2454, 2455, 2456, 2457, 2458, 2459, 2460, 2461, 2462, 2463, 2464, 2465, 2466, 2467, 2468, 2469, 2470, 2471, 2472, 2473, 2474, 2475, 2476, 2477, 2478, 2479, 2480, 2481, 2482, 2483, 2484, 2485, 2486, 2487, 2488, 2489, 2490, 2491, 2492, 2493, 2494, 2495, 2496, 2497, 2498, 2499, 2500, 2501, 2502, 2503, 2504, 2505, 2506, 2507, 2508, 2509, 2510, 2511, 2512, 2513, 2514, 2515, 2516, 2517, 2518, 2519, 2520, 2521, 2522, 2523, 2524, 2525, 2526, 2527, 2528, 2529, 2530, 2531, 2532, 2533, 2534, 2535, 2536, 2537, 2538, 2539, 2540, 2541, 2542, 2543, 2544, 2545, 2546, 2547, 2548, 2549, 2550, 2551, 2552, 2553, 2554, 2555, 2556, 2557, 2558, 2559, 2560, 2561, 2562, 2563, 2564, 2565, 2566, 2567, 2568, 2569, 2570, 2571, 2572, 2573, 2574, 2575, 2576, 2577, 2578, 2579, 2580, 2581, 2582, 2583, 2584, 2585, 2586, 2587, 2588, 2589, 2590, 2591, 2592, 2593

-- --- BEGIN op 2371 ( create quality_profile "2160p Preferred Personal" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('2160p Preferred Personal', '1080p Preferred Personal

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

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Preferred Personal', '1080p Quality');

insert into "tags" ("name") values ('Quality Profile') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Preferred Personal', 'Quality Profile');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('2160p Preferred Personal', '1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '1080p', 'Bluray-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '1080p', 'WEBDL-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '1080p', 'WEBRip-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '1080p', 'Remux-1080p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '1080p', 'HDTV-1080p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Preferred Personal', NULL, '1080p', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('2160p Preferred Personal', '720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '720p', 'Bluray-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '720p', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '720p', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '720p', 'HDTV-720p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Preferred Personal', NULL, '720p', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('2160p Preferred Personal', '2160p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '2160p', 'Bluray-2160p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '2160p', 'WEBDL-2160p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '2160p', 'Remux-2160p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '2160p', 'WEBRip-2160p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', '2160p', 'HDTV-2160p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Preferred Personal', NULL, '2160p', 2, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('2160p Preferred Personal', 'Standard');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Standard', 'Bluray-576p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Standard', 'Bluray-480p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Standard', 'WEBDL-480p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Standard', 'WEBRip-480p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Standard', 'HDTV-480p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Standard', 'DVD-R', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Standard', 'DVD', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Standard', 'SDTV', 7);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Preferred Personal', NULL, 'Standard', 3, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('2160p Preferred Personal', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Preferred Personal', NULL, 'Pre-releases', 4, 0, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('2160p Preferred Personal', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Preferred Personal', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Preferred Personal', NULL, 'Unwanted', 5, 0, 0);
-- --- END op 2371

-- --- BEGIN op 2372 ( update quality_profile "2160p Preferred Personal" )
update "quality_profiles" set "minimum_custom_format_score" = 4000 where "name" = '2160p Preferred Personal' and "minimum_custom_format_score" = 0;
-- --- END op 2372

-- --- BEGIN op 2373 ( update quality_profile "2160p Preferred Personal" )
update "quality_profiles" set "upgrade_until_score" = 1000000 where "name" = '2160p Preferred Personal' and "upgrade_until_score" = 0;
-- --- END op 2373

-- --- BEGIN op 2374 ( update quality_profile "2160p Preferred Personal" )
update "quality_profiles" set "upgrade_score_increment" = 100 where "name" = '2160p Preferred Personal' and "upgrade_score_increment" = 1;
-- --- END op 2374

-- --- BEGIN op 2375 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '1080p Bluray', 'radarr', 14000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2375

-- --- BEGIN op 2376 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '1080p Bluray', 'sonarr', 14000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2376

-- --- BEGIN op 2377 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '1080p Bluray Preferred Groups', 'radarr', 50000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '1080p Bluray Preferred Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2377

-- --- BEGIN op 2378 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '1080p Bluray Preferred Groups', 'sonarr', 50000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '1080p Bluray Preferred Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2378

-- --- BEGIN op 2379 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '1080p HDTV', 'radarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2379

-- --- BEGIN op 2380 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '1080p HDTV', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2380

-- --- BEGIN op 2381 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '1080p TV Trash Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '1080p TV Trash Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2381

-- --- BEGIN op 2382 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '1080p TV Trash Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '1080p TV Trash Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2382

-- --- BEGIN op 2383 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '1080p WEB-DL', 'radarr', 8000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2383

-- --- BEGIN op 2384 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '1080p WEB-DL', 'sonarr', 8000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2384

-- --- BEGIN op 2385 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '1080p WEBRip', 'radarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 2385

-- --- BEGIN op 2386 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '1080p WEBRip', 'sonarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 2386

-- --- BEGIN op 2387 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '576p Bluray', 'radarr', 6500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2387

-- --- BEGIN op 2388 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '576p Bluray', 'sonarr', 6500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2388

-- --- BEGIN op 2389 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '576p WEB-DL', 'radarr', 625
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2389

-- --- BEGIN op 2390 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '576p WEB-DL', 'sonarr', 625
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2390

-- --- BEGIN op 2391 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '720p Bluray', 'radarr', 7000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2391

-- --- BEGIN op 2392 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '720p Bluray', 'sonarr', 7000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2392

-- --- BEGIN op 2393 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '720p HDTV', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2393

-- --- BEGIN op 2394 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '720p HDTV', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2394

-- --- BEGIN op 2395 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '720p WEB-DL', 'radarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2395

-- --- BEGIN op 2396 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '720p WEB-DL', 'sonarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2396

-- --- BEGIN op 2397 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '720p WEBRip', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 2397

-- --- BEGIN op 2398 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '720p WEBRip', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 2398

-- --- BEGIN op 2399 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'AAC', 'radarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'AAC'
    AND arr_type = 'radarr'
);
-- --- END op 2399

-- --- BEGIN op 2400 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'AAC', 'sonarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'AAC'
    AND arr_type = 'sonarr'
);
-- --- END op 2400

-- --- BEGIN op 2401 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'AMZN', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 2401

-- --- BEGIN op 2402 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'AMZN', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 2402

-- --- BEGIN op 2403 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'ATVP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 2403

-- --- BEGIN op 2404 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'ATVP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 2404

-- --- BEGIN op 2405 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'AV1', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'AV1'
    AND arr_type = 'radarr'
);
-- --- END op 2405

-- --- BEGIN op 2406 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'AV1', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'AV1'
    AND arr_type = 'sonarr'
);
-- --- END op 2406

-- --- BEGIN op 2407 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Atmos', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'radarr'
);
-- --- END op 2407

-- --- BEGIN op 2408 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Atmos', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'sonarr'
);
-- --- END op 2408

-- --- BEGIN op 2409 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'B&W', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 2409

-- --- BEGIN op 2410 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'B&W', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'B&W'
    AND arr_type = 'sonarr'
);
-- --- END op 2410

-- --- BEGIN op 2411 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'BCORE', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 2411

-- --- BEGIN op 2412 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'BCORE', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'sonarr'
);
-- --- END op 2412

-- --- BEGIN op 2413 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2413

-- --- BEGIN op 2414 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2414

-- --- BEGIN op 2415 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Banned Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2415

-- --- BEGIN op 2416 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Banned Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2416

-- --- BEGIN op 2417 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Banned Remux', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Banned Remux'
    AND arr_type = 'radarr'
);
-- --- END op 2417

-- --- BEGIN op 2418 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Banned Remux', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Banned Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 2418

-- --- BEGIN op 2419 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Banned UHD Bluray', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2419

-- --- BEGIN op 2420 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Banned UHD Bluray', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2420

-- --- BEGIN op 2421 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Better Theatricals', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Better Theatricals'
    AND arr_type = 'radarr'
);
-- --- END op 2421

-- --- BEGIN op 2422 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'CR', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'CR'
    AND arr_type = 'radarr'
);
-- --- END op 2422

-- --- BEGIN op 2423 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'CR', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'CR'
    AND arr_type = 'sonarr'
);
-- --- END op 2423

-- --- BEGIN op 2424 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'CRAV', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'radarr'
);
-- --- END op 2424

-- --- BEGIN op 2425 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'CRAV', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'sonarr'
);
-- --- END op 2425

-- --- BEGIN op 2426 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DSNP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 2426

-- --- BEGIN op 2427 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DSNP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 2427

-- --- BEGIN op 2428 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DTS', 'radarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DTS'
    AND arr_type = 'radarr'
);
-- --- END op 2428

-- --- BEGIN op 2429 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DTS', 'sonarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DTS'
    AND arr_type = 'sonarr'
);
-- --- END op 2429

-- --- BEGIN op 2430 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DTS-ES', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'radarr'
);
-- --- END op 2430

-- --- BEGIN op 2431 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DTS-ES', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'sonarr'
);
-- --- END op 2431

-- --- BEGIN op 2432 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DTS-HD HRA', 'radarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'radarr'
);
-- --- END op 2432

-- --- BEGIN op 2433 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DTS-HD HRA', 'sonarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'sonarr'
);
-- --- END op 2433

-- --- BEGIN op 2434 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DTS-HD MA', 'radarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'radarr'
);
-- --- END op 2434

-- --- BEGIN op 2435 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DTS-HD MA', 'sonarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'sonarr'
);
-- --- END op 2435

-- --- BEGIN op 2436 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DTS-X', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'radarr'
);
-- --- END op 2436

-- --- BEGIN op 2437 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DTS-X', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'sonarr'
);
-- --- END op 2437

-- --- BEGIN op 2438 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DVD', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 2438

-- --- BEGIN op 2439 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'DVD', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 2439

-- --- BEGIN op 2440 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Dolby Atmos', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'radarr'
);
-- --- END op 2440

-- --- BEGIN op 2441 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Dolby Atmos', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'sonarr'
);
-- --- END op 2441

-- --- BEGIN op 2442 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Dolby Digital', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'radarr'
);
-- --- END op 2442

-- --- BEGIN op 2443 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Dolby Digital', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'sonarr'
);
-- --- END op 2443

-- --- BEGIN op 2444 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Dolby Digital +', 'radarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'radarr'
);
-- --- END op 2444

-- --- BEGIN op 2445 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Dolby Digital +', 'sonarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'sonarr'
);
-- --- END op 2445

-- --- BEGIN op 2446 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Dolby Vision', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'radarr'
);
-- --- END op 2446

-- --- BEGIN op 2447 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Dolby Vision', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'sonarr'
);
-- --- END op 2447

-- --- BEGIN op 2448 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Dolby Vision (Without Fallback)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'radarr'
);
-- --- END op 2448

-- --- BEGIN op 2449 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Dolby Vision (Without Fallback)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'sonarr'
);
-- --- END op 2449

-- --- BEGIN op 2450 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 2450

-- --- BEGIN op 2451 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 2451

-- --- BEGIN op 2452 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'FLAC', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'radarr'
);
-- --- END op 2452

-- --- BEGIN op 2453 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'FLAC', 'sonarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'sonarr'
);
-- --- END op 2453

-- --- BEGIN op 2454 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'FLUX', 'radarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'FLUX'
    AND arr_type = 'radarr'
);
-- --- END op 2454

-- --- BEGIN op 2455 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'FLUX', 'sonarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'FLUX'
    AND arr_type = 'sonarr'
);
-- --- END op 2455

-- --- BEGIN op 2456 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Full Disc', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'radarr'
);
-- --- END op 2456

-- --- BEGIN op 2457 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Full Disc', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'sonarr'
);
-- --- END op 2457

-- --- BEGIN op 2458 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'German DL', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'German DL'
    AND arr_type = 'radarr'
);
-- --- END op 2458

-- --- BEGIN op 2459 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'German DL', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'German DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2459

-- --- BEGIN op 2460 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'HDR', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'HDR'
    AND arr_type = 'radarr'
);
-- --- END op 2460

-- --- BEGIN op 2461 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'HDR', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'HDR'
    AND arr_type = 'sonarr'
);
-- --- END op 2461

-- --- BEGIN op 2462 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'HDR10+', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'radarr'
);
-- --- END op 2462

-- --- BEGIN op 2463 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'HDR10+', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'sonarr'
);
-- --- END op 2463

-- --- BEGIN op 2464 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'HEEL', 'radarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'HEEL'
    AND arr_type = 'radarr'
);
-- --- END op 2464

-- --- BEGIN op 2465 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'HEEL', 'sonarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'HEEL'
    AND arr_type = 'sonarr'
);
-- --- END op 2465

-- --- BEGIN op 2466 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'HMAX', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 2466

-- --- BEGIN op 2467 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'HMAX', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2467

-- --- BEGIN op 2468 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'HULU', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'HULU'
    AND arr_type = 'radarr'
);
-- --- END op 2468

-- --- BEGIN op 2469 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'HULU', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'HULU'
    AND arr_type = 'sonarr'
);
-- --- END op 2469

-- --- BEGIN op 2470 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'IMAX', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'IMAX'
    AND arr_type = 'radarr'
);
-- --- END op 2470

-- --- BEGIN op 2471 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Ivy', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Ivy'
    AND arr_type = 'radarr'
);
-- --- END op 2471

-- --- BEGIN op 2472 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Ivy', 'sonarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Ivy'
    AND arr_type = 'sonarr'
);
-- --- END op 2472

-- --- BEGIN op 2473 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'JermBox', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'JermBox'
    AND arr_type = 'radarr'
);
-- --- END op 2473

-- --- BEGIN op 2474 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'JermBox', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'JermBox'
    AND arr_type = 'sonarr'
);
-- --- END op 2474

-- --- BEGIN op 2475 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'MA', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 2475

-- --- BEGIN op 2476 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'MAX', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 2476

-- --- BEGIN op 2477 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'MAX', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2477

-- --- BEGIN op 2478 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Movies Anywhere Enhancement', 'radarr', -3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Movies Anywhere Enhancement'
    AND arr_type = 'radarr'
);
-- --- END op 2478

-- --- BEGIN op 2479 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'NF', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 2479

-- --- BEGIN op 2480 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'NF', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 2480

-- --- BEGIN op 2481 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'NJPWWorld', 'radarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'NJPWWorld'
    AND arr_type = 'radarr'
);
-- --- END op 2481

-- --- BEGIN op 2482 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'NJPWWorld', 'sonarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'NJPWWorld'
    AND arr_type = 'sonarr'
);
-- --- END op 2482

-- --- BEGIN op 2483 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 2483

-- --- BEGIN op 2484 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 2484

-- --- BEGIN op 2485 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Opus', 'radarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Opus'
    AND arr_type = 'radarr'
);
-- --- END op 2485

-- --- BEGIN op 2486 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Opus', 'sonarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Opus'
    AND arr_type = 'sonarr'
);
-- --- END op 2486

-- --- BEGIN op 2487 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Over 4GB Size for WEBDL-1080p', 'radarr', -2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Over 4GB Size for WEBDL-1080p'
    AND arr_type = 'radarr'
);
-- --- END op 2487

-- --- BEGIN op 2488 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Over 4GB Size for WEBDL-1080p', 'sonarr', -2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Over 4GB Size for WEBDL-1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 2488

-- --- BEGIN op 2489 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Over 7GB File Size', 'radarr', -5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Over 7GB File Size'
    AND arr_type = 'radarr'
);
-- --- END op 2489

-- --- BEGIN op 2490 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'PCM', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'PCM'
    AND arr_type = 'radarr'
);
-- --- END op 2490

-- --- BEGIN op 2491 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'PCM', 'sonarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'PCM'
    AND arr_type = 'sonarr'
);
-- --- END op 2491

-- --- BEGIN op 2492 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'PCOK', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'radarr'
);
-- --- END op 2492

-- --- BEGIN op 2493 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'PCOK', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'sonarr'
);
-- --- END op 2493

-- --- BEGIN op 2494 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'PMTP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'radarr'
);
-- --- END op 2494

-- --- BEGIN op 2495 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'PMTP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'sonarr'
);
-- --- END op 2495

-- --- BEGIN op 2496 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Preferred WEBDL Groups', 'radarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Preferred WEBDL Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2496

-- --- BEGIN op 2497 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Preferred WEBDL Groups', 'sonarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Preferred WEBDL Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2497

-- --- BEGIN op 2498 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'ROKU', 'radarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'radarr'
);
-- --- END op 2498

-- --- BEGIN op 2499 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'ROKU', 'sonarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'sonarr'
);
-- --- END op 2499

-- --- BEGIN op 2500 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Remux', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Remux'
    AND arr_type = 'radarr'
);
-- --- END op 2500

-- --- BEGIN op 2501 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Remux', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 2501

-- --- BEGIN op 2502 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'SDTV', 'radarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2502

-- --- BEGIN op 2503 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'SDTV', 'sonarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2503

-- --- BEGIN op 2504 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'SHO', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'SHO'
    AND arr_type = 'radarr'
);
-- --- END op 2504

-- --- BEGIN op 2505 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'SHO', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'SHO'
    AND arr_type = 'sonarr'
);
-- --- END op 2505

-- --- BEGIN op 2506 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'SKST', 'radarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 2506

-- --- BEGIN op 2507 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'SKST', 'sonarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 2507

-- --- BEGIN op 2508 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'STAN', 'radarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'STAN'
    AND arr_type = 'radarr'
);
-- --- END op 2508

-- --- BEGIN op 2509 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'STAN', 'sonarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'STAN'
    AND arr_type = 'sonarr'
);
-- --- END op 2509

-- --- BEGIN op 2510 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Season Pack', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 2510

-- --- BEGIN op 2511 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Series - Over 4GB for WEBDL-1080p', 'sonarr', -5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Series - Over 4GB for WEBDL-1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 2511

-- --- BEGIN op 2512 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Series - Under 4GB Preferred Range for WEBDL-1080p', 'sonarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Series - Under 4GB Preferred Range for WEBDL-1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 2512

-- --- BEGIN op 2513 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Series - Under 4GB Size for WEBDL-1080p', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Series - Under 4GB Size for WEBDL-1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 2513

-- --- BEGIN op 2514 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Special Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 2514

-- --- BEGIN op 2515 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'TNA+', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'TNA+'
    AND arr_type = 'radarr'
);
-- --- END op 2515

-- --- BEGIN op 2516 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'TNA+', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'TNA+'
    AND arr_type = 'sonarr'
);
-- --- END op 2516

-- --- BEGIN op 2517 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'TUBI', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'TUBI'
    AND arr_type = 'radarr'
);
-- --- END op 2517

-- --- BEGIN op 2518 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'TUBI', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'TUBI'
    AND arr_type = 'sonarr'
);
-- --- END op 2518

-- --- BEGIN op 2519 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Theatrical', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Theatrical'
    AND arr_type = 'radarr'
);
-- --- END op 2519

-- --- BEGIN op 2520 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'TrueHD', 'radarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'radarr'
);
-- --- END op 2520

-- --- BEGIN op 2521 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'TrueHD', 'sonarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'sonarr'
);
-- --- END op 2521

-- --- BEGIN op 2522 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Under 7GB File Size', 'radarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Under 7GB File Size'
    AND arr_type = 'radarr'
);
-- --- END op 2522

-- --- BEGIN op 2523 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 2523

-- --- BEGIN op 2524 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 2524

-- --- BEGIN op 2525 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'WWENetwork', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'WWENetwork'
    AND arr_type = 'radarr'
);
-- --- END op 2525

-- --- BEGIN op 2526 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'WWENetwork', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'WWENetwork'
    AND arr_type = 'sonarr'
);
-- --- END op 2526

-- --- BEGIN op 2527 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'WeTV', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'WeTV'
    AND arr_type = 'radarr'
);
-- --- END op 2527

-- --- BEGIN op 2528 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'WeTV', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'WeTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2528

-- --- BEGIN op 2529 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'YouTube', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'YouTube'
    AND arr_type = 'radarr'
);
-- --- END op 2529

-- --- BEGIN op 2530 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'YouTube', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'YouTube'
    AND arr_type = 'sonarr'
);
-- --- END op 2530

-- --- BEGIN op 2531 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'iT', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 2531

-- --- BEGIN op 2532 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'iT', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'iT'
    AND arr_type = 'sonarr'
);
-- --- END op 2532

-- --- BEGIN op 2533 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'x264', 'radarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'x264'
    AND arr_type = 'radarr'
);
-- --- END op 2533

-- --- BEGIN op 2534 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'x264', 'sonarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'x264'
    AND arr_type = 'sonarr'
);
-- --- END op 2534

-- --- BEGIN op 2535 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'x265', 'radarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'x265'
    AND arr_type = 'radarr'
);
-- --- END op 2535

-- --- BEGIN op 2536 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'x265', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'x265'
    AND arr_type = 'sonarr'
);
-- --- END op 2536

-- --- BEGIN op 2537 ( update quality_profile "2160p Preferred Personal" )
UPDATE quality_profile_qualities
SET position = 1, enabled = 0, upgrade_until = 0
WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = '1080p'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

UPDATE quality_profile_qualities
SET position = 2, enabled = 0
WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = 'Standard'
  AND quality_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 0, upgrade_until = 1
WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = '2160p'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 2537

-- --- BEGIN op 2538 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Preferred Personal', 'WEBRip-2160p', NULL, 1, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND quality_name = 'WEBRip-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Preferred Personal', 'HDTV-2160p', NULL, 2, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND quality_name = 'HDTV-2160p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = '1080p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = 'Standard'
  AND quality_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = 'Pre-releases'
  AND quality_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = 'Unwanted'
  AND quality_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = '2160p'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = '2160p') = 5
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = '2160p'
      AND quality_name NOT IN ('Bluray-2160p', 'WEBDL-2160p', 'Remux-2160p', 'WEBRip-2160p', 'HDTV-2160p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = '2160p'
        AND NOT (
          (quality_name = 'Bluray-2160p'
        AND position = 0)
      OR (quality_name = 'WEBDL-2160p'
        AND position = 1)
      OR (quality_name = 'Remux-2160p'
        AND position = 2)
      OR (quality_name = 'WEBRip-2160p'
        AND position = 3)
      OR (quality_name = 'HDTV-2160p'
        AND position = 4)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '2160p Preferred Personal'
  AND quality_group_name = '2160p'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '2160p Preferred Personal'
      AND quality_group_name = '2160p'
  ) = 0 AS ok
),
new_rows AS (
SELECT '2160p Preferred Personal' AS quality_profile_name, '2160p' AS quality_group_name, 'Bluray-2160p' AS quality_name, 0 AS position
UNION ALL
SELECT '2160p Preferred Personal' AS quality_profile_name, '2160p' AS quality_group_name, 'WEBDL-2160p' AS quality_name, 1 AS position
UNION ALL
SELECT '2160p Preferred Personal' AS quality_profile_name, '2160p' AS quality_group_name, 'Remux-2160p' AS quality_name, 2 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2538

-- --- BEGIN op 2539 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 14000;
-- --- END op 2539

-- --- BEGIN op 2540 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 14000;
-- --- END op 2540

-- --- BEGIN op 2541 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '1080p Bluray Preferred Groups'
  AND arr_type = 'radarr'
  AND score = 50000;
-- --- END op 2541

-- --- BEGIN op 2542 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '1080p Bluray Preferred Groups'
  AND arr_type = 'sonarr'
  AND score = 50000;
-- --- END op 2542

-- --- BEGIN op 2543 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '1080p HDTV'
  AND arr_type = 'radarr'
  AND score = 5000;
-- --- END op 2543

-- --- BEGIN op 2544 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '1080p HDTV'
  AND arr_type = 'sonarr'
  AND score = 5000;
-- --- END op 2544

-- --- BEGIN op 2545 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'radarr'
  AND score = 8000;
-- --- END op 2545

-- --- BEGIN op 2546 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 8000;
-- --- END op 2546

-- --- BEGIN op 2547 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 6000;
-- --- END op 2547

-- --- BEGIN op 2548 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 6000;
-- --- END op 2548

-- --- BEGIN op 2549 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '576p Bluray'
  AND arr_type = 'radarr'
  AND score = 6500;
-- --- END op 2549

-- --- BEGIN op 2550 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '576p Bluray'
  AND arr_type = 'sonarr'
  AND score = 6500;
-- --- END op 2550

-- --- BEGIN op 2551 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '720p Bluray'
  AND arr_type = 'radarr'
  AND score = 7000;
-- --- END op 2551

-- --- BEGIN op 2552 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = '720p Bluray'
  AND arr_type = 'sonarr'
  AND score = 7000;
-- --- END op 2552

-- --- BEGIN op 2553 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = 'Preferred WEBDL Groups'
  AND arr_type = 'radarr'
  AND score = 4000;
-- --- END op 2553

-- --- BEGIN op 2554 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = 'Preferred WEBDL Groups'
  AND arr_type = 'sonarr'
  AND score = 4000;
-- --- END op 2554

-- --- BEGIN op 2555 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = 'Under 7GB File Size'
  AND arr_type = 'radarr'
  AND score = 5000;
-- --- END op 2555

-- --- BEGIN op 2556 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Balanced Tier 1', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2556

-- --- BEGIN op 2557 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Balanced Tier 1', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2557

-- --- BEGIN op 2558 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Balanced Tier 2', 'radarr', 9500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2558

-- --- BEGIN op 2559 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Balanced Tier 2', 'sonarr', 9500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Balanced Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2559

-- --- BEGIN op 2560 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Balanced Tier 3', 'radarr', 9000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Balanced Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2560

-- --- BEGIN op 2561 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Balanced Tier 3', 'sonarr', 9000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Balanced Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2561

-- --- BEGIN op 2562 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Efficient TV Bluray Tier 1', 'sonarr', 8500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Efficient TV Bluray Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2562

-- --- BEGIN op 2563 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p iTunes Enhancement', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p iTunes Enhancement'
    AND arr_type = 'radarr'
);
-- --- END op 2563

-- --- BEGIN op 2564 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p iTunes Enhancement', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p iTunes Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 2564

-- --- BEGIN op 2565 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Quality Tier 1', 'radarr', 9999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2565

-- --- BEGIN op 2566 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Quality Tier 1', 'sonarr', 9999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2566

-- --- BEGIN op 2567 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Quality Tier 2', 'radarr', 9499
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2567

-- --- BEGIN op 2568 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Quality Tier 2', 'sonarr', 9499
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2568

-- --- BEGIN op 2569 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Quality Tier 3', 'radarr', 8999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2569

-- --- BEGIN op 2570 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Quality Tier 3', 'sonarr', 8999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2570

-- --- BEGIN op 2571 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Quality Tier 4', 'radarr', 8499
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 2571

-- --- BEGIN op 2572 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Quality Tier 4', 'sonarr', 8499
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 2572

-- --- BEGIN op 2573 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Quality Tier 5', 'radarr', 7999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 2573

-- --- BEGIN op 2574 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Quality Tier 5', 'sonarr', 7999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 2574

-- --- BEGIN op 2575 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Quality Tier 6', 'radarr', 7499
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 2575

-- --- BEGIN op 2576 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Quality Tier 6', 'sonarr', 7499
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 2576

-- --- BEGIN op 2577 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Remux', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Remux'
    AND arr_type = 'radarr'
);
-- --- END op 2577

-- --- BEGIN op 2578 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p Remux', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 2578

-- --- BEGIN op 2579 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p SDR', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p SDR'
    AND arr_type = 'radarr'
);
-- --- END op 2579

-- --- BEGIN op 2580 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p SDR', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p SDR'
    AND arr_type = 'sonarr'
);
-- --- END op 2580

-- --- BEGIN op 2581 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p WEB-DL', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2581

-- --- BEGIN op 2582 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p WEB-DL', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2582

-- --- BEGIN op 2583 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p WEB-DL (Efficient)', 'radarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p WEB-DL (Efficient)'
    AND arr_type = 'radarr'
);
-- --- END op 2583

-- --- BEGIN op 2584 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', '2160p WEB-DL (Efficient)', 'sonarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = '2160p WEB-DL (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 2584

-- --- BEGIN op 2585 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = 'Remux'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2585

-- --- BEGIN op 2586 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = 'Remux'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2586

-- --- BEGIN op 2587 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = 'Series - Over 4GB for WEBDL-1080p'
  AND arr_type = 'sonarr'
  AND score = -5000;
-- --- END op 2587

-- --- BEGIN op 2588 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = 'Series - Under 4GB Preferred Range for WEBDL-1080p'
  AND arr_type = 'sonarr'
  AND score = 2500;
-- --- END op 2588

-- --- BEGIN op 2589 ( update quality_profile "2160p Preferred Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Preferred Personal'
  AND custom_format_name = 'Series - Under 4GB Size for WEBDL-1080p'
  AND arr_type = 'sonarr'
  AND score = 5000;
-- --- END op 2589

-- --- BEGIN op 2590 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'x264 (2160p)', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'x264 (2160p)'
    AND arr_type = 'radarr'
);
-- --- END op 2590

-- --- BEGIN op 2591 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'x264 (2160p)', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'x264 (2160p)'
    AND arr_type = 'sonarr'
);
-- --- END op 2591

-- --- BEGIN op 2592 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'x265 (Missing)', 'radarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'x265 (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 2592

-- --- BEGIN op 2593 ( update quality_profile "2160p Preferred Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Preferred Personal', 'x265 (Missing)', 'sonarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Preferred Personal'
    AND custom_format_name = 'x265 (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 2593
