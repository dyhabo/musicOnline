-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2020 at 06:37 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musiconline_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Album'),
(2, 'Single'),
(3, 'EP'),
(4, 'LP');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_amount` float NOT NULL,
  `order_transaction` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_amount`, `order_transaction`, `order_status`, `order_currency`) VALUES
(68, 46, '0001', 'Completed', 'GBP');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_artist` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL DEFAULT 'default_image.jpg',
  `products_embed_spotify` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `product_artist`, `product_image`, `products_embed_spotify`) VALUES
(1, 'What The Dead Men Say', 4, 20.99, 1, 'prod desc', 'Trivium', 'image_1.jpg', 'https://open.spotify.com/embed/album/0aXIJYbWk4u41iJmoJmp8y'),
(2, 'In Waves', 4, 20.99, 4, 'prod desc', 'Trivium', 'image_2.jpg', NULL),
(3, 'The Sin And The Sentence', 4, 20.99, 4, 'prod desc', 'Trivium', 'image_3.jpg', NULL),
(4, 'Axis: Bold As Love', 4, 35.49, 12, 'beep boop sha-bop', 'The Jimi Hendrix Experience', 'image_4.jpg', 'https://open.spotify.com/embed/album/3uFZf8rykoHo7XMIQVYW6r'),
(5, 'The Stone Roses', 4, 18.99, 4, 'prod desc', 'The Stone Roses', 'image_5.jpg', 'https://open.spotify.com/embed/album/0um9FI6BLBldL5POP4D4Cw'),
(6, 'The Dark Side Of The Moon', 4, 35.49, 44, 'prod desc', 'Pink Floyd', 'image_6.jpg', 'https://open.spotify.com/embed/album/2WT1pbYjLJciAR26yMebkH'),
(7, 'Sticky Fingers', 4, 20, 16, 'Regarded as one of The Rolling Stones’ all-time great albums, ‘Sticky Fingers’ captured the bands trademark combination of swagger and tenderness in a superb collection. The classic album features timeless songs such as ‘Brown Sugar,’ ‘Wild Horses,’ ‘Bitch,’ ‘Sister Morphine’ and ‘Dead Flowers’ and showcases the inventive song writing of Mick Jagger and Keith Richards and formidable guitar licks from Mick Taylor. All Deluxe and Super Deluxe formats will feature a generous selection of previously unavailable material. These include the alternative version of the chart-topping single ‘Brown Sugar’ featuring Eric Clapton; unreleased interpretations of ‘Bitch,’ ‘Can’t You Hear Me Knocking’ and ‘Dead Flowers’; an acoustic take on the anthemic ‘Wild Horses’, and five tracks recorded live at The Roundhouse in 1971 including ‘Honky Tonk Women’ and ‘Midnight Rambler.’', 'The Rolling Stones', 'image_7.jpg', NULL),
(8, 'Whatever People Say I Am, That\'s What I\'m Not', 4, 19.59, 8, 'Containing thirteen tracks including the hit single \"I Bet That You Look Good on the Dancefloor\", Whatever People Say I Am, That’s What I’m Not is a remarkable modern British debut. The first album from Sheffield-based rockers, Whatever People Say I Am, That’s What I’m Not was the fastest selling debut album in UK chart history. ', 'The Arctic Monkeys', 'image_8.jpg', NULL),
(9, 'Let It Be', 4, 23.95, 7, 'Twelfth and final studio album by the acclaimed British pop rock group, originally released in 1970. The album was conceived at a time when the band\'s members grew increasingly hostile to each other, impeding their creative process. It was recorded and projected for release (under its original title of \'Get Back\') before their album \'Abbey Road\' (1969); for this reason, some critics and fans argue that \'Abbey Road\' should be considered the group\'s final album and \'Let It Be\' the penultimate. The album contains the tracks \'Across the Universe\', \'Let It Be\', \'The Long and Winding Road\' and \'Get Back\'.', 'The Beatles', 'image_9.jpg', NULL),
(10, 'Puzzle', 4, 18.99, 12, 'DOUBLE LP: Biffy Clyro, Puzzle', 'Biffy Clyro', 'image_10.jpg', NULL),
(28, 'Dave & His Wotsits', 4, 14.99, 8, 'I just made this up lol.', 'Bleemple', 'default_image.jpg', NULL),
(29, 'Weeewoooo', 3, 12.99, 12, 'example.example.jar', 'Siren Noise', 'default_image.jpg', NULL),
(30, 'I am really tired, please help me', 2, 18.49, 19, 'Why would I even lie about being tired? I don\'t even know what I\'m doing at this point.', 'I\'m not kidding', 'default_image.jpg', NULL),
(36, 'ex1', 3, 123, 1, 'qweqwe', 'exa', 'default_image.jpg', NULL),
(37, 'ex45', 2, 12.99, 2, 'HEEEEEEEEEEEELP', '1337', 'default_image.jpg', NULL),
(38, 'WebDevIsForMonkeys', 3, 18.99, 2, 'soz not soz', 'EEEEK', 'default_image.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `product_id`, `order_id`, `product_price`, `product_title`, `product_quantity`) VALUES
(41, 20, 68, 23, 'DEMO 3', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `password` varchar(255) NOT NULL,
  `administrator` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `administrator`) VALUES
(1, 'Dylan', 'dylan@hotmail.com', '123', 1),
(12, 'dantadrozen', 'evilbroom@live.co.uk', 'oink', 0),
(17, 'tails98', 'tailsninety8@ninetyeight.com', 'tails98', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
