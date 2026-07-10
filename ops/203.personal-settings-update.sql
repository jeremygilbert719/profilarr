-- @operation: export
-- @entity: batch
-- @name: Personal settings update
-- @exportedAt: 2026-07-10T18:04:09.618Z
-- @opIds: 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997

-- --- BEGIN op 574 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'h265'
  AND arr_type = 'sonarr'
  AND score = 10000;
-- --- END op 574

-- --- BEGIN op 575 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'h265 (Efficient)'
  AND arr_type = 'sonarr'
  AND score = 11000;
-- --- END op 575

-- --- BEGIN op 576 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'x265'
  AND arr_type = 'sonarr'
  AND score = 10000;
-- --- END op 576

-- --- BEGIN op 577 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'x265 (Bluray)'
  AND arr_type = 'sonarr'
  AND score = 12000;
-- --- END op 577

-- --- BEGIN op 578 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'x265 (Efficient)'
  AND arr_type = 'sonarr'
  AND score = 11000;
-- --- END op 578

-- --- BEGIN op 579 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'sonarr'
  AND score = 9000;
-- --- END op 579

-- --- BEGIN op 580 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 50000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 45000;
-- --- END op 580

-- --- BEGIN op 581 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 45000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p Bluray (Efficient)'
  AND arr_type = 'sonarr'
  AND score = 50000;
-- --- END op 581

-- --- BEGIN op 582 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 40000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 35000;
-- --- END op 582

-- --- BEGIN op 583 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 35000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p WEB-DL (Efficient)'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 583

-- --- BEGIN op 584 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p Bluray (Efficient)'
  AND arr_type = 'sonarr'
  AND score = 45000;
-- --- END op 584

-- --- BEGIN op 585 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 40
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p WEB-DL (Efficient)'
  AND arr_type = 'sonarr'
  AND score = 35000;
-- --- END op 585

-- --- BEGIN op 586 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 50000;
-- --- END op 586

-- --- BEGIN op 587 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p Bluray (Efficient)'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 587

-- --- BEGIN op 588 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 80000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p BluRay 265'
  AND arr_type = 'sonarr'
  AND score = 50000;
-- --- END op 588

-- --- BEGIN op 589 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 589

-- --- BEGIN op 590 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p WEB-DL (Efficient)'
  AND arr_type = 'sonarr'
  AND score = 40;
-- --- END op 590

-- --- BEGIN op 591 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 80000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p WEBDL 265'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 591

-- --- BEGIN op 592 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 20000;
-- --- END op 592

-- --- BEGIN op 593 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 40
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '480p Bluray'
  AND arr_type = 'sonarr'
  AND score = 4000;
-- --- END op 593

-- --- BEGIN op 594 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 30
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '480p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 594

-- --- BEGIN op 595 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '576p Bluray'
  AND arr_type = 'sonarr'
  AND score = 5000;
-- --- END op 595

-- --- BEGIN op 596 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 45
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '576p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 4500;
-- --- END op 596

-- --- BEGIN op 597 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '720p Bluray'
  AND arr_type = 'sonarr'
  AND score = 10000;
-- --- END op 597

-- --- BEGIN op 598 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 60
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'sonarr'
  AND score = 6000;
-- --- END op 598

-- --- BEGIN op 599 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 80
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '720p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 8000;
-- --- END op 599

-- --- BEGIN op 600 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 30
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'DVD'
  AND arr_type = 'sonarr'
  AND score = 900;
-- --- END op 600

-- --- BEGIN op 601 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 20
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'SDTV'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 601

-- --- BEGIN op 602 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 602

-- --- BEGIN op 603 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '1080p Bluray (Efficient)', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '1080p Bluray (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 603

-- --- BEGIN op 604 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p BluRay 264'
  AND arr_type = 'sonarr'
  AND score = 45000;
-- --- END op 604

-- --- BEGIN op 605 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p BluRay 265'
  AND arr_type = 'sonarr'
  AND score = 80000;
-- --- END op 605

-- --- BEGIN op 606 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '1080p HDTV', 'sonarr', 9000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 606

-- --- BEGIN op 607 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 30000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 300;
-- --- END op 607

-- --- BEGIN op 608 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '1080p WEB-DL (Efficient)', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '1080p WEB-DL (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 608

-- --- BEGIN op 609 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p WEBDL 264'
  AND arr_type = 'sonarr'
  AND score = 35000;
-- --- END op 609

-- --- BEGIN op 610 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p WEBDL 265'
  AND arr_type = 'sonarr'
  AND score = 80000;
-- --- END op 610

-- --- BEGIN op 611 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 10000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 200;
-- --- END op 611

-- --- BEGIN op 612 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '480p Bluray'
  AND arr_type = 'sonarr'
  AND score = 40;
-- --- END op 612

-- --- BEGIN op 613 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '480p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 30;
-- --- END op 613

-- --- BEGIN op 614 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 4000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '576p Bluray'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 614

-- --- BEGIN op 615 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '576p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 45;
-- --- END op 615

-- --- BEGIN op 616 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 8000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '720p Bluray'
  AND arr_type = 'sonarr'
  AND score = 100;
-- --- END op 616

-- --- BEGIN op 617 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 5000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'sonarr'
  AND score = 60;
-- --- END op 617

-- --- BEGIN op 618 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 7000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '720p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 80;
-- --- END op 618

-- --- BEGIN op 619 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '720p WEBRip', 'sonarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 619

-- --- BEGIN op 620 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'DVD'
  AND arr_type = 'sonarr'
  AND score = 30;
-- --- END op 620

-- --- BEGIN op 621 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'h264|x264', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'h264|x264'
    AND arr_type = 'sonarr'
);
-- --- END op 621

-- --- BEGIN op 622 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Nordic', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Nordic'
    AND arr_type = 'sonarr'
);
-- --- END op 622

-- --- BEGIN op 623 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 623

-- --- BEGIN op 624 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'SDTV'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 624

-- --- BEGIN op 625 ( create custom_format "h265|x265" )
insert into "custom_formats" ("name", "description") values ('h265|x265', '');
-- --- END op 625

-- --- BEGIN op 626 ( update custom_format "h265|x265" )
update "custom_formats" set "description" = 'Codec for h264 or x264 releases' where "name" = 'h265|x265' and "description" = '';
-- --- END op 626

-- --- BEGIN op 627 ( update custom_format "h265|x265" )
insert into "tags" ("name") values ('Codec') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('h265|x265', 'Codec');
-- --- END op 627

-- --- BEGIN op 628 ( update custom_format "h265|x265" )
update "custom_formats" set "description" = 'Codec for h265 or x265 releases' where "name" = 'h265|x265' and "description" = 'Codec for h264 or x264 releases';
-- --- END op 628

