-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2023 at 12:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expensetracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `paymenttype` text NOT NULL,
  `category` text DEFAULT NULL,
  `date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `userid`, `name`, `price`, `paymenttype`, `category`, `date`) VALUES
(6, 7, 'onion', 5, 'CreditCard', 'food', '2023-06-14'),
(7, 7, 'peanut', 3, 'CreditCard', 'food', '2023-06-14'),
(8, 7, 'patato', 9, 'CreditCard', 'food', '2023-06-14'),
(9, 7, 'chair', 78, 'CreditCard', 'crockery', '2023-06-14'),
(10, 7, 'table', 99, 'CreditCard', 'crockery', '2023-06-14'),
(11, 8, 'onion', 5, 'Cash', 'food', '2023-06-14'),
(12, 8, 'chair', 20, 'CreditCard', 'crockery', '2023-06-14'),
(13, 8, 'wall paper', 120, 'CreditCard', 'crockery', '2023-06-14'),
(14, 9, 'onion', 5, 'CreditCard', 'food', '2023-06-15'),
(15, 9, 'patato', 6, 'Cash', 'food', '2023-06-15'),
(16, 9, 'chair', 99, 'CreditCard', 'crockery', '2023-06-15'),
(17, 10, 'onion', 5, 'Cash', 'food', '2023-06-16'),
(18, 10, 'patato', 6, 'Cash', 'food', '2023-06-16'),
(19, 10, 'chair', 99, 'CreditCard', 'crockery', '2023-06-16'),
(20, 10, 'table', 78, 'CreditCard', 'crockery', '2023-06-16'),
(21, 13, 'basketball', 500, 'CreditCard', 'sports', '2023-06-19'),
(22, 14, 'basketball', 500, 'CreditCard', 'sports', '2023-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` text DEFAULT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(7, 'Ali Gauhar', 'aligauharrrrag@gmail.com', '$2y$10$1O1C995cSn2dBByBsY1HFO/fCHmcPczUyiCBH6zF5RFFp1RS2wL2e'),
(8, 'Naeem Khan', 'naeem@gmail.com', '$2y$10$pr13YN71zbhub1nIMD4.pu91oorYKW122X31Ys4TvHSw8clonLu8K'),
(9, 'saad Iqbal', 'Sad123@gmail.com', '$2y$10$tX8qox7VD88XGSGAA784dOAk1PDWUO0d5YMfaUP6s9d6Di4Xzxnhi'),
(10, 'faraz khan', 'faraz@gmail.com', '$2y$10$8H6.plqI9edZRHbrClNpAuAu/duKZwqyOC/koW7G6uMVHu9rrtfmO'),
(11, 'asssss', 'superadmin@gmail.com', '$2y$10$GMleaiN8zbpniZU23GQNt.PwcVKZHvz..1vjhHK/cY2udrSaZgrMy'),
(12, 'Ali Gauhar', 'aligauharrrr@gmail.com', '$2y$10$5cI3tyUfyzfJ1ViMHM8NVesET3eDGENcQh9eo1tQytdMvhSPnCaDa'),
(13, 'naeem', 'naeem053@gmail.com', '$2y$10$xEg5ZqC5KoK4Uu6HvQQJ3uzCCSyJdOjdbhOhg1zkO97YvI3nWIEtu'),
(14, 'fatima', 'fatima@gmail.com', '$2y$10$znwv9V4LH5nKBlH7c9egMOIkbox5qi0iJoGZS8wZvVnBkbWCeXn0i'),
(15, 'Gant chart', 'aligauharrrrag@gmail.com', '$2y$10$SWXD565EyEexuJ1oGa7BVOHxIKybcQfwWcHAAqhECuanKGDlrFOG6'),
(16, 'Ali Gauhar', 'aligauharrrrag@gmail.com', '$2y$10$3OTxoFltn2O4P5Sdwutnv.LfmGAdU77156B8.YYm7s9.FhhSDgAGK'),
(17, 'Gant chart', 'aligauharrrr@gmail.com', '$2y$10$tusGbDrvmhIHA8N0Mil17OS1uLyN47d5RroAnpu5GYngP8XpM2jSK'),
(18, 'Ali Gauhar', 'aligauharrrrag@gmail.com', '$2y$10$NcFmRecphHqQl0uaEd5txOneRS1ToXY4CqbT96j.edQdaVzNholUu'),
(19, 'Ali Gauhar', 'aligauharrrrag@gmail.com', '$2y$10$RgAfHdPPrHv0a4kszSKOFOA.e1WWxEYfbKh2jtzdem9avL27J6ZEe'),
(20, 'Ali Gauhar', 'aligauharrrr@gmail.com', '$2y$10$dsCuQNg22R1LA3TXXHVzHO6uJ4A5.oKLivHr2UBAzyQ3OzxsOuXgq'),
(21, 'Ali Gauhar', 'aligauharrrrag@gmail.com', '$2y$10$NUfu6lMSIw7/gukE5iafOOn6KL/lWDVtSgA0q496PB7NwaDDMLVem'),
(22, 'Ali Gauhar', 'aligauharrrr@gmail.com', '$2y$10$fyO8vOdwG9b9JZReb5S8Q.McdDtYvKvQPTiWf9huYAVKoER8TS0ua');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
