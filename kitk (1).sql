-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 12, 2016 at 03:25 am
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
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `recipe_id` smallint(5) unsigned NOT NULL,
  `comment` varchar(1500) CHARACTER SET utf8 NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `recipe_id`, `comment`, `created`) VALUES
(1, 4, 19, 'Sounds yum!', '2016-01-11 23:47:50'),
(2, 4, 19, 'Def going to make that :)', '2016-01-11 23:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE IF NOT EXISTS `recipes` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 NOT NULL,
  `subtitle` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `ingredients` text CHARACTER SET utf8 NOT NULL,
  `poster` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `subtitle`, `description`, `ingredients`, `poster`, `date_created`, `category`) VALUES
(10, 'Spinach, Aleo and Feijoa', 'Smoothie', '                  Green Smoothie in my belly for brekkie Spinach, Aloe and Feijoa!\r\nBlend and enjoy!                ', '                  <ul>\r\n<li>1 cup of baby spinach</li>\r\n<li>2 frozen feijoa</li>\r\n<li>1 banana</li>\r\n<li>Sprig of fresh mint</li>\r\n<li>1/2 cup of aloe juice</li>\r\n<li>2/3 cup almond milk</li>\r\n<li>1 tsp supergreens</li>\r\n<li>1 tsp maca</li>\r\n<li>1 tsp slippery elm</li>\r\n</ul>                ', NULL, '2016-01-12 00:20:14', '                  smoothie                '),
(11, 'Coconut Vanilla Oats', 'Rainy day, porridge day', 'I like porridge to be of a finer texture, so I grind old fashion oats until they are of breadcrumb consistency before I use them. The reason I do that instead of buying straight oatmeal is because often it is processed and bleached etc etc.\r\n\r\nCook over a medium element until thick, stirring all the time. \r\nI topped with fresh New Zealand strawberries and @coyo coconut yoghurt!', '<ul>\r\n<li>2 tbsp ground oats</li>\r\n<li>1/2 cup of coconut milk</li>\r\n<li>1/2 cup of almond milk</li>\r\n<li>1/2 tsp natural vanilla essence</li>\r\n<li>1 tsp maca powder</li>\r\n<li>Pinch of salt</li>\r\n<li>Any dried fruit (optional)</li>\r\n</ul>', '56909d572aabd.jpeg', '2016-01-10 20:51:04', 'snack'),
(12, 'Granola Bars', 'Date, Coconut & Cranberry', 'Press in to a square dish and bake at 160 degrees for about 1 hour! Then cool before cutting in to squares.', '<ul>\r\n<li>2 cups of old fashioned oats</li>\r\n<li>1 cup of gluten free flour</li>\r\n<li>1 tsp baking powder</li>\r\n<li>1/2 cup of dark chocolate chips</li>\r\n<li>1/2 cup of dried cranberries</li>\r\n<li>1/2 cup of chopped nuts</li>\r\n<li>1/2 cup of coconut shreds</li>\r\n<li>1 cup of chopped dates</li>\r\n<li>2/3 cup of coconut sugar</li>\r\n<li>200 grams of melted coconut butter or oil</li>\r\n</ul>', '5690a0ad781dd.jpeg', '2016-01-10 20:54:12', 'snack'),
(13, 'Blueberry and Almond', 'smoothie with Maca and Slippery Elm', 'I heart smoothies. Did you know? \r\nBlueberry/Almond smoothie Nutritionally boosted w Maca and Slippery Elm so great for energy and digestive health!', '<ul>\r\n<li>1 cup of almond milk</li>\r\n<li>1 banana</li>\r\n<li>3/4 cup of blueberries</li>\r\n<li>1 heaped tsp almond butter</li>\r\n<li>Handful of ice</li>\r\n<li>1 tsp of maca powder</li>\r\n<li>1 tsp of slippery elm....always makes me think of something off Harry Potter</li>\r\n</ul>', '5690a5011eb15.jpeg', '2016-01-10 20:58:27', 'smoothie'),
(14, 'Blueberry Acai Bowl', '', 'I ❤ Acai Bowls. Made this one and called it lunch.\r\n\r\nAll blended then topped with chopped walnuts, almonds, coconut shreds, cacao nibs, blueberries and a square of Fig and Wild orange @pana_chocolate \r\nIt. Tastes. Amazing.', '<ul>\r\n<li>2 tbsp Acai Powder</li>\r\n<li>1/2 cup frozen blue berries</li>\r\n<li>1 banana</li>\r\n<li>8 cubes of ice</li>\r\n<li>A drizzle of kiwi nectar </li>\r\n</ul>', '5690a6b01f2e1.jpeg', '2016-01-10 20:51:50', 'snack'),
(15, 'Green Smoothie Bowl', '', 'Blended and topped with sliced banana, strawberries, coconut flakes, chia seeds, goji berries and sprouted buckwheat. \r\nI''m a happy girls with a happy tummy!', 'The smoothie is:\r\n<ul>\r\n<li>1 whole pear </li>\r\n<li>1 banana</li> \r\n<li>2 frozen feijoa</li>\r\n<li>2 cups of baby spinach</li>\r\n<li>1 cup of almond milk</li>\r\n<li>2 tsp Supergreen powder</li>\r\n<li>1 tsp Maca powder</li>\r\n</ul>', '5690aa26450d7.jpeg', '2016-01-10 20:42:32', 'snack'),
(16, 'Flu Fighting Smoothie', '', 'Flu fighting smoothie! Made with super simple ingredients that unbeknownst to most, are secret superfoods!\r\n\r\nThis smoothie was made with carrots which contain high levels of vitamin A that helps our liver flush out toxins in our bodies, they also have powerful antiseptic properties that aid us to fight infection.\r\n\r\nI also used beetroot, which is rich in vitamin A as well as C but mostly, a powerful antioxidant, and oranges which are rich in vitamin C and help fight free radicals in our bodies + abundant Polyphenols which protect against viruses. \r\n\r\nMakes two normal person smoothies or one enormous smoothie addict smoothie!\r\n\r\nIf you have a vitamix then just throw all the ingredients in without chopping otherwise:\r\n                                                ', '<ul>\r\n<li>2 carrots grated</li>\r\n<li>1 small beetroot grated</li>\r\n<li>2 oranges peeled and chopped</li>\r\n<li>1 banana</li>\r\n<li>1/2 cup of frozen berries</li>\r\n<li>2/3 cup of almond milk</li>\r\n</ul>                                                ', '56943e09810b5.jpeg', '2016-01-11 23:43:05', 'smoothie                                                '),
(18, 'Pineapple Mango Green Smoothie', '', 'Pineapple Mango Green Smoothie is my on-the-run breakfast today!', '<ul>\r\n<li>1 cup of coconut milk</li>\r\n<li>1 banana</li>\r\n<li>1/2 cup of frozen mango</li>\r\n<li>1/4 cup of pineapple</li>\r\n<li>1 big handful of spinach</li>\r\n<li>1 tsp supergreens</li>\r\n<li>1 tsp maca</li>\r\n</ul>', '56946028bb197.jpeg', '2016-01-12 02:08:40', 'smoothie'),
(19, 'Blueberry Coconut Chia Pudding', '', 'Simple and delicious but made in two components.', '<ul>\r\n<li>Chia pudding:</li>\r\n<br>\r\n<li>5 tbsp of black or white chia</li>\r\n<li>1 cup of So Good NZ Coconut Milk</li>\r\n<li>1 mashed banana</li>\r\n<li>1/2 tsp vanilla</li>\r\n<br>\r\n<li>Mix together and chill overnight.</li>\r\n<li>To have it with warmed Blueberry Compote, simply combine:</li>\r\n<br>\r\n<li>3/4 cup of frozen or fresh blueberries</li>\r\n<li>1/2 tbsp pure maple syrup or honey</li>\r\n<li>Stir over a low heat until piping hot and soft.</li>\r\n<li>I layered mine with sliced banana and topped with the compote.</li>\r\n</ul>', '5692c74e2e299.jpeg', '2016-01-10 21:07:38', 'dessert'),
(20, 'Breastfeeding Bites', 'avaliable through <a href="http://www.thebabybag.co.nz/collections/snacks" target="_blank">The Baby Bag</a>', 'Yum! Do you like cookies? Are you breastfeeding? Or actually even if you aren''t....As of tomorrow, my ''Breastfeeding Bites'' will be available through The Baby Bag! You might even get a yummy sample in your bag this week! ', '<ul>\r\n<li>Enriched with blackstrap molasses and brewer''s yeast, they are decadent and delicious, lactation supporting cookies, but suitable for everyone in the family, breastfeeding or not! For more info check out @thebabybagnz or visit thebabybag.co.nz ❤ Yum yum!\r\nEnjoy!</li>\r\n</ul>', '5692cad49a8a4.jpeg', '2016-01-10 21:22:36', 'snack'),
(22, 'Peach, Strawberry, Pomegranate ', '', 'Starting my day with this beauty.', '<ul>\r\n<li>1/2 cup of frozen peach</li>\r\n<li>3 large strawberries</li>\r\n<li>1/2 a pomegranate (flesh)</li>\r\n<li>1 banana</li>\r\n<li>1 tbsp @coyo_new_zealand (I used passionfruit)</li>\r\n<li>3/4 cup water</li>\r\n\r\n<li>Blended to creamy perfection in my NutriBullet NZ.</li>\r\n</ul>', '56945d688bc88.jpeg', '2016-01-12 01:56:56', 'smoothie'),
(23, 'Gorgeous Green Smoothie', '''Morning Detox''', 'Followed by this gorgeous green smoothie, blended with my ''Morning Detox''. I used frozen feijoas and blended with chilled Storm & India Tea Sisters Organic Morning Detox tea! So fresh! ', '<ul>\r\n<li>1 cup of chilled @stormandindia Morning Detox tea</li>\r\n<li>4 small frozen feijoas</li>\r\n<li>1/3 a banana</li>\r\n<li>1 cup of spinach</li>\r\n<li>1 tbsp of ripe avocado</li>\r\n<li>Juice of half a lemon</li>\r\n<li>Blend and enjoy!</li>\r\n</ul>', '56945e5f9583f.jpeg', '2016-01-12 02:01:03', 'smoothie'),
(24, 'Peanutbutter Jelly', '', 'Spread it like peanut butter jelly....\r\n<br>\r\nYummm this ol'' fave is so delicious! Just woke up from my night shift and decided a smoothie was in order.', '<ul>\r\n<li>5 ripe strawberries</li>\r\n<li>3 medjool dates</li>\r\n<li>1 tbsp crunchy peanut butter</li>\r\n<li>1 cup of almond milk</li>\r\n<li>Ice</li>\r\n\r\n<li>Blended until smoooooth in my NutriBullet NZ !</li>\r\n</ul>', '56945ee2e1304.jpeg', '2016-01-12 02:03:15', 'smoothie'),
(25, 'Pineapple Lump Smoothie', '', 'I just can''t get enough of this Pineapple Lump Smoothie! It''s decadent enough to have as an afternoon treat or dessert but healthy enough to have for breakfast!', '<ul>\r\n<li>3/4 cup of chopped fresh pineapple</li>\r\n<li>1/2 ripe banana</li>\r\n<li>2 large medjool dates</li>\r\n<li>1 heaped tsp cacao</li>\r\n<li>1 heaped tsp cacao nibs</li> \r\n<li>1 Tbs coconut cream</li>\r\n<li>1/3 cup almond milk</li>\r\n\r\n<li>Whizzed up in my NutriBullet NZ!</li>\r\n</ul>', '56945f6c46307.jpeg', '2016-01-12 02:05:32', 'smoothie'),
(26, 'Tropical Smoothie', '', 'Whizzed up in 2 mins in my #nutribulletnz!', '<ul>\r\n<li>1/2 cup of pineapple</li>\r\n<li>1/2 a banana</li>\r\n<li>1/2 cup of frozen mango</li>\r\n<li>3/4 cup of So Good Coconut Milk</li>\r\n<li>1 tbsp coconut yoghurt (I used @raglancoconutyoghurt)</li>\r\n\r\n<li>Delish!</li>\r\n</ul>', '569460ac6cd84.jpeg', '2016-01-12 02:10:52', 'smoothie'),
(27, 'Raw Snickers Bar', '', 'So I know this has been floating around for awhile, but chocolate and peanuts never get old so I wanted to give it a go and make my own recipe. I have seen these made in one, two and three layers and I really wanted to try make a three layer one as the nougat is my favourite bit!\r\n \r\nIt seems a bit fiddly, but other than needing a few bowls and separate chill times, it is really easy to make and well worth the effort! This is perfect with a Sunday afternoon coffee, or cuppa and you won''t believe it is raw, vegan and refined sugarfree!', '<ul>\r\n<li>Base layer:</li>\r\n \r\n<li>In a saucepan or microwave proof bowl, melt together:\r\n \r\n<li>60g of cacao butter or coconut butter\r\n<li>2 tbsp coconut oil\r\n<li>5 tbsp cacao or cocoa\r\n<li>4 tbsp pure maple syrup\r\n \r\n<li>Pour in to a prelined 20cm square dish or cake tin and chill until set (about 15 mins)\r\n </ul>\r\n<ul>\r\n<li>Nougat:</li>\r\n \r\n<li>In a food processor or highspeed blender, blend together:</li>\r\n \r\n<li>3/4 cup of nut meal (I used almond)</li>\r\n<li>1/4 cup of rolled oats</li>\r\n<li>3 tbsp peanut butter</li>\r\n<li>5 tbsp of maple syrup</li>\r\n<li>4 tbsp melted coconut oil (melted)</li>\r\n<li>2 tbsp thick coconut cream</li>\r\n \r\n<li>Spread evenly over the set chocolate layer and chill again until set.</li>\r\n </ul>\r\n<ul>\r\n<li>Caramel Layer:</li>\r\n \r\n<li>In a food processor or highspeed blender, blend together:</li>\r\n \r\n<li>1 1/2 cups of soaked pitted dates (to soak, cover in boiling water for 30 mins then drain)</li>\r\n<li>4 tbsp cacao or coconut butter (melted)</li>\r\n<li>4 tbsp maple syrup</li>\r\n<li>4 tbsp peanut butter</li>\r\n<li>A pinch of salt</li>\r\n \r\n<li>Spread over the set nougat layer, top with crush peanuts (I also chopped up some Reese''s pieces to top) and chill for a further 30+ minutes or until set. Cut in to bars and serve.</li>\r\n \r\n<li>Bars will keep in the fridge for upwards of a week, but must stay cool or else they will melt!</li>\r\n \r\n<li>Enjoy and happy Sunday!</li>\r\n</ul>', '569462042213f.jpeg', '2016-01-12 02:16:36', 'dessert'),
(28, 'Spiced Orange, Cacao and Almond Cake', '', 'You know those days where you are craving chocolate, and lollies and cake? Today was one of those days. When I am having one of those days, I don''t find the best answer to be to entirely cave and eat all of the aforementioned, naughty foods - however coming to a compromise, and making something to satisfy the craving isn''t, in my opinion, caving! Eating delicious food, that is made with wholesome, healthy ingredients is good for you!\r\n \r\nThis spiced orange, cacao and almond cake, was exactly what I felt like - it''s still a treat, being calorie dense and a baked good, but it''s a guilt free treat that I don''t feel bad about putting in to my body.', '<ul>\r\n<li>To make this youself:</li>\r\n \r\n<li>Preheat your oven to 160 degrees celcius. Line a 20cm cake tin.</li>\r\n \r\n<li>It a bowl, mix together:</li>\r\n \r\n<li>125g of coconut cream or coconut yoghurt - if you are non vegan, you can always use normal yoghurt</li>\r\n<li>1 1/3 cup of almond meal</li>\r\n<li>1 tbsp of gluten free flour (or normal)</li>\r\n<li>1 tsp baking powder</li>\r\n<li>3 tbsp of cacao</li>\r\n<li>3 tbsp of puremaple syrup or honey</li>\r\n<li>1/2 a tsp of cinnamon</li>\r\n<li>Zest and juice of one orange</li>\r\n \r\n<li>Bake for about an hour or until set.</li>\r\n \r\n<li>Cool in the tin and serve with extra coconut cream or yoghurt.</li>\r\n \r\n<li>Happy Weekend and Enjoy!</li>\r\n</ul>', '569462e32da55.jpeg', '2016-01-12 02:20:19', 'dessert'),
(29, 'Banana Custard Muffins', '', 'Hi all of you lovely people.\r\n \r\nMy gosh, it has been so long since I posted here...life has been hectic and I have been adjusting to a new job...leaving not much time for blogging. I haven''t done all that much creating either, just the same old faves or ''go to''s" for busy times.\r\n \r\nAnyway, I work a lot of night shifts, and I always like to bring in something yummy to keep us all going (it''s kind of a ''thing'' to bring food to night shift). My new resolution though is to bring in something yummy AND healthy, because I have lately only focused on the former....the latter, not quite so much. I am getting back on the train though!\r\n \r\nHowever, before I do, the Banana Custard Muffins I posted a couple of days ago were a hit and heaps of you requested the recipe, so this is my last "not-so-healthy-but-not-so-bad" recipe for awhile. And there isn''t any reason why you couldn''t "health" it up if you need to. Same goes for turning it vegan, it isn''t actually a vegan recipe, but it could easily be made one if you substituted the egg and the dairy custard.\r\n \r\nAnyway, these took about 10 minutes to prepare and 20 minutes to cook, so if you''re on a night shift - there''s still time! They are sweet and fruity, with a creamy custard centre and have a yummy, crunchy top - I sprinkled over Vogel''s Almond and Ancient Grain "Cafe Style" muesli, which was a perfect match,\r\n \r\nEnjoy!', '<ul>\r\n<li>Preheat your oven to 190 degrees celcius</li>\r\n<li>Line a muffin tray with cupcake papers or grease it</li>\r\n \r\n<li>In a large bowl, mix together</li>\r\n \r\n<li>3 ripe bananas, mashed</li>\r\n<li>2 eggs</li>\r\n<li>2/3 cup of melted butter</li>\r\n </ul>\r\n<ul>\r\n<li>Once combined, add in:</li>\r\n \r\n<li>1/4 cup brown sugar</li>\r\n<li>1/2 cup white sugar</li>\r\n<li>1 1/2 self raising flour</li>\r\n<li>1 tsp baking soda</li>\r\n<li>Pinch of salt</li>\r\n </ul>\r\n<ul>\r\n<li>Mix until just combined (you may still see a few bits of flour - that''s ok...what''s important is not to overmix like you would a cake batter).</li>\r\n \r\n<li>Spread evenely among muffin tray. Dollop 1 tsp of homemade or ready made custard in to the centre of each muffin, sprinkle on cereal, seeds, chopped nuts, extra brown sugar - ANYTHING!</li>\r\n \r\n<li>Bake for around 20 mins or until they are golden brown and bounce back to the touch.</li>\r\n</ul>', '569463eaab08e.jpeg', '2016-01-12 02:24:42', 'dessert');