-- --- BEGIN op 629 ( update custom_format "h265|x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('h265|x265', 'Codec', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('h265|x265', 'Codec', 'h|x 265');
-- --- END op 629

-- --- BEGIN op 630 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'h265|x265', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'h265|x265'
    AND arr_type = 'sonarr'
);
-- --- END op 630

-- --- BEGIN op 631 ( create custom_format "Under 10GB File Size" )
insert into "custom_formats" ("name", "description") values ('Under 10GB File Size', '');
-- --- END op 631

-- --- BEGIN op 632 ( update custom_format "Under 10GB File Size" )
update "custom_formats" set "description" = 'Files under 10GB in size no larger' where "name" = 'Under 10GB File Size' and "description" = '';
-- --- END op 632

-- --- BEGIN op 633 ( update custom_format "Under 10GB File Size" )
insert into "tags" ("name") values ('Source') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Under 10GB File Size', 'Source');

insert into "tags" ("name") values ('Filesize') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Under 10GB File Size', 'Filesize');
-- --- END op 633

-- --- BEGIN op 634 ( update custom_format "Under 10GB File Size" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Under 10GB File Size', 'FileSize', 'size', 'all', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Under 10GB File Size', 'FileSize', 1073741824, 10737418240);
-- --- END op 634

-- --- BEGIN op 635 ( update custom_format "Under 10GB File Size" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Under 10GB File Size' AND condition_name = 'FileSize' AND min_bytes IS 1073741824 AND max_bytes IS 10737418240;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Under 10GB File Size', 'FileSize', 0, 10737418240);
-- --- END op 635

-- --- BEGIN op 636 ( update custom_format "Under 10GB File Size" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Under 10GB File Size' AND condition_name = 'FileSize' AND min_bytes IS 0 AND max_bytes IS 10737418240;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Under 10GB File Size', 'FileSize', 0, 7516192768);
-- --- END op 636

-- --- BEGIN op 637 ( update custom_format "Under 7GB File Size" )
update "custom_formats" set "description" = 'Files under 7GB in size no larger' where "name" = 'Under 10GB File Size' and "description" = 'Files under 10GB in size no larger';
-- --- END op 637

-- --- BEGIN op 638 ( update custom_format "Under 7GB File Size" )
update "custom_formats" set "name" = 'Under 7GB File Size' where "name" = 'Under 10GB File Size';
-- --- END op 638

-- --- BEGIN op 639 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_custom_formats
SET score = 50000
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 639

-- --- BEGIN op 640 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p Bluray (Efficient)'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 640

-- --- BEGIN op 641 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = '1080p WEB-DL (Efficient)'
  AND arr_type = 'sonarr'
  AND score = 20000;
-- --- END op 641

-- --- BEGIN op 642 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'h265'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 642

-- --- BEGIN op 643 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'h265 (Efficient)'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 643

-- --- BEGIN op 644 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'x265'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 644

-- --- BEGIN op 645 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'x265 (Bluray)'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 645

-- --- BEGIN op 646 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'x265 (Efficient)'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 646

-- --- BEGIN op 647 ( update quality_profile "TV Series 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV Series 1080p'
  AND custom_format_name = 'x265 (Missing)'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 647

-- --- BEGIN op 648 ( update quality_profile "TV Series 1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 200 where "name" = 'TV Series 1080p' and "minimum_custom_format_score" = 2000;
-- --- END op 648

-- --- BEGIN op 649 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', 'Under 7GB File Size', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = 'Under 7GB File Size'
    AND arr_type = 'sonarr'
);
-- --- END op 649

-- --- BEGIN op 650 ( create quality_profile "Movies 1080p - Personal" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Movies 1080p - Personal', 'Personal Settings for TV Series Wanted', 1, 0, 0, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'Bluray-1080p', NULL, 0, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'WEBDL-1080p', NULL, 1, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'WEBRip-1080p', NULL, 2, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'HDTV-1080p', NULL, 3, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'Remux-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'Bluray-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'WEBDL-2160p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'WEBRip-2160p', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'HDTV-2160p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'Remux-1080p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'Bluray-720p', NULL, 10, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'WEBDL-720p', NULL, 11, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'WEBRip-720p', NULL, 12, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'HDTV-720p', NULL, 13, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'Bluray-576p', NULL, 14, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'Bluray-480p', NULL, 15, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'WEBDL-480p', NULL, 16, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'WEBRip-480p', NULL, 17, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'HDTV-480p', NULL, 18, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'DVD-R', NULL, 19, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'DVD', NULL, 20, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', 'SDTV', NULL, 21, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Movies 1080p - Personal', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p - Personal', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p - Personal', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p - Personal', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p - Personal', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p - Personal', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p - Personal', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', NULL, 'Pre-releases', 22, 0, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Movies 1080p - Personal', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p - Personal', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p - Personal', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p - Personal', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p - Personal', NULL, 'Unwanted', 23, 1, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Movies 1080p - Personal', 'English', 'simple');
-- --- END op 650

-- --- BEGIN op 651 ( update quality_profile "Movies 1080p - Personal" )
update "quality_profiles" set "minimum_custom_format_score" = 200 where "name" = 'Movies 1080p - Personal' and "minimum_custom_format_score" = 0;
-- --- END op 651

-- --- BEGIN op 652 ( update quality_profile "Movies 1080p - Personal" )
update "quality_profiles" set "upgrade_until_score" = 100000 where "name" = 'Movies 1080p - Personal' and "upgrade_until_score" = 0;
-- --- END op 652

-- --- BEGIN op 653 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '1080p Bluray', 'sonarr', 50000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 653

-- --- BEGIN op 654 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '1080p HDTV', 'sonarr', 9000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 654

-- --- BEGIN op 655 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '1080p WEB-DL', 'sonarr', 30000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 655

-- --- BEGIN op 656 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '1080p WEBRip', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 656

-- --- BEGIN op 657 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '480p Bluray', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 657

-- --- BEGIN op 658 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '480p WEB-DL', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 658

-- --- BEGIN op 659 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '576p Bluray', 'sonarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 659

-- --- BEGIN op 660 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '576p WEB-DL', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 660

-- --- BEGIN op 661 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '720p Bluray', 'sonarr', 8000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 661

-- --- BEGIN op 662 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '720p HDTV', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 662

-- --- BEGIN op 663 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '720p WEB-DL', 'sonarr', 7000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 663

-- --- BEGIN op 664 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '720p WEBRip', 'sonarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 664

-- --- BEGIN op 665 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'AAC', 'sonarr', 15
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'AAC'
    AND arr_type = 'sonarr'
);
-- --- END op 665

-- --- BEGIN op 666 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'AMZN', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 666

-- --- BEGIN op 667 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'ATVP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 667

-- --- BEGIN op 668 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Atmos', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'sonarr'
);
-- --- END op 668

