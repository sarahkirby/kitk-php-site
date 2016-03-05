-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2016 at 10:13 AM
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

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `recipe_id`, `comment`, `created`) VALUES
(1, 4, 16, 'helelslsllslsllslsllsl', '2016-02-15 06:59:14'),
(2, 4, 16, 'DO YOU WORK FOR MEEMMEMEMMEMME??', '2016-02-15 07:00:12'),
(3, 4, 16, 'Again???????????', '2016-02-15 07:00:19'),
(4, 4, 16, 'Okay thanks', '2016-02-15 07:00:24'),
(5, 4, 18, 'Comment 1 2 3 testing', '2016-02-15 07:00:40'),
(6, 4, 18, 'Comment 1 2 3 testing', '2016-02-15 07:01:24'),
(7, 4, 18, '<a href="facebook.com">Hellloooooo</a>', '2016-02-15 07:20:10'),
(8, 4, 18, 'hellllllllllllllllllo', '2016-02-15 20:57:41'),
(9, 4, 18, '&lt;a href=&quot;facebook.com&quot;&gt;Hi&lt;/a&gt;', '2016-02-15 20:58:02'),
(10, 4, 18, '&lt;a href=&quot;facebook.com&quot;&gt;No html!&lt;/a&gt;', '2016-02-15 20:58:40');

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
(10, 'Spinach, Aleo and Feijoa', 'Smoothie', '                  Green Smoothie in my belly for brekkie Spinach, Aloe and Feijoa!\r\nBlend and enjoy!                ', '                  <ul>\r\n<li>1 cup of baby spinach</li>\r\n<li>2 frozen feijoa</li>\r\n<li>1 banana</li>\r\n<li>Sprig of fresh mint</li>\r\n<li>1/2 cup of aloe juice</li>\r\n<li>2/3 cup almond milk</li>\r\n<li>1 tsp supergreens</li>\r\n<li>1 tsp maca</li>\r\n<li>1 tsp slippery elm</li>\r\n</ul>                ', NULL, '2016-01-12 00:20:14', '                  smoothie                '),
(11, 'Coconut Vanilla Oats', 'Rainy day, porridge day', 'I like porridge to be of a finer texture, so I grind old fashion oats until they are of breadcrumb consistency before I use them. The reason I do that instead of buying straight oatmeal is because often it is processed and bleached etc etc.\r\n\r\nCook over a medium element until thick, stirring all the time. \r\nI topped with fresh New Zealand strawberries and @coyo coconut yoghurt!', '<ul>\r\n<li>2 tbsp ground oats</li>\r\n<li>1/2 cup of coconut milk</li>\r\n<li>1/2 cup of almond milk</li>\r\n<li>1/2 tsp natural vanilla essence</li>\r\n<li>1 tsp maca powder</li>\r\n<li>Pinch of salt</li>\r\n<li>Any dried fruit (optional)</li>\r\n</ul>', '56909d572aabd.jpeg', '2016-01-10 20:51:04', 'snack'),
(12, 'Granola Bars', 'Date, Coconut & Cranberry', 'Press in to a square dish and bake at 160 degrees for about 1 hour! Then cool before cutting in to squares.', '<ul>\r\n<li>2 cups of old fashioned oats</li>\r\n<li>1 cup of gluten free flour</li>\r\n<li>1 tsp baking powder</li>\r\n<li>1/2 cup of dark chocolate chips</li>\r\n<li>1/2 cup of dried cranberries</li>\r\n<li>1/2 cup of chopped nuts</li>\r\n<li>1/2 cup of coconut shreds</li>\r\n<li>1 cup of chopped dates</li>\r\n<li>2/3 cup of coconut sugar</li>\r\n<li>200 grams of melted coconut butter or oil</li>\r\n</ul>', '5690a0ad781dd.jpeg', '2016-01-10 20:54:12', 'snack'),
(13, 'Blueberry and Almond', 'smoothie with Maca and Slippery Elm', 'I heart smoothies. Did you know? \r\nBlueberry/Almond smoothie Nutritionally boosted w Maca and Slippery Elm so great for energy and digestive health!', '1 cup of almond milk<br>\r\n1 banana<br>\r\n3/4 cup of blueberries<br>\r\n1 heaped tsp almond butter<br>\r\nHandful of ice<br>\r\n1 tsp of maca powder<br>\r\n1 tsp of slippery elm....always makes me think of something off Harry Potter<br>', '5690a5011eb15.jpeg', '2016-01-10 20:58:27', 'smoothie'),
(14, 'Blueberry Acai Bowl', '', 'I ❤ Acai Bowls. Made this one and called it lunch.\r\n\r\nAll blended then topped with chopped walnuts, almonds, coconut shreds, cacao nibs, blueberries and a square of Fig and Wild orange @pana_chocolate \r\nIt. Tastes. Amazing.', '<ul>\r\n<li>2 tbsp Acai Powder</li>\r\n<li>1/2 cup frozen blue berries</li>\r\n<li>1 banana</li>\r\n<li>8 cubes of ice</li>\r\n<li>A drizzle of kiwi nectar </li>\r\n</ul>', '5690a6b01f2e1.jpeg', '2016-01-10 20:51:50', 'snack'),
(15, 'Green Smoothie Bowl', '', 'Blended and topped with sliced banana, strawberries, coconut flakes, chia seeds, goji berries and sprouted buckwheat. \r\nI''m a happy girls with a happy tummy!', 'The smoothie is:\r\n<ul>\r\n<li>1 whole pear </li>\r\n<li>1 banana</li> \r\n<li>2 frozen feijoa</li>\r\n<li>2 cups of baby spinach</li>\r\n<li>1 cup of almond milk</li>\r\n<li>2 tsp Supergreen powder</li>\r\n<li>1 tsp Maca powder</li>\r\n</ul>', '5690aa26450d7.jpeg', '2016-01-10 20:42:32', 'snack'),
(16, 'Flu Fighting Smoothie', '', 'Flu fighting smoothie! Made with super simple ingredients that unbeknownst to most, are secret superfoods!\r\n<br>\r\nThis smoothie was made with carrots which contain high levels of vitamin A that helps our liver flush out toxins in our bodies, they also have powerful antiseptic properties that aid us to fight infection.\r\n<br>\r\nI also used beetroot, which is rich in vitamin A as well as C but mostly, a powerful antioxidant, and oranges which are rich in vitamin C and help fight free radicals in our bodies + abundant Polyphenols which protect against viruses. \r\n<br>\r\nMakes two normal person smoothies or one enormous smoothie addict smoothie!\r\n<br>\r\nIf you have a vitamix then just throw all the ingredients in without chopping otherwise:\r\n                                                ', '2 carrots grated<br>\r\n1 small beetroot grated<br>\r\n2 oranges peeled and chopped<br>\r\n1 banana<br>\r\n1/2 cup of frozen berries<br>\r\n2/3 cup of almond milk<br>\r\n                                               ', '56943e09810b5.jpeg', '2016-01-11 23:43:05', 'smoothie                                                '),
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
(29, 'Banana Custard Muffins', '', 'Hi all of you lovely people.\r\n \r\nMy gosh, it has been so long since I posted here...life has been hectic and I have been adjusting to a new job...leaving not much time for blogging. I haven''t done all that much creating either, just the same old faves or ''go to''s" for busy times.\r\n \r\nAnyway, I work a lot of night shifts, and I always like to bring in something yummy to keep us all going (it''s kind of a ''thing'' to bring food to night shift). My new resolution though is to bring in something yummy AND healthy, because I have lately only focused on the former....the latter, not quite so much. I am getting back on the train though!\r\n \r\nHowever, before I do, the Banana Custard Muffins I posted a couple of days ago were a hit and heaps of you requested the recipe, so this is my last "not-so-healthy-but-not-so-bad" recipe for awhile. And there isn''t any reason why you couldn''t "health" it up if you need to. Same goes for turning it vegan, it isn''t actually a vegan recipe, but it could easily be made one if you substituted the egg and the dairy custard.\r\n \r\nAnyway, these took about 10 minutes to prepare and 20 minutes to cook, so if you''re on a night shift - there''s still time! They are sweet and fruity, with a creamy custard centre and have a yummy, crunchy top - I sprinkled over Vogel''s Almond and Ancient Grain "Cafe Style" muesli, which was a perfect match,\r\n \r\nEnjoy!', '<ul>\r\n<li>Preheat your oven to 190 degrees celcius</li>\r\n<li>Line a muffin tray with cupcake papers or grease it</li>\r\n \r\n<li>In a large bowl, mix together</li>\r\n \r\n<li>3 ripe bananas, mashed</li>\r\n<li>2 eggs</li>\r\n<li>2/3 cup of melted butter</li>\r\n </ul>\r\n<ul>\r\n<li>Once combined, add in:</li>\r\n \r\n<li>1/4 cup brown sugar</li>\r\n<li>1/2 cup white sugar</li>\r\n<li>1 1/2 self raising flour</li>\r\n<li>1 tsp baking soda</li>\r\n<li>Pinch of salt</li>\r\n </ul>\r\n<ul>\r\n<li>Mix until just combined (you may still see a few bits of flour - that''s ok...what''s important is not to overmix like you would a cake batter).</li>\r\n \r\n<li>Spread evenely among muffin tray. Dollop 1 tsp of homemade or ready made custard in to the centre of each muffin, sprinkle on cereal, seeds, chopped nuts, extra brown sugar - ANYTHING!</li>\r\n \r\n<li>Bake for around 20 mins or until they are golden brown and bounce back to the touch.</li>\r\n</ul>', '569463eaab08e.jpeg', '2016-01-12 02:24:42', 'dessert'),
(31, 'Vegan Cream Cheese', '', 'I had SO many messages asking about vegan/healthy snacks and savoury foods, summer is definitely here and enjoy some savoury platters is one of my (and clearly lots of others'')  favourite things to do.\r\n \r\nCheese is an ok food to eat in moderation, but it obviously isn''t suitable for vegans, and it is also high in saturated fat. I put together this recipe for a vegan cream cheese - two flavours; spinach and basil as well as garlic. This would go perfectly on a platter with crackers and normal cheese accompaniments or as a dip for vegetable sticks/corn chips etc etc. \r\n \r\nCheese lovers won''t feel like they''re missing out! It is smooth, creamy and savoury and you''ll have difficulty to stop tucking in to it.', '<ul>\r\n<li>To make this, either blend together (high speed blenders only) or process:</li>\r\n \r\n<li>1 cup of cashews (soaked for at least 4 hours)</li>\r\n<li>2 tbsp of nutritional yeast</li>\r\n<li>A pinch of salt and pepper</li>\r\n<li>Juice of a lemon</li>\r\n \r\n<li>To make both flavours, separate in to half.</li>\r\n \r\n<li>For garlic:</li>\r\n \r\n<li>Blend in 2 cloves of fresh garlic to half of the mixture</li>\r\n \r\n<li>For spinach and basil:</li>\r\n \r\n<li>Blend in 1 cup of baby spinach leaves + a handful of fresh basil</li>\r\n \r\n<li>If you''d prefer just one of the flavours, just add double of the "add on" ingredents, blend till smooth and creamy and refirdgerate for at least 4 hours before serving.</li>\r\n</ul>', '5694b99d6ddae.jpeg', '2016-01-12 08:30:21', 'vegan'),
(32, 'Raspberry Fudge Brownie Balls', '', 'Bliss balls are probably one of my favourite things to make (and eat), I love making them a little decadent, but still healthy, so that I have snacks on hand that are both delicious and nourising (also, they help my sugar cravings and keep me on track!). \r\n \r\nI really love all types of bliss balls; apricot, lemon, ginger - you name it! But most of all, I loooove chocolate ones. They are the best for fooling my brain in to thinking I am having something naughty, when really, I am having a little ball of nutritious goodness! I like to keep them quite small, (1-2 mouthful size) and I usually have one or two as a breakfast on the run, or with my afternoon coffee, instead of a biscuit.\r\n \r\nSo here is my receipe for these little fudgy treats!\r\n \r\nP.S. you can use any berry you like (or none, if you prefer!)', '<ul>\r\n<li>In a high speed food processor, process together:</li>\r\n \r\n<li>1 cup of raw cashews</li>\r\n<li>1 cup of raw almonds</li>\r\n<li>1/2 cup of raw walnuts</li>\r\n<li>3 tbsp of chia seeds</li>\r\n<li>1/2 cup of dried cranberries</li>\r\n<li>1 1/2 cup of pitted medjool dates (you could use dried dates, but soak them in boiling water first)</li>\r\n<li>1 tbsp melted coconut oil</li>\r\n<li>3 tbsp cacao</li>\r\n<li>1 cup of fresh, or frozen raspberries</li>\r\n \r\n<li>Roll in to balls and store in the fridge.</li>\r\n \r\n<li>You can also roll them in coconut, seeds, cacao nibs - anything really, for a bit of extra delight!</li>\r\n</ul>', '5694bf29c5b1a.jpeg', '2016-01-12 08:54:01', 'vegan'),
(33, 'Raspberry, Lime and Coconut ''Icecream''', '', 'This. Is. Amazing. Seriously, any time, any place. I had it for breakfast, and on a hot, muggy morning it is absolutely perfect. But make it for breakfast, lunch or dinner - it''s deceivingly healthy and full of good stuff!\r\n \r\nPerfect for a a dessert at a dinner party if you have any vegan (or not!) friends - and if you are in search of a healthy pudding for the kids, this one is definitely for you, trust me they will not know the difference!\r\n \r\nIt is so super easy to make, but you will need either a high powered blender like a vitamix/ninja or a food processor. Alternatively, if you have one of those ''yonanas'' dessert makers, that would be perfect too. ', '<ul>\r\n<li>So to make this little lover, process or blend together:</li>\r\n \r\n<li>3 frozen bananas</li>\r\n<li>1/2 cup of frozen raspberries</li>\r\n<li>1 tbsp of coconut cream</li>\r\n<li>Squeeze of fresh lime</li>\r\n \r\n<li>Serve immediately, serves 2-3!</li>\r\n</ul>', '5694c266b29bd.jpeg', '2016-01-12 09:07:50', 'vegan'),
(34, 'Lime Sipper smoothie', 'with coconut water kefir', 'How to make the tastiest green smoothie ever? With coconut water kefir! I used ''Lime Sipper'' by @thekefircompany and o.m.g best smoothie ever! ', '<ul>\r\n<li>In my #nutribulletnz I have:</li>\r\n\r\n<li>3/4 cup of @thekefircompany Lime Coconut Kefir</li>\r\n<li>1/2 cup of frozen mango</li>\r\n<li>1 banana</li>\r\n<li>2 cups of baby spinach</li>\r\n<li>1/2 cup of raspberries</li>\r\n\r\n<li>Go make and enjoy to wake yourself up after the game!</li>\r\n</ul>', '5694c373a6db3.jpeg', '2016-01-12 09:12:19', 'smoothie'),
(35, 'Choc-Banana Chia Parfait', '', 'Mmm...this Choc-Banana Chia Parfait was so delicious, I''ve already eaten two and it''s only 11 o''clock!! @littleislandnz chocolate coconut drinking milk is the perfect staple in this super easy, yet decadent and healthy recipe - perfect for breakfast OR dessert (or just a snack!) and I am sure kiddies will love it too!! ', 'Mash 1 banana<br>\r\n4 tbsp of chia seeds<br>\r\n1 tbsp raw cacao<br>\r\n2/3 cup of @littleislandnz chocolate coconut drinking milk! Let it chill for at least an hour and then layer it up with sliced banana and coconut cream! \r\n\r\n', '56daa2f672b7e.png', '2016-03-05 09:12:22', 'glutenfree');

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
(29, 2),
(31, 3),
(31, 4),
(32, 1),
(32, 2),
(32, 5),
(33, 1),
(33, 2),
(33, 5),
(33, 6),
(34, 1),
(34, 2),
(34, 5),
(34, 6),
(34, 7),
(34, 8),
(35, 1),
(35, 2),
(35, 5),
(35, 6),
(35, 7),
(35, 8),
(35, 9);

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
(1, ''),
(2, ''),
(5, ''),
(6, ''),
(7, ''),
(8, ''),
(9, ''),
(3, 'vegan'),
(4, 'vegan');

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
(4, 'Admin', 'sk.irby@icloud.com', '$2y$10$e5ItK4IuD6Txoq0k7lEZ8.xhqL96VN3USO5T24M7t0OTwkr9c/mHK', 'admin'),
(5, 'Hello there', 'sup@sup.com', '$2y$10$Sna/x/EUAn1r3zfqiWQJUOBUBR/eVIPEXkDQ0Dj2eMxZ//jTqtKe.', 'user'),
(6, 'spongebob', 'spongebob@hot.com', '$2y$10$WCNLHPU5FT2y.kHTkWRWO.I6gJNa30aUVSsY92x4/zpN/JRxNOYEW', 'user');

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
ALTER TABLE `recipes` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `recipes` ADD FULLTEXT KEY `description` (`description`);

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
  ADD KEY `tag` (`tag`);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  ADD CONSTRAINT `recipes_tag_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
