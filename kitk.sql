-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 22, 2015 at 01:55 am
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kitk`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE IF NOT EXISTS `recipes` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `description`, `image`, `date_created`) VALUES
(1, 'Peanut Butter & Jelly', 'Yummm this ol'' fave is so delicious! Just woke up from my night shift and decided a smoothie was in order.\r\n\r\n5 ripe strawberries\r\n3 medjool dates \r\n1 tbsp crunchy peanut butter \r\n1 cup of almond milk\r\nIce \r\n\r\nBlended until smoooooth\r\n\r\nK x', NULL, '2015-12-22 00:24:24'),
(2, 'Acai Bowl', '| G I V E A W A Y | \r\n\r\nWhizzed up this lil Acai Bowl for breakfast - my throat feels as though it has been attacked by an army of razor blades so it went down well. \r\n\r\nTo make:\r\n\r\n4 bananas\r\n6 large strawberries\r\n2 tbsp ripe avocado \r\n4 tbsp Acai powder (I used @purejungleacai) \r\n2 cups of water or juice (I used @vitafreshnz no added sugar black current and apple) \r\nHandful of ice \r\n\r\nI used my by NutriBullet NZ which brings me to THIS:\r\n\r\nMERRY CHRISTMAS!\r\n\r\nI have ONE amazing NutriBullet 900watt Series Magic Bullet to give to some lucky lucy! This is the one I use and I don''t think I could live without it! \r\n\r\nAll you have to do is like this post, tag a mate and tell me below why you super duper want or need this amazing lil piece of equipment!\r\n\r\nYou can enter on my FB or IG or both. \r\nI will pick a winner on December 1st at 8pm.\r\n\r\nHAPPY WEEKEND!\r\n\r\nK x', NULL, '2015-12-22 00:24:24'),
(3, 'Kiwi Mango Beet', 'Post night shift smoothie ft. recycled photos bc I am suuuper tired!\r\n\r\nKiwi Mango Beet. I love it.\r\n\r\nServe two:\r\n1 1/2 cups of frozen mango\r\n1 banana\r\n1/3 a beet \r\n2 kiwi fruit \r\n1 1/2 cup of So Good NZ Unsweetened Coconut Milk\r\n\r\nBlend up and serve!', NULL, '2015-12-22 00:24:24'),
(4, 'Gorgeous Green Smoothie', 'Followed by this gorgeous green smoothie, blended with my ''Morning Detox''. I used frozen feijoas and blended with chilled Storm & India Tea Sisters Organic Morning Detox tea! So fresh! \r\n\r\n1 cup of chilled @stormandindia Morning Detox tea \r\n4 small frozen feijoas\r\n1/3 a banana\r\n1 cup of spinach\r\n1 tbsp of ripe avocado \r\nJuice of half a lemon \r\n\r\nBlend and enjoy!\r\n\r\nK x', NULL, '2015-12-22 00:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(15) unsigned NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `role` enum('user','admin') CHARACTER SET utf8 NOT NULL DEFAULT 'user'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'sarahkirby', 'sarah@sarah.com', '$2y$10$Uw1YgjQwU4kd99wZMYfUYupz7/Jq6Lq6E9vqaAuGc3TYPFVEAHzAG', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(15) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