-- --- BEGIN op 669 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Atmos (Missing)', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Atmos (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 669

-- --- BEGIN op 670 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'BCORE', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'sonarr'
);
-- --- END op 670

-- --- BEGIN op 671 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 671

-- --- BEGIN op 672 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 672

-- --- BEGIN op 673 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Groups (Compact)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Groups (Compact)'
    AND arr_type = 'sonarr'
);
-- --- END op 673

-- --- BEGIN op 674 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Groups (Efficient)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Groups (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 674

-- --- BEGIN op 675 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Groups (Regular)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Groups (Regular)'
    AND arr_type = 'sonarr'
);
-- --- END op 675

-- --- BEGIN op 676 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 676

-- --- BEGIN op 677 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Language Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Language Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 677

-- --- BEGIN op 678 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'CR', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'CR'
    AND arr_type = 'sonarr'
);
-- --- END op 678

-- --- BEGIN op 679 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'CRAV', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'sonarr'
);
-- --- END op 679

-- --- BEGIN op 680 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'CRIT', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'sonarr'
);
-- --- END op 680

-- --- BEGIN op 681 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DSNP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 681

-- --- BEGIN op 682 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DTS', 'sonarr', 30
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DTS'
    AND arr_type = 'sonarr'
);
-- --- END op 682

-- --- BEGIN op 683 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DTS-ES', 'sonarr', 35
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'sonarr'
);
-- --- END op 683

-- --- BEGIN op 684 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DTS-HD HRA', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'sonarr'
);
-- --- END op 684

-- --- BEGIN op 685 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DTS-HD MA', 'sonarr', 45
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'sonarr'
);
-- --- END op 685

-- --- BEGIN op 686 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DTS-X', 'sonarr', 55
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'sonarr'
);
-- --- END op 686

-- --- BEGIN op 687 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DVD', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 687

-- --- BEGIN op 688 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Dolby Atmos', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'sonarr'
);
-- --- END op 688

-- --- BEGIN op 689 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Dolby Digital', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'sonarr'
);
-- --- END op 689

-- --- BEGIN op 690 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Dolby Digital +', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'sonarr'
);
-- --- END op 690

-- --- BEGIN op 691 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Dolby Vision', 'sonarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'sonarr'
);
-- --- END op 691

-- --- BEGIN op 692 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Dolby Vision (Without Fallback)', 'sonarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'sonarr'
);
-- --- END op 692

-- --- BEGIN op 693 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 693

-- --- BEGIN op 694 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'FLAC', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'sonarr'
);
-- --- END op 694

-- --- BEGIN op 695 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'FLUX', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'FLUX'
    AND arr_type = 'sonarr'
);
-- --- END op 695

-- --- BEGIN op 696 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Full Disc', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'sonarr'
);
-- --- END op 696

-- --- BEGIN op 697 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Full Disc (Quality Match)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'sonarr'
);
-- --- END op 697

-- --- BEGIN op 698 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'HDR', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'HDR'
    AND arr_type = 'sonarr'
);
-- --- END op 698

-- --- BEGIN op 699 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'HDR (Missing)', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 699

-- --- BEGIN op 700 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'HDR10 (Missing)', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'HDR10 (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 700

-- --- BEGIN op 701 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'HDR10+', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'sonarr'
);
-- --- END op 701

-- --- BEGIN op 702 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'HMAX', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 702

-- --- BEGIN op 703 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'HULU', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'HULU'
    AND arr_type = 'sonarr'
);
-- --- END op 703

-- --- BEGIN op 704 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'JermBox', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'JermBox'
    AND arr_type = 'sonarr'
);
-- --- END op 704

-- --- BEGIN op 705 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'MAX', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 705

-- --- BEGIN op 706 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'NF', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 706

-- --- BEGIN op 707 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'NOW', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'NOW'
    AND arr_type = 'sonarr'
);
-- --- END op 707

-- --- BEGIN op 708 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Nordic', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Nordic'
    AND arr_type = 'sonarr'
);
-- --- END op 708

-- --- BEGIN op 709 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 709

-- --- BEGIN op 710 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Opus', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Opus'
    AND arr_type = 'sonarr'
);
-- --- END op 710

-- --- BEGIN op 711 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'PCOK', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'sonarr'
);
-- --- END op 711

-- --- BEGIN op 712 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'PLAY', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'sonarr'
);
-- --- END op 712

-- --- BEGIN op 713 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'PMTP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'sonarr'
);
-- --- END op 713

-- --- BEGIN op 714 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'ROKU', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'sonarr'
);
-- --- END op 714

-- --- BEGIN op 715 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'SDTV', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 715

-- --- BEGIN op 716 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'SHO', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'SHO'
    AND arr_type = 'sonarr'
);
-- --- END op 716

-- --- BEGIN op 717 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'SKST', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 717

-- --- BEGIN op 718 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'STAN', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'STAN'
    AND arr_type = 'sonarr'
);
-- --- END op 718

-- --- BEGIN op 719 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Season Pack', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 719

-- --- BEGIN op 720 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'TrueHD', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'sonarr'
);
-- --- END op 720

-- --- BEGIN op 721 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'TrueHD (Missing)', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'TrueHD (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 721

-- --- BEGIN op 722 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Under 7GB File Size', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Under 7GB File Size'
    AND arr_type = 'sonarr'
);
-- --- END op 722

-- --- BEGIN op 723 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 723

-- --- BEGIN op 724 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'WeTV', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'WeTV'
    AND arr_type = 'sonarr'
);
-- --- END op 724

-- --- BEGIN op 725 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'h264|x264', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'h264|x264'
    AND arr_type = 'sonarr'
);
-- --- END op 725

-- --- BEGIN op 726 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'h265|x265', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'h265|x265'
    AND arr_type = 'sonarr'
);
-- --- END op 726

-- --- BEGIN op 727 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'iP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'iP'
    AND arr_type = 'sonarr'
);
-- --- END op 727

-- --- BEGIN op 728 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'iT', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'iT'
    AND arr_type = 'sonarr'
);
-- --- END op 728

-- --- BEGIN op 729 ( update quality_profile "Movies 1080p - Personal" )
update "quality_profiles" set "description" = 'Personal Settings for Movies Wanted' where "name" = 'Movies 1080p - Personal' and "description" = 'Personal Settings for TV Series Wanted';
-- --- END op 729

-- --- BEGIN op 730 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '1080p Bluray', 'radarr', 50000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 730

-- --- BEGIN op 731 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 50000;
-- --- END op 731