-- --------------------------------------------------------

--
-- Table structure for table `recipes_tag`
--

CREATE TABLE IF NOT EXISTS `recipes_tag` (
  `recipe_id` mediumint(8) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes_tag`
--

INSERT INTO `recipes_tag` (`recipe_id`, `tag_id`) VALUES
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(19, 23),
(19, 22),
(19, 21),
(19, 20),
(20, 26),
(20, 25),
(20, 24),
(16, 2),
(10, 2),
(22, 53),
(22, 65),
(22, 67),
(22, 64),
(22, 66),
(23, 70),
(23, 69),
(23, 64),
(24, 64),
(25, 73),
(18, 2),
(26, 2),
(27, 73),
(27, 20),
(28, 2),
(29, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
`id` int(11) unsigned NOT NULL,
  `tag` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`) VALUES
(2, ''),
(23, 'banana'),
(22, 'blueberry'),
(26, 'breastfeeding'),
(21, 'chia'),
(73, 'chocolate'),
(25, 'cookies'),
(20, 'dessert'),
(70, 'feijoas'),
(69, 'green'),
(53, 'hello'),
(65, 'peach'),
(67, 'pomegranate'),
(19, 'poster image'),
(64, 'smoothie'),
(66, 'strawberry'),
(24, 'the baby bag');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `movie_id` (`recipe_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
 ADD PRIMARY KEY (`id`), ADD FULLTEXT KEY `title` (`title`), ADD FULLTEXT KEY `description` (`description`), ADD FULLTEXT KEY `ingredients` (`ingredients`), ADD FULLTEXT KEY `category` (`category`);

--
-- Indexes for table `recipes_tag`
--
ALTER TABLE `recipes_tag`
 ADD KEY `recipe_id` (`recipe_id`), ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `tag` (`tag`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(15) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
