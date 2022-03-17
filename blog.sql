-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Generation Time: Mar 17, 2022 at 07:30 AM
-- Server version: 8.0.19
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(101, 'Technology'),
(102, 'Fashion'),
(103, 'Sceince'),
(104, 'Learning'),
(105, 'Food'),
(106, 'Space'),
(107, 'Travel'),
(108, 'News'),
(109, 'Business'),
(110, 'Sports'),
(111, 'Health and fitness'),
(112, 'Movies');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int NOT NULL,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `post_id`, `comment`, `comment_date`) VALUES
(1, 4444, 950078264, 'nice explanation!', '2022-03-16'),
(2, 4443, 950078264, 'The best article about array', '2022-03-02'),
(3, 4443, 215471981, 'nice article', '2022-03-17'),
(4, 4443, 289099303, 'that\'s a good news', '2022-03-17'),
(5, 4443, 950078264, 'testing', '2022-03-17'),
(6, 844280531, 332181902, 'nice explanation!', '2022-03-17'),
(7, 844280531, 678111988, 'nice sense!', '2022-03-17'),
(8, 844280531, 678111988, 'hello guys', '2022-03-17'),
(9, 844280531, 313978282, 'best recipe for Matar paneer', '2022-03-17'),
(10, 844280531, 313978282, 'nice recipe', '2022-03-17'),
(11, 918647843, 313978282, 'I tried this recipe paneer was so delicious', '2022-03-17'),
(12, 918647843, 215471981, 'nice article bca wala', '2022-03-17'),
(13, 4444, 904818707, 'Varanasi is best among all other places', '2022-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `post_title` varchar(200) NOT NULL,
  `post_topic` varchar(300) NOT NULL,
  `post_description` varchar(700) NOT NULL,
  `review_date` date NOT NULL,
  `publish_date` date DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'review',
  `post_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `category_id`, `post_title`, `post_topic`, `post_description`, `review_date`, `publish_date`, `status`, `post_content`) VALUES
(176341309, 4444, 103, 'What is science', 'science defnition', 'Science is the pursuit and application of knowledge and understanding of the natural and social world following a systematic methodology based on evidence.', '2022-03-15', '2022-03-15', 'publish', 'Science is the pursuit and application of knowledge and understanding of the natural and social world following a systematic methodology based on evidence.\r\nScience is the pursuit and application of knowledge and understanding of the natural and social world following a systematic methodology based on evidence.\r\nScience is the pursuit and application of knowledge and understanding of the natural and social world following a systematic methodology based on evidence.\r\nScience is the pursuit and application of knowledge and understanding of the natural and social world following a systematic methodology based on evidence.\r\nScience is the pursuit and application of knowledge and understanding of the natural and social world following a systematic methodology based on evidence.\r\nScience is the pursuit and application of knowledge and understanding of the natural and social world following a systematic methodology based on evidence.\r\nScience is the pursuit and application of knowledge and understanding of the natural and social world following a systematic methodology based on evidence.'),
(215471981, 844280531, 106, 'Commercial Spaceflight in 2022', 'Spaceflight', 'As is often the case in the space industry (and I am sure many others) things have not progressed as rapidly as I anticipated. Of the four new spacecraft ', '2022-03-16', '2022-03-16', 'publish', 'As is often the case in the space industry (and I am sure many others) things have not progressed as rapidly as I anticipated. Of the four new spacecraft I profiled in the 2019 blog post, only one has taken humans to space. The others are still working towards that goal and could debut in 2021, or even slip to 2022.<br><br> the reliable Soyuz has launched and returned four crews to the International Space Station, with a fifth now in space. In the same way, it has since 1967, the Soyuz is an ever-present and highly reliable workhorse of crewed spaceflight, seeing human spaceflight through the Apollo era, the Space Shuttle era, and now continuing to fly, in a highly upgraded version in the new SpaceX Dragon era. Two Space Adventures’ clients will fly on Soyuz to the International Space Station later this year.<br>Being developed by Boeing as part of NASA’s Commercial Crew Program, the Starliner’s un-crewed test flight in December 2019 fulfilled many objectives, but a software and timing issue meant it did not meet all of the test objectives. Boeing took 2020 to complete the fixes needed and a little more and will take a second attempt at the test flight in the next few months, with a view to flying with a crew in the summer of 2021.<br><br>The SpaceX Crew Dragon was certainly the star of the last couple of years. In midst of the pandemic in June 2020, SpaceX successfully launched the first crew – NASA astronauts Bob Behnken and Doug Hurley to the International Space Station. And later in the year delivered a full complement of four astronauts for a full six-month tour of duty on the International Space Station.<br><br>In addition to further missions for NASA, SpaceX have missions planned in 2021 and 2022 taking private citizens to the International Space Station and on a free-flight to low-Earth orbit.'),
(289099303, 844280531, 101, 'Google Domains is finally out of beta', 'Google Domains', 'Google Domains, the company’s domain registration service, is losing the beta tag after first launching more than seven years ago, Google announced Tuesday', '2022-03-16', '2022-03-16', 'publish', 'Google Domains, the company’s domain registration service, is losing the beta tag after first launching more than seven years ago, Google announced Tuesday. The service is now generally available in 26 countries, and the company says it already has “millions of active registrations.”\r\n\r\nIf you register with Google Domains, you can pick from more than 300 different domain endings, have access to “high-performance DNS” (Google says it’s the same infrastructure it uses for itself), “around-the-clock customer support from real people,” and more. The company is also offering a 20 percent discount off “any single domain registration or transfer-in to Google Domains” for new and returning users with the code DOMAINS20.\r\n\r\nHowever, if you register a domain with Google Domains, you’ll still need to actually build a website to use with it. Google unsurprisingly suggests its Google Sites product but also recommends its “premium partners,” which include Wix, Shopify, Squarespace, Weebly, and Bluehost.\r\n\r\nGoogle Domains has been in development for quite a while — it first launched in an invite-only beta in June 2014 and was opened up to a public beta in the US in January 2015. Even Gmail wasn’t in beta for that long.'),
(313978282, 844280531, 105, 'Matar paneer recipe', 'Matar Paneer ', 'Matar paneer recipe – a popular Indian Curry dish made with green peas and Indian cottage cheese, is from the versatile Northern Indian cuisine that has many different (and delicious) variations.', '2022-03-17', '2022-03-17', 'publish', 'Matar paneer recipe – a popular Indian Curry dish made with green peas and Indian cottage cheese, is from the versatile Northern Indian cuisine that has many different (and delicious) variations. . I’m sharing our family recipe of a flavorful and simple home-style mutter paneer.<br>\r\nI have been making this recipe for YEARS. I originally learned how to make it at my in-laws’ home – a classic Punjabi recipe that was simple, easy, and absolutely fuss-free!<br>\r\nAll of that being said, this family recipe is not a restaurant-style Matar paneer. It tastes absolutely delicious, but is much simpler and lends more of a homey, comforting feel.<br>\r\nI share three ways of making this dish – Stove-top pressure cooker (with step-by-step photo guide), in the Instant Pot, and in a pan or skillet on the stove-top (whose instructions I have listed in the recipe card below).<br>\r\n<h3>Ingredients You Need</h3><br>\r\n<ul>\r\n<li>Paneer (Indian cottage cheese)</li>\r\n<li>Vegetables</li>\r\n<li>Cashews</li>\r\n<li>Seasonings</li>\r\n</ul>\r\n<h3>Matar Paneer Recipe</h3>\r\n1. Blend the onions, garlic, and ginger to a paste.<br>\r\n2. Heat oil and add the cumin seeds and the bay leaves.<br>\r\n3. Add onion paste and saute till brown and fat separates.<br>\r\n4. Add tomatoes, turmeric, salt, garam masala, red pepper, and the coriander powder, and stir-fry till fat separates.<br>\r\n5. Add the peas, paneer, and green chilies and saute over high heat till glossy.<br>\r\n6. Add two cups water, bring to a boil and simmer for 5-10 minutes.<br>\r\n7. Serve hot, garnished with the coriander leaves. Omit the chillies if you so desire.'),
(332181902, 4444, 101, 'History of computers', 'computers', 'A computer is a digital electronic machine that can be programmed to carry out sequences of arithmetic or logical operations (computation) automatically. Modern computers can perform generic', '2022-03-15', '2022-03-16', 'publish', 'A computer is a digital electronic machine that can be programmed to carry out sequences of arithmetic or logical operations (computation) automatically. Modern computers can perform generic sets of operations known as programs. These programs enable computers to perform a wide range of tasks. A computer system is a \"complete\" computer that includes the hardware, operating system (main software), and peripheral equipment needed and used for \"full\" operation. This term may also refer to a group of computers that are linked and function together, such as a computer network or computer cluster.\r\n\r\nA broad range of industrial and consumer products use computers as control systems. Simple special-purpose devices like microwave ovens and remote controls are included, as are factory devices like industrial robots and computer-aided design, as well as general-purpose devices like personal computers and mobile devices like smartphones. Computers power the Internet, which links billions of other computers and users.\r\n\r\nEarly computers were meant to be used only for calculations. Simple manual instruments like the abacus have aided people in doing calculations since ancient times'),
(434604478, 4444, 104, 'Linked List Data Structure', 'Linked list', 'A linked list is a sequence of data structures, which are connected together via links. Linked List is a sequence of links which contains items. Each link contains a connection to another link. Linked list is the second most-used data structure after array.', '2022-03-15', '2022-03-15', 'publish', 'A linked list is a sequence of data structures, which are connected together via links.\r\n\r\nA linked List is a sequence of links that contain items. Each link contains a connection to another link. the Linked list is the second most-used data structure after array. Following are the important terms to understand the concept of Linked List.\r\n\r\nLink − Each link of a linked list can store data called an element.\r\n\r\nNext − Each link of a linked list contains a link to the next link called Next.\r\n\r\nLinkedList − A Linked List contains the connection link to the first link called First.\r\n\r\nLinked List Representation\r\nA linked list can be visualized as a chain of nodes, where every node points to the next node.\r\nAs per the above illustration, the following are the important points to be considered.\r\n\r\nLinked List contains a link element called first.\r\n\r\nEach link carries a data field(s) and a link field called next.\r\n\r\nEach link is linked with its next link using its next link.\r\n\r\nLast link carries a link as null to mark the end of the list.\r\n\r\nTypes of Linked List\r\nFollowing are the various types of linked lists.\r\n\r\nSimple Linked List − Item navigation is forward only.\r\n\r\nDoubly Linked List − Items can be navigated forward and backward.\r\n\r\nCircular Linked List − The last item contains a link of the first element as next and the first element has a link to the last element as previous.\r\n\r\nBasic Operations\r\nFollowing are the basic operations supported by a list.\r\n\r\nInsertion − Adds an element at the beginning of the list.\r\n\r\nDeletion − Deletes an element at the beginning of the list.\r\n\r\nDisplay − Displays the complete list.\r\n\r\nSearch − Searches an element using the given key.\r\n\r\nDelete − Deletes an element using the given key.\r\n\r\nInsertion Operation\r\nAdding a new node in a linked list is a more than one-step activity. We shall learn this with diagrams here. First, create a node using the same structure and find the location where it has to be inserted.'),
(678111988, 4444, 102, 'Fashion Sense meaning', 'fashion sense', 'Fashion Sense basically means having the appropriate knowledge of dressing yourself smartly by making use of all the latest fashion styles and fashion trends properly in a way which comforts and satisfies. ', '2022-03-17', '2022-03-17', 'publish', '\r\nImage result for fashion sense\r\nTo have a great sense of style, begin by choosing clothing in colors that look good on you and that you feel confident in. Also, wear clothes that fit you well and aren\'t too tight or overly loose. Then, pick a few accessories that complement your outfit for an fashionable, fun look.\r\n\r\nTheir color sense is developed, as is their fashion sense. Misaki is under the impression that he hates her; he frequently scolds her for her poor fashion sense and unfeminine strength. The sisters would always judge her scarf and her colorful fashion sense.\r\n\r\nTheir color sense is developed, as is their fashion sense. Misaki is under the impression that he hates her; he frequently scolds her for her poor fashion sense and unfeminine strength. The sisters would always judge her scarf and her colorful fashion sense.'),
(904818707, 918647843, 107, '5 Best Places to Visit in India', 'Places to visit', 'Deeply traditional yet endlessly surprising, India is one of those destinations that ends up on every traveler\'s bucket list at some point. They might dream of going to Agra to see the Taj Mahal in all its glory or exploring', '2022-03-17', '2022-03-17', 'publish', 'Deeply traditional yet endlessly surprising, India is one of those destinations that ends up on every traveler\'s bucket list at some point. They might dream of going to Agra to see the Taj Mahal in all its glory or exploring royal palaces scattered throughout Rajasthan. Others find themselves attracted to the jaw-dropping landscapes in Darjeeling and Rishikesh or the postcard-perfect beaches in Goa.<br>\r\nThere are also India\'s big cities—New Delhi, Mumbai, and Kolkata—each of which has its own distinctive personality. It\'s impossible to get bored exploring the temples, markets, and colorful streets of India\'s biggest urban centers. The hardest part of traveling to India is figuring out exactly what to see on your journey.<br>\r\n<h4>1. Varanasi</h4><br>\r\nOne of the oldest continually inhabited cities in the world, Varanasi is arguably the holiest place in India. The spiritual activities take place along the sacred Ganges River, where pilgrims bathe and mourners cremate recently deceased relatives in plain view of passersby.<br>\r\nTourists, on the other hand, find their own flavor of spiritualism taking sunrise boat rides, releasing floral blessings that float on the river and watching the fire-filled Hindu chanting ceremonies from the steep ghats.<br>\r\nAway from the water, the streets of the old town twist and turn like an endless maze. Legend has it that there\'s still no accurate map of Varanasi, and once you experience the labyrinthine city for yourself, you\'ll be inclined to believe it.<br>\r\n<h4>2. New Delhi</h4><br>\r\nDespite its crowds and chaos, New Delhi offers tourists a lot to love. The colorful capital of India is the perfect marriage of heritage and modernity. Old Delhi contains some of the country\'s most treasured attractions, including the Jama Masjid, Red Fort, and Chandni Chowk shopping thoroughfare. But throughout the sprawling city, tourists can explore countless other sites of spiritual and cultural importance.<br>\r\n<h4>3. Mumbai</h4><br>\r\nWant to see a more cosmopolitan side of India? Head to the energetic, coastal city of Mumbai—home to ultra-wealthy entrepreneurs and the hottest Bollywood actors. Tourists are never far from five-star hotels or gourmet restaurants in this luxe city. And even if those activities are out of budget, a cruise down the beloved Marine Drive will make you feel like royalty as you catch a glimpse of the scenic coast and glamorous Art Deco buildings.<br>\r\n<h4>4. Rajasthan</h4><br>\r\nTranslated to \"Land of Kings,\" Rajasthan brims with remnants of the kings and queens of past centuries. Between its glittering palaces, stately forts, and lively festivals, this western state deserves a starring role in your trip to India.<br>\r\n<h4>5. Rishikesh</h4><br>\r\nRishikesh has been on the radar for spiritually-minded travelers since the late 1960s when the Beatles spent time in Maharishi Mahesh Yogi\'s ashram—now an abandoned site that has become an off-the-beaten-path tourist attraction for fans.\r\n'),
(950078264, 4444, 104, 'Array data structure', 'Array', ' An array is a collection of items stored at contiguous memory locations. The idea is to store multiple items of the same type together.', '2022-03-14', '2022-03-15', 'publish', 'An array is a collection of items stored at contiguous memory locations. The idea is to store multiple items of the same type together. This makes it easier to calculate the position of each element by simply adding an offset to a base value, i.e., the memory location of the first element of the array (generally denoted by the name of the array). The base value is index 0 and the difference between the two indexes is the offset.\r\nFor simplicity, we can think of an array as a fleet of stairs where on each step is placed a value (let’s say one of your friends). Here, you can identify the location of any of your friends by simply knowing the count of the step they are on. \r\nRemember: “Location of next index depends on the data type we use”. \r\nThe above image can be looked at as a top-level view of a staircase where you are at the base of the staircase. Each element can be uniquely identified by its index in the array (in a similar way as you could identify your friends by the step on which they were on in the above example). \r\n\r\nArray’s size\r\n\r\nIn C language, the array has a fixed size meaning once the size is given to it, it cannot be changed i.e. you can’t shrink it nor can you expand it. The reason was that for expanding if we change the size we can’t be sure ( it’s not possible every time) that we get the next memory location to us as free. The shrinking will not work because the array, when declared, gets memory statically allocated, ');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `subscribe_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'reader',
  `permission` varchar(50) NOT NULL DEFAULT 'restricted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `password`, `role`, `permission`) VALUES
(4443, 'amit user', 'amit1@gmail.com', 'amit1', 'reader', 'approved'),
(4444, 'amit', 'amit@gmail.com', 'amit', 'writer', 'approved'),
(55555, 'admin', 'admin@gmail.com', 'admin', 'admin', 'approved'),
(844280531, 'ankit agnihotri', 'ankit@gmail.com', 'ankit', 'writer', 'approved'),
(873331135, 'amit yadav', 'yamit@gmail.com', 'amit', 'reader', 'approved'),
(918647843, 'akanksha', 'akanksha@gmail.com', 'ak', 'writer', 'approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD UNIQUE KEY `subscribe_email` (`subscribe_email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=950078265;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