-- --- BEGIN op 732 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = '1080p HDTV'
  AND arr_type = 'sonarr'
  AND score = 9000;
-- --- END op 732

-- --- BEGIN op 733 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '1080p WEB-DL', 'radarr', 30000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 733

-- --- BEGIN op 734 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 30000;
-- --- END op 734

-- --- BEGIN op 735 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '1080p WEBRip', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 735

-- --- BEGIN op 736 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 10000;
-- --- END op 736

-- --- BEGIN op 737 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '480p Bluray', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 737

-- --- BEGIN op 738 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = '480p Bluray'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 738

-- --- BEGIN op 739 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '480p WEB-DL', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 739

-- --- BEGIN op 740 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = '480p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 740

-- --- BEGIN op 741 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '576p Bluray', 'radarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 741

-- --- BEGIN op 742 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = '576p Bluray'
  AND arr_type = 'sonarr'
  AND score = 4000;
-- --- END op 742

-- --- BEGIN op 743 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '576p WEB-DL', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 743

-- --- BEGIN op 744 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = '576p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 744

-- --- BEGIN op 745 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '720p Bluray', 'radarr', 8000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 745

-- --- BEGIN op 746 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = '720p Bluray'
  AND arr_type = 'sonarr'
  AND score = 8000;
-- --- END op 746

-- --- BEGIN op 747 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '720p HDTV', 'radarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 747

-- --- BEGIN op 748 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'sonarr'
  AND score = 5000;
-- --- END op 748

-- --- BEGIN op 749 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '720p WEB-DL', 'radarr', 7000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 749

-- --- BEGIN op 750 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = '720p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 7000;
-- --- END op 750

-- --- BEGIN op 751 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', '720p WEBRip', 'radarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 751

-- --- BEGIN op 752 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'sonarr'
  AND score = 6000;
-- --- END op 752

-- --- BEGIN op 753 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'AAC', 'radarr', 15
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'AAC'
    AND arr_type = 'radarr'
);
-- --- END op 753

-- --- BEGIN op 754 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'AAC'
  AND arr_type = 'sonarr'
  AND score = 15;
-- --- END op 754

-- --- BEGIN op 755 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'AMZN', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 755

-- --- BEGIN op 756 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'AMZN'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 756

-- --- BEGIN op 757 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Atmos', 'radarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'radarr'
);
-- --- END op 757

-- --- BEGIN op 758 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Atmos'
  AND arr_type = 'sonarr'
  AND score = 60;
-- --- END op 758

-- --- BEGIN op 759 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Atmos (Missing)', 'radarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Atmos (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 759

-- --- BEGIN op 760 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Atmos (Missing)'
  AND arr_type = 'sonarr'
  AND score = 60;
-- --- END op 760

-- --- BEGIN op 761 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'ATVP', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 761

-- --- BEGIN op 762 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 762

-- --- BEGIN op 763 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 763

-- --- BEGIN op 764 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Banned Dual Audio Groups'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 764

-- --- BEGIN op 765 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'radarr'
);
-- --- END op 765

-- --- BEGIN op 766 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Banned Groups'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 766

-- --- BEGIN op 767 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Groups (Compact)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Groups (Compact)'
    AND arr_type = 'radarr'
);
-- --- END op 767

-- --- BEGIN op 768 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Banned Groups (Compact)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 768

-- --- BEGIN op 769 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Groups (Efficient)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Groups (Efficient)'
    AND arr_type = 'radarr'
);
-- --- END op 769

-- --- BEGIN op 770 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Banned Groups (Efficient)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 770

-- --- BEGIN op 771 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Groups (Regular)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Groups (Regular)'
    AND arr_type = 'radarr'
);
-- --- END op 771

-- --- BEGIN op 772 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Banned Groups (Regular)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 772

-- --- BEGIN op 773 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Groups (Release Title)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 773

-- --- BEGIN op 774 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Banned Groups (Release Title)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 774

-- --- BEGIN op 775 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Banned Language Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Banned Language Groups'
    AND arr_type = 'radarr'
);
-- --- END op 775

-- --- BEGIN op 776 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Banned Language Groups'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 776

-- --- BEGIN op 777 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'BCORE', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 777

-- --- BEGIN op 778 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'BCORE'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 778

-- --- BEGIN op 779 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'CR', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'CR'
    AND arr_type = 'radarr'
);
-- --- END op 779

-- --- BEGIN op 780 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'CR'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 780

-- --- BEGIN op 781 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'CRAV', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'radarr'
);
-- --- END op 781

-- --- BEGIN op 782 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'CRAV'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 782

-- --- BEGIN op 783 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'CRIT', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 783

-- --- BEGIN op 784 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'CRIT'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 784

-- --- BEGIN op 785 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Dolby Atmos', 'radarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'radarr'
);
-- --- END op 785

-- --- BEGIN op 786 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Dolby Atmos'
  AND arr_type = 'sonarr'
  AND score = 60;
-- --- END op 786

-- --- BEGIN op 787 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Dolby Digital', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'radarr'
);
-- --- END op 787

-- --- BEGIN op 788 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Dolby Digital'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 788

-- --- BEGIN op 789 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Dolby Digital +', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'radarr'
);
-- --- END op 789

-- --- BEGIN op 790 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Dolby Digital +'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 790

-- --- BEGIN op 791 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Dolby Vision', 'radarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'radarr'
);
-- --- END op 791

-- --- BEGIN op 792 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Dolby Vision'
  AND arr_type = 'sonarr'
  AND score = 70;
-- --- END op 792

-- --- BEGIN op 793 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Dolby Vision (Without Fallback)', 'radarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'radarr'
);
-- --- END op 793

-- --- BEGIN op 794 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Dolby Vision (Without Fallback)'
  AND arr_type = 'sonarr'
  AND score = 70;
-- --- END op 794

-- --- BEGIN op 795 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DSNP', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 795

-- --- BEGIN op 796 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'DSNP'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 796

-- --- BEGIN op 797 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DTS', 'radarr', 30
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DTS'
    AND arr_type = 'radarr'
);
-- --- END op 797

-- --- BEGIN op 798 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'DTS'
  AND arr_type = 'sonarr'
  AND score = 30;
-- --- END op 798

-- --- BEGIN op 799 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DTS-ES', 'radarr', 35
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'radarr'
);
-- --- END op 799

-- --- BEGIN op 800 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'DTS-ES'
  AND arr_type = 'sonarr'
  AND score = 35;
-- --- END op 800

-- --- BEGIN op 801 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DTS-HD HRA', 'radarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'radarr'
);
-- --- END op 801

-- --- BEGIN op 802 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'DTS-HD HRA'
  AND arr_type = 'sonarr'
  AND score = 40;
-- --- END op 802

