-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 11, 2016 at 11:25 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kitk`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `recipe_id` smallint(5) UNSIGNED NOT NULL,
  `comment` varchar(1500) CHARACTER SET utf8 NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 NOT NULL,
  `subtitle` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `ingredients` text CHARACTER SET utf8 NOT NULL,
  `poster` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `subtitle`, `description`, `ingredients`, `poster`, `date_created`, `category`) VALUES
(10, 'Spinach, Aleo and Feijoa', 'Smoothie', 'Green Smoothie in my belly for brekkie Spinach, Aloe and Feijoa!\r\nBlend and enjoy!', '<ul>\r\n<li>1 cup of baby spinach</li>\r\n<li>2 frozen feijoa</li>\r\n<li>1 banana</li>\r\n<li>Sprig of fresh mint</li>\r\n<li>1/2 cup of aloe juice</li>\r\n<li>2/3 cup almond milk</li>\r\n<li>1 tsp supergreens</li>\r\n<li>1 tsp maca</li>\r\n<li>1 tsp slippery elm</li>\r\n</ul>', '56909a50f345c.jpeg', '2016-01-10 20:52:57', 'smoothie'),
(11, 'Coconut Vanilla Oats', 'Rainy day, porridge day', 'I like porridge to be of a finer texture, so I grind old fashion oats until they are of breadcrumb consistency before I use them. The reason I do that instead of buying straight oatmeal is because often it is processed and bleached etc etc.\r\n\r\nCook over a medium element until thick, stirring all the time. \r\nI topped with fresh New Zealand strawberries and @coyo coconut yoghurt!', '<ul>\r\n<li>2 tbsp ground oats</li>\r\n<li>1/2 cup of coconut milk</li>\r\n<li>1/2 cup of almond milk</li>\r\n<li>1/2 tsp natural vanilla essence</li>\r\n<li>1 tsp maca powder</li>\r\n<li>Pinch of salt</li>\r\n<li>Any dried fruit (optional)</li>\r\n</ul>', '56909d572aabd.jpeg', '2016-01-10 20:51:04', 'snack'),
(12, 'Granola Bars', 'Date, Coconut & Cranberry', 'Press in to a square dish and bake at 160 degrees for about 1 hour! Then cool before cutting in to squares.', '<ul>\r\n<li>2 cups of old fashioned oats</li>\r\n<li>1 cup of gluten free flour</li>\r\n<li>1 tsp baking powder</li>\r\n<li>1/2 cup of dark chocolate chips</li>\r\n<li>1/2 cup of dried cranberries</li>\r\n<li>1/2 cup of chopped nuts</li>\r\n<li>1/2 cup of coconut shreds</li>\r\n<li>1 cup of chopped dates</li>\r\n<li>2/3 cup of coconut sugar</li>\r\n<li>200 grams of melted coconut butter or oil</li>\r\n</ul>', '5690a0ad781dd.jpeg', '2016-01-10 20:54:12', 'snack'),
(13, 'Blueberry and Almond', 'smoothie with Maca and Slippery Elm', 'I heart smoothies. Did you know? \r\nBlueberry/Almond smoothie Nutritionally boosted w Maca and Slippery Elm so great for energy and digestive health!', '<ul>\r\n<li>1 cup of almond milk</li>\r\n<li>1 banana</li>\r\n<li>3/4 cup of blueberries</li>\r\n<li>1 heaped tsp almond butter</li>\r\n<li>Handful of ice</li>\r\n<li>1 tsp of maca powder</li>\r\n<li>1 tsp of slippery elm....always makes me think of something off Harry Potter</li>\r\n</ul>', '5690a5011eb15.jpeg', '2016-01-10 20:58:27', 'smoothie'),
(14, 'Blueberry Acai Bowl', '', 'I ❤ Acai Bowls. Made this one and called it lunch.\r\n\r\nAll blended then topped with chopped walnuts, almonds, coconut shreds, cacao nibs, blueberries and a square of Fig and Wild orange @pana_chocolate \r\nIt. Tastes. Amazing.', '<ul>\r\n<li>2 tbsp Acai Powder</li>\r\n<li>1/2 cup frozen blue berries</li>\r\n<li>1 banana</li>\r\n<li>8 cubes of ice</li>\r\n<li>A drizzle of kiwi nectar </li>\r\n</ul>', '5690a6b01f2e1.jpeg', '2016-01-10 20:51:50', 'snack'),
(15, 'Green Smoothie Bowl', '', 'Blended and topped with sliced banana, strawberries, coconut flakes, chia seeds, goji berries and sprouted buckwheat. \r\nI''m a happy girls with a happy tummy!', 'The smoothie is:\r\n<ul>\r\n<li>1 whole pear </li>\r\n<li>1 banana</li> \r\n<li>2 frozen feijoa</li>\r\n<li>2 cups of baby spinach</li>\r\n<li>1 cup of almond milk</li>\r\n<li>2 tsp Supergreen powder</li>\r\n<li>1 tsp Maca powder</li>\r\n</ul>', '5690aa26450d7.jpeg', '2016-01-10 20:42:32', 'snack'),
(16, 'Flu Fighting Smoothie', '', '                  Flu fighting smoothie! Made with super simple ingredients that unbeknownst to most, are secret superfoods!\r\n\r\nThis smoothie was made with carrots which contain high levels of vitamin A that helps our liver flush out toxins in our bodies, they also have powerful antiseptic properties that aid us to fight infection.\r\n\r\nI also used beetroot, which is rich in vitamin A as well as C but mostly, a powerful antioxidant, and oranges which are rich in vitamin C and help fight free radicals in our bodies + abundant Polyphenols which protect against viruses. \r\n\r\nMakes two normal person smoothies or one enormous smoothie addict smoothie!\r\n\r\nIf you have a vitamix then just throw all the ingredients in without chopping otherwise:\r\n                                ', '                  <ul>\r\n<li>2 carrots grated</li>\r\n<li>1 small beetroot grated</li>\r\n<li>2 oranges peeled and chopped</li>\r\n<li>1 banana</li>\r\n<li>1/2 cup of frozen berries</li>\r\n<li>2/3 cup of almond milk</li>\r\n</ul>                                ', '569421106f569.jpeg', '2016-01-11 21:39:28', '                  smoothie                                '),
(18, 'Strawberry, Spinach and Coconut', 'Protein Shake', '', '<ul>\r\n<li>Serves two:</li>\r\n\r\n<li>2 cups of spinach </li>\r\n<li>2 bananas</li>\r\n<li>4 large strawberries </li>\r\n<li>2 cups of coconut milk</li>\r\n<li>2 scoops of vegan protein</li>\r\n<li>2 tsp of maca</li>\r\n<li>2 tsp of supergreens powder</li>\r\n\r\n<li>...so Yep just two of everything</li>\r\n</ul>', NULL, '2016-01-10 09:59:09', 'smoothie'),
(19, 'Blueberry Coconut Chia Pudding', '', 'Simple and delicious but made in two components.', '<ul>\r\n<li>Chia pudding:</li>\r\n<br>\r\n<li>5 tbsp of black or white chia</li>\r\n<li>1 cup of So Good NZ Coconut Milk</li>\r\n<li>1 mashed banana</li>\r\n<li>1/2 tsp vanilla</li>\r\n<br>\r\n<li>Mix together and chill overnight.</li>\r\n<li>To have it with warmed Blueberry Compote, simply combine:</li>\r\n<br>\r\n<li>3/4 cup of frozen or fresh blueberries</li>\r\n<li>1/2 tbsp pure maple syrup or honey</li>\r\n<li>Stir over a low heat until piping hot and soft.</li>\r\n<li>I layered mine with sliced banana and topped with the compote.</li>\r\n</ul>', '5692c74e2e299.jpeg', '2016-01-10 21:07:38', 'dessert'),
(20, 'Breastfeeding Bites', 'avaliable through <a href="http://www.thebabybag.co.nz/collections/snacks" target="_blank">The Baby Bag</a>', 'Yum! Do you like cookies? Are you breastfeeding? Or actually even if you aren''t....As of tomorrow, my ''Breastfeeding Bites'' will be available through The Baby Bag! You might even get a yummy sample in your bag this week! ', '<ul>\r\n<li>Enriched with blackstrap molasses and brewer''s yeast, they are decadent and delicious, lactation supporting cookies, but suitable for everyone in the family, breastfeeding or not! For more info check out @thebabybagnz or visit thebabybag.co.nz ❤ Yum yum!\r\nEnjoy!</li>\r\n</ul>', '5692cad49a8a4.jpeg', '2016-01-10 21:22:36', 'snack');

-- --------------------------------------------------------

--
-- Table structure for table `recipes_tag`
--

CREATE TABLE `recipes_tag` (
  `recipe_id` mediumint(8) UNSIGNED NOT NULL,
  `tag_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes_tag`
--

INSERT INTO `recipes_tag` (`recipe_id`, `tag_id`) VALUES
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(18, 2),
(19, 23),
(19, 22),
(19, 21),
(19, 20),
(20, 26),
(20, 25),
(20, 24),
(16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`) VALUES
(2, ''),
(23, 'banana'),
(22, 'blueberry'),
(26, 'breastfeeding'),
(21, 'chia'),
(25, 'cookies'),
(20, 'dessert'),
(19, 'poster image'),
(24, 'the baby bag');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(15) UNSIGNED NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `role` enum('user','admin') CHARACTER SET utf8 NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'sarahkirby', 'sarah@sarah.com', '$2y$10$Uw1YgjQwU4kd99wZMYfUYupz7/Jq6Lq6E9vqaAuGc3TYPFVEAHzAG', 'user'),
(2, 'User', 'user@user.com', '$2y$10$GfXQksVYsDXVAEDfLHls7.N133QejZ6xvqJd2pXImRASQj/aQuAV2', 'user'),
(3, 'Sarah', 'sarahkirby@sarah.com', '$2y$10$ODx7KKLiu.UYNpz16UpXlufZqeZ3rExAiAOw06ejqzAfWPYXFdm/O', 'user'),
(4, 'Admin', 'sk.irby@icloud.com', '$2y$10$e5ItK4IuD6Txoq0k7lEZ8.xhqL96VN3USO5T24M7t0OTwkr9c/mHK', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `movie_id` (`recipe_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes_tag`
--
ALTER TABLE `recipes_tag`
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag` (`tag`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recipes_tag`
--
ALTER TABLE `recipes_tag`
  ADD CONSTRAINT `recipes_tag_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipes_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
