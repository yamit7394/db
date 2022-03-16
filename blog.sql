-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Generation Time: Mar 16, 2022 at 03:45 AM
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
(104, 'Learning');

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
(332181902, 4444, 101, 'History of computers', 'computers', 'A computer is a digital electronic machine that can be programmed to carry out sequences of arithmetic or logical operations (computation) automatically. Modern computers can perform generic sets of operations known as programs', '2022-03-15', NULL, 'review', 'A computer is a digital electronic machine that can be programmed to carry out sequences of arithmetic or logical operations (computation) automatically. Modern computers can perform generic sets of operations known as programs. These programs enable computers to perform a wide range of tasks. A computer system is a \"complete\" computer that includes the hardware, operating system (main software), and peripheral equipment needed and used for \"full\" operation. This term may also refer to a group of computers that are linked and function together, such as a computer network or computer cluster.\r\n\r\nA broad range of industrial and consumer products use computers as control systems. Simple special-purpose devices like microwave ovens and remote controls are included, as are factory devices like industrial robots and computer-aided design, as well as general-purpose devices like personal computers and mobile devices like smartphones. Computers power the Internet, which links billions of other computers and users.\r\n\r\nEarly computers were meant to be used only for calculations. Simple manual instruments like the abacus have aided people in doing calculations since ancient times'),
(434604478, 4444, 104, 'Linked List Data Structure', 'Linked list', 'A linked list is a sequence of data structures, which are connected together via links. Linked List is a sequence of links which contains items. Each link contains a connection to another link. Linked list is the second most-used data structure after array.', '2022-03-15', '2022-03-15', 'publish', 'A linked list is a sequence of data structures, which are connected together via links.\r\n\r\nA linked List is a sequence of links that contain items. Each link contains a connection to another link. the Linked list is the second most-used data structure after array. Following are the important terms to understand the concept of Linked List.\r\n\r\nLink − Each link of a linked list can store data called an element.\r\n\r\nNext − Each link of a linked list contains a link to the next link called Next.\r\n\r\nLinkedList − A Linked List contains the connection link to the first link called First.\r\n\r\nLinked List Representation\r\nA linked list can be visualized as a chain of nodes, where every node points to the next node.\r\nAs per the above illustration, the following are the important points to be considered.\r\n\r\nLinked List contains a link element called first.\r\n\r\nEach link carries a data field(s) and a link field called next.\r\n\r\nEach link is linked with its next link using its next link.\r\n\r\nLast link carries a link as null to mark the end of the list.\r\n\r\nTypes of Linked List\r\nFollowing are the various types of linked lists.\r\n\r\nSimple Linked List − Item navigation is forward only.\r\n\r\nDoubly Linked List − Items can be navigated forward and backward.\r\n\r\nCircular Linked List − The last item contains a link of the first element as next and the first element has a link to the last element as previous.\r\n\r\nBasic Operations\r\nFollowing are the basic operations supported by a list.\r\n\r\nInsertion − Adds an element at the beginning of the list.\r\n\r\nDeletion − Deletes an element at the beginning of the list.\r\n\r\nDisplay − Displays the complete list.\r\n\r\nSearch − Searches an element using the given key.\r\n\r\nDelete − Deletes an element using the given key.\r\n\r\nInsertion Operation\r\nAdding a new node in a linked list is a more than one-step activity. We shall learn this with diagrams here. First, create a node using the same structure and find the location where it has to be inserted.'),
(678111988, 4444, 102, 'Fashion Sense meaning', 'fashion sense', 'Fashion Sense basically means having the appropriate knowledge of dressing yourself smartly by making use of all the latest fashion styles and fashion trends properly in a way which comforts and satisfies. ', '2022-03-14', '2022-03-15', 'publish', '\r\nImage result for fashion sense\r\nTo have a great sense of style, begin by choosing clothing in colors that look good on you and that you feel confident in. Also, wear clothes that fit you well and aren\'t too tight or overly loose. Then, pick a few accessories that complement your outfit for an fashionable, fun look.\r\n\r\nTheir color sense is developed, as is their fashion sense. Misaki is under the impression that he hates her; he frequently scolds her for her poor fashion sense and unfeminine strength. The sisters would always judge her scarf and her colorful fashion sense.\r\n\r\nTheir color sense is developed, as is their fashion sense. Misaki is under the impression that he hates her; he frequently scolds her for her poor fashion sense and unfeminine strength. The sisters would always judge her scarf and her colorful fashion sense.'),
(950078264, 4444, 104, 'Array data structure', 'Array', ' An array is a collection of items stored at contiguous memory locations. The idea is to store multiple items of the same type together.', '2022-03-14', '2022-03-15', 'publish', 'An array is a collection of items stored at contiguous memory locations. The idea is to store multiple items of the same type together. This makes it easier to calculate the position of each element by simply adding an offset to a base value, i.e., the memory location of the first element of the array (generally denoted by the name of the array). The base value is index 0 and the difference between the two indexes is the offset.\r\nFor simplicity, we can think of an array as a fleet of stairs where on each step is placed a value (let’s say one of your friends). Here, you can identify the location of any of your friends by simply knowing the count of the step they are on. \r\nRemember: “Location of next index depends on the data type we use”. \r\nThe above image can be looked at as a top-level view of a staircase where you are at the base of the staircase. Each element can be uniquely identified by its index in the array (in a similar way as you could identify your friends by the step on which they were on in the above example). \r\n\r\nArray’s size\r\n\r\nIn C language, the array has a fixed size meaning once the size is given to it, it cannot be changed i.e. you can’t shrink it nor can you expand it. The reason was that for expanding if we change the size we can’t be sure ( it’s not possible every time) that we get the next memory location to us as free. The shrinking will not work because the array, when declared, gets memory statically allocated, ');

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
(873331135, 'amit yadav', 'yamit@gmail.com', 'amit', 'reader', 'restricted');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=950078265;

--
-- Constraints for dumped tables
--

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