-- --- BEGIN op 803 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DTS-HD MA', 'radarr', 45
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'radarr'
);
-- --- END op 803

-- --- BEGIN op 804 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'DTS-HD MA'
  AND arr_type = 'sonarr'
  AND score = 45;
-- --- END op 804

-- --- BEGIN op 805 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DTS-X', 'radarr', 55
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'radarr'
);
-- --- END op 805

-- --- BEGIN op 806 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'DTS-X'
  AND arr_type = 'sonarr'
  AND score = 55;
-- --- END op 806

-- --- BEGIN op 807 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'DVD', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 807

-- --- BEGIN op 808 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'DVD'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 808

-- --- BEGIN op 809 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 809

-- --- BEGIN op 810 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Extras'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 810

-- --- BEGIN op 811 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'FLAC', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'radarr'
);
-- --- END op 811

-- --- BEGIN op 812 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'FLAC'
  AND arr_type = 'sonarr'
  AND score = 10;
-- --- END op 812

-- --- BEGIN op 813 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'FLUX', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'FLUX'
    AND arr_type = 'radarr'
);
-- --- END op 813

-- --- BEGIN op 814 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'FLUX'
  AND arr_type = 'sonarr'
  AND score = 400;
-- --- END op 814

-- --- BEGIN op 815 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Full Disc', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'radarr'
);
-- --- END op 815

-- --- BEGIN op 816 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Full Disc'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 816

-- --- BEGIN op 817 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Full Disc (Quality Match)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'radarr'
);
-- --- END op 817

-- --- BEGIN op 818 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Full Disc (Quality Match)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 818

-- --- BEGIN op 819 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'h264|x264', 'radarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'h264|x264'
    AND arr_type = 'radarr'
);
-- --- END op 819

-- --- BEGIN op 820 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'h264|x264'
  AND arr_type = 'sonarr'
  AND score = 5000;
-- --- END op 820

-- --- BEGIN op 821 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'h265|x265', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'h265|x265'
    AND arr_type = 'radarr'
);
-- --- END op 821

-- --- BEGIN op 822 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'h265|x265'
  AND arr_type = 'sonarr'
  AND score = 10000;
-- --- END op 822

-- --- BEGIN op 823 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'HDR', 'radarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'HDR'
    AND arr_type = 'radarr'
);
-- --- END op 823

-- --- BEGIN op 824 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'HDR'
  AND arr_type = 'sonarr'
  AND score = 40;
-- --- END op 824

-- --- BEGIN op 825 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'HDR (Missing)', 'radarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 825

-- --- BEGIN op 826 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'HDR (Missing)'
  AND arr_type = 'sonarr'
  AND score = 40;
-- --- END op 826

-- --- BEGIN op 827 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'HDR10 (Missing)', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'HDR10 (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 827

-- --- BEGIN op 828 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'HDR10 (Missing)'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 828

-- --- BEGIN op 829 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'HDR10+', 'radarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'radarr'
);
-- --- END op 829

-- --- BEGIN op 830 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'HDR10+'
  AND arr_type = 'sonarr'
  AND score = 60;
-- --- END op 830

-- --- BEGIN op 831 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'HMAX', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 831

-- --- BEGIN op 832 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'HMAX'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 832

-- --- BEGIN op 833 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'HULU', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'HULU'
    AND arr_type = 'radarr'
);
-- --- END op 833

-- --- BEGIN op 834 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'HULU'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 834

-- --- BEGIN op 835 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'iP', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'iP'
    AND arr_type = 'radarr'
);
-- --- END op 835

-- --- BEGIN op 836 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'iP'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 836

-- --- BEGIN op 837 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'iT', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 837

-- --- BEGIN op 838 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'iT'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 838

-- --- BEGIN op 839 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'JermBox', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'JermBox'
    AND arr_type = 'radarr'
);
-- --- END op 839

-- --- BEGIN op 840 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'JermBox'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 840

-- --- BEGIN op 841 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'MA', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 841

-- --- BEGIN op 842 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'MAX', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 842

-- --- BEGIN op 843 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'MAX'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 843

-- --- BEGIN op 844 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'NF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 844

-- --- BEGIN op 845 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'NF'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 845

-- --- BEGIN op 846 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Nordic', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Nordic'
    AND arr_type = 'radarr'
);
-- --- END op 846

-- --- BEGIN op 847 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Nordic'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 847

-- --- BEGIN op 848 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 848

-- --- BEGIN op 849 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Not Original or English'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 849

-- --- BEGIN op 850 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'NOW', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'NOW'
    AND arr_type = 'radarr'
);
-- --- END op 850

-- --- BEGIN op 851 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'NOW'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 851

-- --- BEGIN op 852 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Opus', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Opus'
    AND arr_type = 'radarr'
);
-- --- END op 852

-- --- BEGIN op 853 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Opus'
  AND arr_type = 'sonarr'
  AND score = 5;
-- --- END op 853

-- --- BEGIN op 854 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'PCOK', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'radarr'
);
-- --- END op 854

-- --- BEGIN op 855 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'PCOK'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 855

-- --- BEGIN op 856 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'PLAY', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'radarr'
);
-- --- END op 856

-- --- BEGIN op 857 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'PLAY'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 857

-- --- BEGIN op 858 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'PMTP', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'radarr'
);
-- --- END op 858

-- --- BEGIN op 859 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'PMTP'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 859

-- --- BEGIN op 860 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'ROKU', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'radarr'
);
-- --- END op 860

-- --- BEGIN op 861 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'ROKU'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 861

-- --- BEGIN op 862 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'SDTV', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 862

-- --- BEGIN op 863 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'SDTV'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 863

-- --- BEGIN op 864 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Season Pack'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 864

-- --- BEGIN op 865 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'SHO', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'SHO'
    AND arr_type = 'radarr'
);
-- --- END op 865

-- --- BEGIN op 866 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'SHO'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 866

-- --- BEGIN op 867 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'SKST', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 867

-- --- BEGIN op 868 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'SKST'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 868

-- --- BEGIN op 869 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'STAN', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'STAN'
    AND arr_type = 'radarr'
);
-- --- END op 869

-- --- BEGIN op 870 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'STAN'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 870

-- --- BEGIN op 871 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'TrueHD', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'radarr'
);
-- --- END op 871

-- --- BEGIN op 872 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'TrueHD'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 872

-- --- BEGIN op 873 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'TrueHD (Missing)', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'TrueHD (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 873

-- --- BEGIN op 874 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'TrueHD (Missing)'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 874

-- --- BEGIN op 875 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Under 7GB File Size', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Under 7GB File Size'
    AND arr_type = 'radarr'
);
-- --- END op 875

