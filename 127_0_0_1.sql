-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2018 at 10:45 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc`
--
CREATE DATABASE IF NOT EXISTS `abc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `abc`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_10_24_044728_create_courses_table', 1),
(2, '2018_10_24_051205_create_students_table', 2),
(3, '2018_10_24_051926_create_admins_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `collageabc`
--
CREATE DATABASE IF NOT EXISTS `collageabc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `collageabc`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_24_184148_create_students_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-10-24 19:35:35', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":198}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `travel_guide`
--
CREATE DATABASE IF NOT EXISTS `travel_guide` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `travel_guide`;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `Place ID` int(11) NOT NULL,
  `Place name` varchar(100) NOT NULL,
  `Details` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`Place ID`, `Place name`, `Details`) VALUES
(1, 'Ruwanweliseya', 'Anuradhapura The Ruwanweliseya was built by King Dutugemunu in the 2nd century BCE. Since being restored the dome is clear and shines white in the sun. S.M. Burrows of the Ceylon Civil Service wrote in 1885, “Its present height is about 150 feet, with a diameter of 379 feet. It is now being restored by the pious contributions of pilgrims, and the zealous efforts of the Chief Priest. The Dagoba was originally surrounded by two large paved courts or platforms, the inner one raised above the outer. Round the outer side of the boundary-wall there was originally a complete circle of elephants, made out of brickwork, and coated with Chunam each elephant being furnished, says the Mahavamsa or Great Chronicle of Sri Lanka, compiled in about the 6th century AD with tusks of real ivory. Most of these figures have fallen away beyond recognition; but in some few, the shape of the animal is still plainly discernable.'),
(1, 'Ruwanweliseya', 'Anuradhapura The Ruwanweliseya was built by King Dutugemunu in the 2nd century BCE. Since being restored the dome is clear and shines white in the sun. S.M. Burrows of the Ceylon Civil Service wrote in 1885, “Its present height is about 150 feet, with a diameter of 379 feet. It is now being restored by the pious contributions of pilgrims, and the zealous efforts of the Chief Priest. The Dagoba was originally surrounded by two large paved courts or platforms, the inner one raised above the outer. Round the outer side of the boundary-wall there was originally a complete circle of elephants, made out of brickwork, and coated with Chunam each elephant being furnished, says the Mahavamsa or Great Chronicle of Sri Lanka, compiled in about the 6th century AD with tusks of real ivory. Most of these figures have fallen away beyond recognition; but in some few, the shape of the animal is still plainly discernable.'),
(2, 'Isurumuni Viharaya', 'This charming rock temple, dating from the reign of Devanampiya Tissa (r 307–267 BC), is set around a lovely lotus pond, the corner of which is carved with images of elephants playfully splashing water. The central temple has some particularly fine mural paintings. Climb around the back to the rock summit to see the bell-shaped stupa and a pair of Buddha footprints etched into the rock.The small museum features the famous ‘lovers’ sculpture, which dates from around the 5th century AD and is carved in the artistic style of the Indian Gupta dynasty of the 4th and 5th centuries. Photos are tolerated, despite signs to the contrary.'),
(3, 'Jethavanaramaya', 'Jethawana Stupa is the largest stupa in the Sri Lanka. It was originally 400 feet (122 meters) in height and was the third tallest building in the world at that time. Even today as a brick monument, Jethawanaramaya still remains the tallest of its kind in the world.Jethawanaramaya was built by King Mahasena of Anuradhapura (276-303) was completed by his son Sirimeghavanna. It is believed that this monument was built upon the enclosure where Mahinda Maha Thero was cremated. Recent excavation in the stupa has unearthed a one meter thick brick wall adjacent to a layer of ash and charcoal. This is believed to be the chamber where the remains of the great thero rest. As all other buildings in Anuradhapura this too was subjected to destruction by North Indian Invaders. Then when the Anuradhapura was finally abandoned as the capital in the 11th century this stupa with others were covered by the jungle. King Parakramabahu (12th century) in the Pollonaruwa era again tried to renovate this stupa and it was rebuilt to the current height, a reduction from the original height. Today it stands at 232 feet (71 meters) '),
(4, 'Mihinthalaya', 'In the 3rd century BC, area of Mihintale (mihinthalaya) was a thick jungle area inhibited by wild animals and was a hunting ground reserved for the royals. All this changed in 250 BC when the son of the Indian Emperor Asoka, Mahinda Maha Thero arrived at the Missaka Pauwa to meet king Devamnampiyatissa for the first time and asked the famous questions to decide whether he is intelligent enough to understand the philosophy of the Buddha. Initially Mahinda Maha Thero’s residence, but later Mihintale (mihinthalaya) became a main center for Theravada Buddhism and is considered the cradle of Buddhism in Sri Lanka. Mihinthale is a collection of four mountains each about 1000 feet in height. They are Mihinthalawa, Ath Vehera mountain, Anaikutti mountain, Rajagiri Lena mountain. Mihinthalawa is the main mountain and where the Aradhana gala (The rock of invitation) and the main Mahaseya stupa is situated. alternate names : mihinthalawa, Mihinthalaya, mihinthale'),
(5, 'Mirisaweti Dageba', 'Mirisawetiya Dagaba has been built by King Dutugamunu (161-137 BC) and this belongs to Mahavihara Complex. King Dutugamunu is the great king who defeated the Tamil invaders who ruled the country for 30 years and brought the country under one ruler. When the great king Dutugamunu was going to the water festival after his consecration he left his sceptre (kunta) which had a scared relic of Buddha inside, on this location. When he returned the kunta was stuck and nobody could remove it. So the king seeing this miracle constructed a Dagaba here. It is said that he called this dagaba “Mirisavatiya” because the king forgot to present a food made out of chilli (miris) to the Buddhist priests before he consumed it. It was the practise of the king to present a portion of all the food which is cooked in this castle to the priests before he consume it. The Dagaba was restored in the in the 1980’s but the whole construction collapsed in 1987. This also destroyed one of the best Vahalkada structures of Anuradhapura Era. The Dagaba you see now was completed in the 1993 and is enclosing the remains of the original Dagaba and has lost all historic features of the original. The present dagaba is 192 feet (59 metres) in height and 141 (43 metres) feet in diameter. A British scholar who examined this monument in the late 19th century recorded the diameter of the original stupa 168 feet (51 meters) and the height about 200 feet (61 meters) .'),
(6, 'Sri Maha Bodhi', 'The Sacred Bo tree; Jaya Sri Maha Bodhiya of Anuradhapura, Sri Lanka is the oldest living tree in documented history of the world. It is a sapling from the historical Bodhi tree under which Buddha enlightened. It was planted in 288 BCF and is the oldest living human-planted tree in the world with a known planting date. It was brought from Buddhagaya India by the Ven. Sanghamitta Therini, a sister of Arhant Mahinda – who introduced the Teachings of the Buddha to Sri Lanka. The area around the Sri Maha Bodhi, the Brazen • Palace and Ruwanweliseya Dagoba were once probably part of the Great Temple. The Sacred Bodhi tree is the oldest historically authenticated tree in the world, It has been tended by an continuous succession of guardians for over 2000 years, even during the periods of Indian occupation.'),
(7, 'Thuparamaya', 'Thuparamaya, the oldest Stupa in Sri Lanka built after the introduction of Buddhism to Sri Lanka. The Thuparamaya, built by King Devanapiyatissa, enshrines the sacred collar bone of the Buddha. This relic, a gift from India, stands testimony to the cordial relations enjoyed by the then Sri Lanka ruler. The columns around the stupa were a part of the walkway that supported a roof which covered the sacred edifice. Aesthetically, the interior of such a structure must have been the stunning expression of wood engineering and of the most skilful craftsmanship. The edifice’s conical design, unique in the architectural history of the world, continues to be discussed and debated by scholars and scientists. The discovery of medical texts and surgical instruments dating back to the Anuradhapura period confirm the Quality of life during that era. The tradition of using stone troughs as medicinal baths to cure the sick was in vogue during the Anuradhapura and subsequent Polonnaruwa periods and before Buddhism was introduced to Sri Lanka. The patient, whether paralytic or in a coma after a snake bite, was immersed in a bath enriched with the appropriate medicinal potions that would gradually be absorbed into the body. Interestingly, the shape of the vessel was moulded to economize on the expensive fluid. The name Thuparamaya is a residential complex for Bhikkhus.'),
(8, 'Wilpattu National Park', 'Wilpattu sanctuary was decalred as a National Park in 1938, Wilpattu National Park is located on the west coast close to the historical city of Anuradhapura .The dry zone jungle is thickly grown. Wilpattu Natonal Park is home for many villus, or natural lakes which dot the landscape in the Wilpattu National Park. Except for two, These lakes contain rainwater, thus are important for resident and migratory water-birds. The history of the park is also of interest with ancient ruins having been discovered in Wilpattu National Park. Queen named “Kuweni” (considered to be the mother of the Sinhala race) is said to have lived in the place known as Kalli Villu. Historical evidence also shows the fact that Prince Saliya, son of King Dutugemunu lived in Wilpattu over 2,000 years ago. Wildlife in the Wilpattu National Park There are approximately 30 species of mammals in the Wilpattu National Park which include the Sri Lankan Elephant, Sri Lankan Leopard, Lankan Sloth Bear, Sri, Spotted Deer, Buffalo, Sambar and Mongoose. Birdlife in the Wilpattu National Park Wetland bird species found in the Wilpattu National Park include the Garganey, Pin tail, Whistling Teal, Spoonbill, White Ibis, Large White Egret, Cattle Egret and Purple Heron. Also, many species of Gulls, Terns, Owls, Kites and Eagles are also lives here. The endemic Sri Lanka Jungle fowl, Little Cormorant and the Painted Stork can also Can be seen. Reptiles and Amphibians in the Wilpattu National Park Monitor Lizard, Mugger Crocodile, Common Cobra, Rat Snake, Indian Python, Pond Turtle and the Soft Shelled Turtle can be seen in Wilpattu National Park. Flora in the Wilpattu National Park Wilpattu is home for many species of flora and they are Palu (Manilkara hexandra), Satin (Chloroxylon swietenia), Milla (Vitex altissima), Weera (Drypetes sepiaria), Ebony (Diospyros ebenum) and Wewarna (Alseodaphne semecarpifolia). Climate in the Wilpattu National Park The annual temperature in the Park is between 27°C to 30°C and its annual rainfall is approximately 900 mm. The Wilpattu National Park is situated in the dry zone but most of the time flora is very greenish and has plenty of water sources. The period between September to December is the rainy season while inter-monsoonal rains are expected between March to May. The period of drought in the Park extends from June to early September. How to reach Wilpattu National Park Wilpattu is located 30 kms north of Puttalam, approximately 190 kms from Colombo. Wilpattu National Park extends from the northwest coast towards inland ancient capital city of Anuradhapura which is about 50 km to the east of the Park, covering 425 sq miles approximately. The route from Colombo is via Negombo, Chilaw, Palaviya and Puttalam, The Park office and the main entrance where one can obtain a ticket and enter the park is at Hunuwilgama, 7 km from the turn-off from Puttalam - Anuradhapura road. The best times to visit the Wilpattu National Park Though this National Park can be visited throughout the year, February to October is the prime time.'),
(9, 'Lovamahapaya', 'According to Mahavamsa, the great chronicle of the Sinhalese, Lovamahapaya was a massive nine storied building with a height of 150 ft (47 meters) and each side with a 150 feet (46 meters) length. The building was supported by 40 rows of stone pillars with 40 pillars which totaled 1600 pillars. In each level there were 1000 rooms and 100 windows. The building of Lovamahapaya was adorned with corals and precious stones. Its roof was covered with copper-bronze plates. Although this description may be a little exaggerated, this would have been a very impressive building at that time looking at what remains today. Superstructure of the Lovamahapaya probably would have been wood and the height of this building deceased with time. According to Mahavamsa, this building was destroyed by fire during king Saddhatissa (137-119 BC) and it was built to seven stories. King Sirinaga II (240-242 AC) restored this building again to five levels. King Jettatissa (266-276 AC) once again raised the size of the building to seven levels. King Mahasena (276-303) demolished this building and gave the material to the Abayaghiri Viharaya due to a conflict with the monks in the Mahavihara. His son Sirimeghavanna rebuild this mansion again but was destroyed by the Pandayns from South India who invaded the city in the 9th century and was rebuild again in the same century by king Sena II. Again the Colas from India invaded the city in 10th century and plundered the city of it’s all valuables which finally saw the fall of the Anuradhapura as the capital of Sri Lanka after over 1400 years. The great king Parakramabhu I who reigned from Polonnaruwa (1153-1186 AC) raised again the 1600 pillars and partly restored it. This is what you see today. Alternate Names :great cooper roofed mansion, lova maha prasadaya, lovamahapaya, lowamahapaya');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
