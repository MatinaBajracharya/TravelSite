-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2019 at 05:59 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `work`
--

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
(3, '2019_09_23_074524_create_posts_table', 1),
(4, '2019_09_24_172817_add_user_id_to_posts', 1),
(5, '2019_09_25_134152_add_cover_image_to_posts', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(7, 'The Triangle of Life, my food in Japan', '<p>Move over Elton John!&nbsp;<strong>Japan just proved that life is a triangle</strong>. Anyone who has been to Japan knows how good the food is. No matter where you go. Whether it&rsquo;s a Michelin restaurant, a hole in the wall place, or a convenience store, you can never go wrong with food when in the land of the rising sun.</p>\r\n\r\n<p>My three weeks in Japan were packed with travelling from one city to another, which is why I was able to see 9 different places. You know those days when you<strong>&nbsp;just don&rsquo;t have time to sit down and eat while travelling and you pack your bag with energy bars? Well my three weeks in Japan were all about that</strong>, and I found this great replacement to bars &ndash; these triangle shaped rice snacks stuffed with meat or fish and wrapped in seaweed.</p>\r\n\r\n<p><strong>These triangles</strong>&nbsp;(I still don&rsquo;t know what they are called)<strong>&nbsp;became life savers</strong>; they were quick to grab, easy to eat, and filling thanks to the rice. I may have missed out on some great restaurant food, but at least&nbsp;<strong>these snacks kept me on my feet in what was one once-in-a-lifetime-dream destinations</strong>.</p>', '2019-09-26 02:02:40', '2019-09-26 11:22:30', 1, 'The-triangle-of-life-Tokyo-500x257_1569517650.image/jpeg'),
(8, 'I found my favorite Café in Barcelona – thanks to a book!', '<p><strong>I dislike entering book shops</strong>. Every time I walk into a book shop, I will end up buying one.</p>\r\n\r\n<p>I entered an international bookshop in Eixample, Barcelona, while looking for some&nbsp;<a href=\"https://hostelgeeks.com/77-cool-things-to-do-in-barcelona/\">cool things to do in Barcelona</a>. And as expected, a book named &bdquo;<a href=\"http://www.stefaniekremser.de/deutsch/literatur/die-toten-gassen-von-barcelona/\" target=\"_blank\"><em>The dead alleys of Barcelona</em></a>&ldquo; got my attention, a crime novel. Long story shot: I bought it, went home, and started reading.</p>\r\n\r\n<p>In this book, the author Stefanie&nbsp;Kremser talks about a special part of El Born, downtown Barcelona. She describes this magical square, this&nbsp;narrow street the main character lived in.</p>\r\n\r\n<p>I didn&rsquo;t know this exact street, and I was curious. I went downtown, wandered around the square and&nbsp;<strong>saw this caf&eacute; with the few tables on the terrace.</strong>&nbsp;Until today, 7 years later, it is still my favorite caf&eacute; in Barcelona &ndash; thanks to this book!</p>', '2019-09-26 02:29:56', '2019-09-26 11:19:43', 1, 'favorite-cafe-barcelona-500x294_1569517483.image/jpeg'),
(9, 'You’re Never Fully Alone When Traveling Solo (first-time solo-travel)', '<p>Prior to my stay at the&nbsp;<a href=\"https://hostelgeeks.com/happynest-hostel-chiang-rai/\">Happynest Hostel</a>&nbsp;in Chiang Rai, I had been traveling the islands and Chiang Mai with my husband and 6 other friends.</p>\r\n\r\n<p>Needless to say, we were rolling deep, which is a rare concept considering we&rsquo;re all American and it&rsquo;s hard to get that many people together to head overseas, let alone a weekend in Vegas!</p>\r\n\r\n<p>So it came without saying, that when everyone headed home to LAX.</p>\r\n\r\n<p>I stayed behind to trek Thailand solo for a week, I felt alone and depressed.</p>\r\n\r\n<p>Don&rsquo;t get me wrong, I was ecstatic to continue my travels, but the thought of being alone after being so accompanied by, felt like a shock in the weirdest way possible.</p>\r\n\r\n<p>The 3-hour bus ride from Chiang Mai to Chiang Rai was painful, even though I tried mercilessly to take my mind off it by gazing out the window watching the beautiful Thai countryside pass me by.</p>\r\n\r\n<blockquote>\r\n<p><em>&ldquo;Focus on the positive. Focus on the positive&rdquo;</em></p>\r\n\r\n<p>I kept telling myself.</p>\r\n</blockquote>\r\n\r\n<p>A few breathing exercises and a short nap later, I arrived in Chiang Rai. I got off the bus, dazed and confused, and it hit me. I snapped out of the &ldquo;<em>poor Chloe</em>&rdquo; mode and into fight or flight more as I have landed in a new city, unsure of where to go, and with no taxis in sight.</p>\r\n\r\n<p>I&rsquo;m sure the look of worry showed on my face because before I know it, a police officer that spoke broken English, was helping me locate a taxi.</p>\r\n\r\n<p>A smile came across my face at the kindness of this sweet stranger and as I climbed into my taxi, the young driver offered to drive me for free considering that Happynest was right around the corner.</p>\r\n\r\n<p>A tear rolled down my cheek as I was thinking about how silly I was for feeling down and my heart began to open up to the experience of solo travels.</p>', '2019-09-26 02:38:55', '2019-09-26 11:17:59', 1, 'happynest-hostel-chiangrai-320x315_1569517379.image/jpeg'),
(10, 'Bali-What You Need to Know Before You Go', '<p>Bali is the most popular island holiday destination in the Indonesian archipelago. It&rsquo;s home to an ancient culture that&#39;s known for its warm hospitality as well as exotic temples and palaces set against stunning natural backdrops. Dining in Bali presents endless choices of exotic, local cuisine. After sunset, famous nightspots come to life offering exciting clubbing and packed dance floors.</p>\r\n\r\n<p>Inland, towering volcanoes and pristine jungles offer plenty to see and do, but you won&#39;t want to stay away from the coastline for long. Popular beach resorts include Kuta, Seminyak and Jimbaran where many of the finest hotels and villas look over world-class surf spots. For tranquil seascapes and sunrises, Sanur, Nusa Dua and remote Candidasa are your best bets. Bali&rsquo;s lesser travelled eastern and northern regions also offer wonderful diving spots in calm bays, with coral gardens teeming with colourful marine biodiversity.</p>', '2019-09-26 02:47:03', '2019-09-26 08:14:00', 1, 'ancient-architectural-design-architecture-2499699_1569506339.image/jpeg'),
(11, 'We fell in love at Marken Gjestehus in Bergen', '<p>Well, we met at a Hostel in Lisbon. We had a good connection and exchanged Facebook accounts.</p>\r\n\r\n<p>Not very much, I kind of put her name on Facebook looking for her, sent the friend request and she accepted me (does that make me a stalker?)</p>\r\n\r\n<p>We kept in touch, talking on Facebook, until I decided to go to Norway for traveling&hellip;and to see her.</p>\r\n\r\n<p>I was not expecting anything, since I&rsquo;m a Brazilian guy that lives in Lisbon and she is a Norwegian living in Bergen.</p>\r\n\r\n<p>But then I booked the&nbsp;Marken Gjestehus Hostel (the 5 Star Hostel in Bergen) and went there with an open heart. If we didn&rsquo;t connect for real, well, at least I would be visiting an amazing pretty city in Norway, would stay in the best hostel of Norway and would be an amazing experience anyway.</p>', '2019-09-26 09:14:42', '2019-09-27 02:43:21', 2, 'web3-happy-young-couple-laugh-outside-street-shutterstock_573938254-ivanko80-ai_1569517214.image/jpeg'),
(12, 'Varanasi, India: A Terror Attack in the City to Die – a True Travel Story', '<p>I cannot imagine myself in a more awful yet interesting place than Varanasi. It is one of the oldest cities in India and the holiest city of Hinduism. Varanasi is also considered as Shiva&rsquo;s favorite city which he never leaves. Above Varanasi hovers a mixed mist of smoke and fumes, so that at night no stars can be seen. The narrow streets are littered with garbage and feces, and cows, pigs, dogs and monkeys are roaming around. Drug dealers and pimps are standing near the Ghats, the stairs leading to the Ganges, looking out for tourists to scam.</p>\r\n\r\n<p>Many religious people come here simply to die, to be cremated on the banks of the Ganges, before the ashes will be handed over to the river.</p>\r\n\r\n<p>They say, this way it is possible to break out of the cycle of birth and rebirth. The city is full of sick people waiting for death.</p>\r\n\r\n<p>One evening we had gathered together to visit a so-called Puja on the Ganges. It is traditionally Hindu ceremony in Varanasi. Suddenly in the midst of the ceremony a bomb exploded. One child died, many people were injured. According to the newspaper Hindustan Times a terror organization called Indian Mudschaheddin confessed to this attack.</p>', '2019-09-26 09:18:16', '2019-09-27 02:41:01', 2, 'Ghats-Varanasi-Ganges-River-India-Uttar-Pradesh_1569517052.image/jpeg'),
(13, 'How I Became Immortal', '<p>By Dying</p>', '2019-09-27 02:14:14', '2019-09-27 03:47:58', 3, 'fallinggggggggg_1569571270.image/jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Matina Bajracharya', 'matinabajra.13@gmail.com', NULL, '$2y$10$3gbXBeyusopSRtBiWZsigu7qDZjyKkx65pkkuXwSr83Q1c2L1biUO', NULL, '2019-09-25 08:01:49', '2019-09-25 08:01:49'),
(2, 'Janet Mills', 'janet@gmail.com', NULL, '$2y$10$tIxrbnB1IqgbXIk5yt.L8eaqK2OUtKY.bv4HUnYglmjFty.1EqIAm', NULL, '2019-09-26 09:11:40', '2019-09-26 09:11:40'),
(3, 'John Cena', 'youcanseeme@john.com', NULL, '$2y$10$GWb37rLthpT/4xFWmggsFOV1xVp4C4eClbMc2cLbYpVU/j6os796a', NULL, '2019-09-27 02:10:52', '2019-09-27 02:10:52'),
(4, 'Utsav', 'test@test.com', NULL, '$2y$10$M48W7WJImNzab0nH5aGfIOMoYsq/ys3.8KNfI67Wh8znnovBzPoeS', NULL, '2019-09-27 06:11:57', '2019-09-27 06:11:57');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