-- --- BEGIN op 876 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Under 7GB File Size'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 876

-- --- BEGIN op 877 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 877

-- --- BEGIN op 878 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'Upscale'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 878

-- --- BEGIN op 879 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'WeTV', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'WeTV'
    AND arr_type = 'radarr'
);
-- --- END op 879

-- --- BEGIN op 880 ( update quality_profile "Movies 1080p - Personal" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND custom_format_name = 'WeTV'
  AND arr_type = 'sonarr'
  AND score = 20;
-- --- END op 880

-- --- BEGIN op 881 ( update quality_profile "Movies 1080p - Personal" )
UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'Movies 1080p - Personal'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 881

-- --- BEGIN op 882 ( update radarr_naming "Radarr" )
update "radarr_naming" set "movie_format" = '{Movie CleanTitleThe} {(Release Year)} - [TMDB-{TmdbId}] {- Edition Tags }{- Custom Format:FormatName }{- Custom Formats - }{ Quality Full }{- MediaInfo - Simple }{- MediaInfo VideoDynamicRangeType}{ - Mediainfo AudioChannels}{ -Release Group}' where "name" = 'Radarr' and "movie_format" = '{Movie CleanTitle} {(Release Year)} {tmdb-{TmdbId}} {edition-{Edition Tags}} {[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{-Release Group}';
-- --- END op 882

-- --- BEGIN op 883 ( update radarr_naming "Radarr" )
update "radarr_naming" set "movie_folder_format" = '{Movie TitleThe} ({Release Year}) [TMDB{-TmdbId}]' where "name" = 'Radarr' and "movie_folder_format" = '{Movie CleanTitle} ({Release Year}) {tmdb-{TmdbId}}';
-- --- END op 883

-- --- BEGIN op 884 ( update radarr_naming "Radarr" )
update "radarr_naming" set "replace_illegal_characters" = 1 where "name" = 'Radarr' and "replace_illegal_characters" = 0;
-- --- END op 884

-- --- BEGIN op 885 ( update radarr_naming "Radarr" )
update "radarr_naming" set "colon_replacement_format" = 'delete' where "name" = 'Radarr' and "colon_replacement_format" = 'smart';
-- --- END op 885

-- --- BEGIN op 886 ( update delay_profile "Radarr" )
update "delay_profiles" set "preferred_protocol" = 'prefer_usenet' where "name" = 'Radarr' and "preferred_protocol" = 'prefer_torrent';
-- --- END op 886

-- --- BEGIN op 887 ( update delay_profile "Radarr" )
update "delay_profiles" set "usenet_delay" = 10 where "name" = 'Radarr' and "usenet_delay" = 360;
-- --- END op 887

-- --- BEGIN op 888 ( update delay_profile "Radarr" )
update "delay_profiles" set "bypass_if_above_custom_format_score" = 1, "minimum_custom_format_score" = 0 where "name" = 'Radarr' and "bypass_if_above_custom_format_score" = 0 and "minimum_custom_format_score" is null;
-- --- END op 888

-- --- BEGIN op 889 ( update delay_profile "Sonarr" )
update "delay_profiles" set "preferred_protocol" = 'prefer_usenet' where "name" = 'Sonarr' and "preferred_protocol" = 'prefer_torrent';
-- --- END op 889

-- --- BEGIN op 890 ( update delay_profile "Sonarr" )
update "delay_profiles" set "usenet_delay" = 10 where "name" = 'Sonarr' and "usenet_delay" = 360;
-- --- END op 890

-- --- BEGIN op 891 ( update delay_profile "Sonarr" )
update "delay_profiles" set "bypass_if_above_custom_format_score" = 1, "minimum_custom_format_score" = 0 where "name" = 'Sonarr' and "bypass_if_above_custom_format_score" = 0 and "minimum_custom_format_score" is null;
-- --- END op 891

-- --- BEGIN op 892 ( create regular_expression "rmteam" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('rmteam', '(?<=^|[\s.-])FLUX\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('rmteam', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('rmteam', 'WEB-DL');
-- --- END op 892

-- --- BEGIN op 893 ( update regular_expression "rmteam" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])rmteam\b' where "name" = 'rmteam' and "pattern" = '(?<=^|[\s.-])FLUX\b';
-- --- END op 893

-- --- BEGIN op 894 ( update regular_expression "rmteam" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'rmteam' AND tag_name = 'WEB-DL';
-- --- END op 894

-- --- BEGIN op 895 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'RMTeam', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'RMTeam', 'rmteam');
-- --- END op 895

-- --- BEGIN op 896 ( update quality_profile "TV Series 1080p" )
UPDATE quality_profile_qualities
SET position = 3, enabled = 1
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'TV Series 1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 896

-- --- BEGIN op 897 ( update quality_profile "TV Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV Series 1080p', '1080p Remux', 'sonarr', 9500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV Series 1080p'
    AND custom_format_name = '1080p Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 897

-- --- BEGIN op 898 ( create custom_format "Over 10GB File Size" )
insert into "custom_formats" ("name", "description") values ('Over 10GB File Size', '');
-- --- END op 898

-- --- BEGIN op 899 ( update custom_format "Over 10GB File Size" )
update "custom_formats" set "description" = 'Files under 7GB in size no larger' where "name" = 'Over 10GB File Size' and "description" = '';
-- --- END op 899

-- --- BEGIN op 900 ( update custom_format "Over 10GB File Size" )
insert into "tags" ("name") values ('Filesize') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Over 10GB File Size', 'Filesize');

insert into "tags" ("name") values ('Source') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Over 10GB File Size', 'Source');
-- --- END op 900

-- --- BEGIN op 901 ( update custom_format "Over 10GB File Size" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Over 10GB File Size', 'FileSize', 'size', 'all', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Over 10GB File Size', 'FileSize', 0, 7516192768);
-- --- END op 901

-- --- BEGIN op 902 ( update custom_format "Over 10GB File Size" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Over 10GB File Size' AND condition_name = 'FileSize' AND min_bytes IS 0 AND max_bytes IS 7516192768;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Over 10GB File Size', 'FileSize', 11811160064, 1073740750258176);
-- --- END op 902

-- --- BEGIN op 903 ( update quality_profile "Movies 1080p - Personal" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p - Personal', 'Over 10GB File Size', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p - Personal'
    AND custom_format_name = 'Over 10GB File Size'
    AND arr_type = 'radarr'
);
-- --- END op 903

-- --- BEGIN op 904 ( create sonarr_naming "Sonarr-Sports" )
insert into "sonarr_naming" ("name", "rename", "standard_episode_format", "daily_episode_format", "anime_episode_format", "series_folder_format", "season_folder_format", "replace_illegal_characters", "colon_replacement_format", "custom_colon_replacement_format", "multi_episode_style") values ('Sonarr-Sports', 1, '{Series CleanTitleTheYear} - [TVDB-{TvdbId}] - S{season:00}E{episode:00}{ - Episode Title:30}{ - Custom Format:FormatName}{ - Custom Formats}{ - MediaInfo VideoDynamicRangeType}{ - Quality Full}{MediaInfo VideoDynamicRangeType}{ - MediaInfo - Simple}{ - MediaInfo AudioChannels}{ -Release Group}', '{Air-Date}  - {Series Title}{ - Episode Title:30}{ - Custom Format:FormatName}{ - Custom Formats}{ - MediaInfo VideoDynamicRangeType}{ - Quality Full}{ - MediaInfo - Simple}{ - MediaInfo AudioChannels}{ -Release Group}', '{Series Title} - S{season:00}E{episode:00} - {Episode Title} {Quality Full}', '{Series TitleTheYear} [TVDB{-TvdbId}]', 'Season {season:00}', 1, 0, NULL, 5);
-- --- END op 904

-- --- BEGIN op 905 ( create quality_profile "Sports Series 1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Sports Series 1080p', 'Personal Settings for TV Series Wanted', 1, 0, 0, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'Bluray-1080p', NULL, 0, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'WEBDL-1080p', NULL, 1, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'WEBRip-1080p', NULL, 2, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'Remux-1080p', NULL, 3, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'HDTV-1080p', NULL, 4, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'Remux-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'Bluray-2160p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'WEBDL-2160p', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'WEBRip-2160p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'HDTV-2160p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'Bluray-720p', NULL, 10, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'WEBDL-720p', NULL, 11, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'WEBRip-720p', NULL, 12, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'HDTV-720p', NULL, 13, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'Bluray-576p', NULL, 14, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'Bluray-480p', NULL, 15, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'WEBDL-480p', NULL, 16, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'WEBRip-480p', NULL, 17, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'HDTV-480p', NULL, 18, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'DVD-R', NULL, 19, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'DVD', NULL, 20, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', 'SDTV', NULL, 21, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Sports Series 1080p', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports Series 1080p', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports Series 1080p', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports Series 1080p', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports Series 1080p', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports Series 1080p', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports Series 1080p', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', NULL, 'Pre-releases', 22, 0, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Sports Series 1080p', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports Series 1080p', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports Series 1080p', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Sports Series 1080p', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Sports Series 1080p', NULL, 'Unwanted', 23, 1, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Sports Series 1080p', 'English', 'simple');
-- --- END op 905

-- --- BEGIN op 906 ( update quality_profile "Sports Series 1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 200 where "name" = 'Sports Series 1080p' and "minimum_custom_format_score" = 0;
-- --- END op 906

-- --- BEGIN op 907 ( update quality_profile "Sports Series 1080p" )
update "quality_profiles" set "upgrade_until_score" = 100000 where "name" = 'Sports Series 1080p' and "upgrade_until_score" = 0;
-- --- END op 907

-- --- BEGIN op 908 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', '1080p Bluray', 'sonarr', 50000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 908

-- --- BEGIN op 909 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', '1080p HDTV', 'sonarr', 9000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 909

-- --- BEGIN op 910 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', '1080p Remux', 'sonarr', 9500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = '1080p Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 910

-- --- BEGIN op 911 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', '1080p WEB-DL', 'sonarr', 30000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 911

-- --- BEGIN op 912 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', '1080p WEBRip', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 912

-- --- BEGIN op 913 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', '480p Bluray', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 913

-- --- BEGIN op 914 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', '480p WEB-DL', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 914

-- --- BEGIN op 915 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', '576p Bluray', 'sonarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 915

-- --- BEGIN op 916 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', '576p WEB-DL', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 916

-- --- BEGIN op 917 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', '720p Bluray', 'sonarr', 8000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 917

-- --- BEGIN op 918 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', '720p HDTV', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 918

-- --- BEGIN op 919 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', '720p WEB-DL', 'sonarr', 7000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 919

-- --- BEGIN op 920 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', '720p WEBRip', 'sonarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 920

-- --- BEGIN op 921 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'AAC', 'sonarr', 15
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'AAC'
    AND arr_type = 'sonarr'
);
-- --- END op 921

-- --- BEGIN op 922 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'AMZN', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 922

-- --- BEGIN op 923 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'ATVP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 923

-- --- BEGIN op 924 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Atmos', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'sonarr'
);
-- --- END op 924

-- --- BEGIN op 925 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Atmos (Missing)', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Atmos (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 925

-- --- BEGIN op 926 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'BCORE', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'sonarr'
);
-- --- END op 926

-- --- BEGIN op 927 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 927

-- --- BEGIN op 928 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Banned Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 928

-- --- BEGIN op 929 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Banned Groups (Compact)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Banned Groups (Compact)'
    AND arr_type = 'sonarr'
);
-- --- END op 929

-- --- BEGIN op 930 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Banned Groups (Efficient)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Banned Groups (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 930

-- --- BEGIN op 931 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Banned Groups (Regular)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Banned Groups (Regular)'
    AND arr_type = 'sonarr'
);
-- --- END op 931

-- --- BEGIN op 932 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 932

-- --- BEGIN op 933 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Banned Language Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Banned Language Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 933

-- --- BEGIN op 934 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'CR', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'CR'
    AND arr_type = 'sonarr'
);
-- --- END op 934

-- --- BEGIN op 935 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'CRAV', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'sonarr'
);
-- --- END op 935

-- --- BEGIN op 936 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'CRIT', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'sonarr'
);
-- --- END op 936

-- --- BEGIN op 937 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'DSNP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 937

-- --- BEGIN op 938 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'DTS', 'sonarr', 30
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'DTS'
    AND arr_type = 'sonarr'
);
-- --- END op 938

-- --- BEGIN op 939 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'DTS-ES', 'sonarr', 35
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'sonarr'
);
-- --- END op 939

-- --- BEGIN op 940 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'DTS-HD HRA', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'sonarr'
);
-- --- END op 940

-- --- BEGIN op 941 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'DTS-HD MA', 'sonarr', 45
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'sonarr'
);
-- --- END op 941

-- --- BEGIN op 942 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'DTS-X', 'sonarr', 55
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'sonarr'
);
-- --- END op 942

-- --- BEGIN op 943 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'DVD', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 943

-- --- BEGIN op 944 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Dolby Atmos', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'sonarr'
);
-- --- END op 944

-- --- BEGIN op 945 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Dolby Digital', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'sonarr'
);
-- --- END op 945

-- --- BEGIN op 946 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Dolby Digital +', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'sonarr'
);
-- --- END op 946

-- --- BEGIN op 947 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Dolby Vision', 'sonarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'sonarr'
);
-- --- END op 947

-- --- BEGIN op 948 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Dolby Vision (Without Fallback)', 'sonarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'sonarr'
);
-- --- END op 948

-- --- BEGIN op 949 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 949

-- --- BEGIN op 950 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'FLAC', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'sonarr'
);
-- --- END op 950

-- --- BEGIN op 951 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'FLUX', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'FLUX'
    AND arr_type = 'sonarr'
);
-- --- END op 951

-- --- BEGIN op 952 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Full Disc', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'sonarr'
);
-- --- END op 952

-- --- BEGIN op 953 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Full Disc (Quality Match)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'sonarr'
);
-- --- END op 953

-- --- BEGIN op 954 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'HDR', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'HDR'
    AND arr_type = 'sonarr'
);
-- --- END op 954

-- --- BEGIN op 955 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'HDR (Missing)', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 955

-- --- BEGIN op 956 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'HDR10 (Missing)', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'HDR10 (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 956

-- --- BEGIN op 957 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'HDR10+', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'sonarr'
);
-- --- END op 957

-- --- BEGIN op 958 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'HMAX', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 958

-- --- BEGIN op 959 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'HULU', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'HULU'
    AND arr_type = 'sonarr'
);
-- --- END op 959

-- --- BEGIN op 960 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'JermBox', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'JermBox'
    AND arr_type = 'sonarr'
);
-- --- END op 960

-- --- BEGIN op 961 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'MAX', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 961

-- --- BEGIN op 962 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'NF', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 962

-- --- BEGIN op 963 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'NOW', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'NOW'
    AND arr_type = 'sonarr'
);
-- --- END op 963

-- --- BEGIN op 964 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Nordic', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Nordic'
    AND arr_type = 'sonarr'
);
-- --- END op 964

-- --- BEGIN op 965 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 965

-- --- BEGIN op 966 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Opus', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Opus'
    AND arr_type = 'sonarr'
);
-- --- END op 966

-- --- BEGIN op 967 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'PCOK', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'sonarr'
);
-- --- END op 967

-- --- BEGIN op 968 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'PLAY', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'sonarr'
);
-- --- END op 968

-- --- BEGIN op 969 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'PMTP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'sonarr'
);
-- --- END op 969

-- --- BEGIN op 970 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'ROKU', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'sonarr'
);
-- --- END op 970

-- --- BEGIN op 971 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'SDTV', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 971

-- --- BEGIN op 972 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'SHO', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'SHO'
    AND arr_type = 'sonarr'
);
-- --- END op 972

-- --- BEGIN op 973 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'SKST', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 973

-- --- BEGIN op 974 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'STAN', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'STAN'
    AND arr_type = 'sonarr'
);
-- --- END op 974

-- --- BEGIN op 975 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Season Pack', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 975

-- --- BEGIN op 976 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'TrueHD', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'sonarr'
);
-- --- END op 976

-- --- BEGIN op 977 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'TrueHD (Missing)', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'TrueHD (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 977

-- --- BEGIN op 978 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Under 7GB File Size', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Under 7GB File Size'
    AND arr_type = 'sonarr'
);
-- --- END op 978

-- --- BEGIN op 979 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 979

-- --- BEGIN op 980 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'WeTV', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'WeTV'
    AND arr_type = 'sonarr'
);
-- --- END op 980

-- --- BEGIN op 981 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'h264|x264', 'sonarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'h264|x264'
    AND arr_type = 'sonarr'
);
-- --- END op 981

-- --- BEGIN op 982 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'h265|x265', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'h265|x265'
    AND arr_type = 'sonarr'
);
-- --- END op 982

-- --- BEGIN op 983 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'iP', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'iP'
    AND arr_type = 'sonarr'
);
-- --- END op 983

-- --- BEGIN op 984 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'iT', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'iT'
    AND arr_type = 'sonarr'
);
-- --- END op 984

-- --- BEGIN op 985 ( update quality_profile "Sports Series 1080p" )
update "quality_profiles" set "description" = 'Personal Settings for Sports Series Wanted' where "name" = 'Sports Series 1080p' and "description" = 'Personal Settings for TV Series Wanted';
-- --- END op 985

-- --- BEGIN op 986 ( update quality_profile "Sports Series 1080p" )
DELETE FROM quality_profile_languages WHERE quality_profile_name = 'Sports Series 1080p' AND language_name = 'English';

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT 'Sports Series 1080p', 'Original', 'simple'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_languages
  WHERE quality_profile_name = 'Sports Series 1080p'
);
-- --- END op 986

-- --- BEGIN op 987 ( update quality_profile "Sports Series 1080p" )
insert into "tags" ("name") values ('sports') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Sports Series 1080p', 'sports');
-- --- END op 987

-- --- BEGIN op 988 ( create regular_expression "HEEL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HEEL', '(?<=^|[\s.-])rmteam\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HEEL', 'Release Group');
-- --- END op 988

-- --- BEGIN op 989 ( update regular_expression "HEEL" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])HEEL\b' where "name" = 'HEEL' and "pattern" = '(?<=^|[\s.-])rmteam\b';
-- --- END op 989

-- --- BEGIN op 990 ( update regular_expression "HEEL" )
insert into "tags" ("name") values ('RegEx') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HEEL', 'RegEx');
-- --- END op 990

-- --- BEGIN op 991 ( create custom_format "HEEL" )
insert into "custom_formats" ("name", "description") values ('HEEL', '');
-- --- END op 991

-- --- BEGIN op 992 ( update custom_format "HEEL" )
update "custom_formats" set "description" = 'Personal Releases' where "name" = 'HEEL' and "description" = '';
-- --- END op 992

-- --- BEGIN op 993 ( update custom_format "HEEL" )
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('HEEL', 'Release Group');
-- --- END op 993

-- --- BEGIN op 994 ( update custom_format "HEEL" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HEEL', 'New Condition', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HEEL', 'New Condition', 'JermBox');
-- --- END op 994

-- --- BEGIN op 995 ( update custom_format "HEEL" )
DELETE FROM condition_patterns WHERE custom_format_name = 'HEEL' AND condition_name = 'New Condition' AND regular_expression_name = 'JermBox';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HEEL', 'New Condition', 'HEEL');
-- --- END op 995

-- --- BEGIN op 996 ( update quality_profile "Sports Series 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Sports Series 1080p', 'HEEL', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Sports Series 1080p'
    AND custom_format_name = 'HEEL'
    AND arr_type = 'sonarr'
);
-- --- END op 996

-- --- BEGIN op 997 ( update quality_profile "Sports Series 1080p" )
UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'Sports Series 1080p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 997
