-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2022 at 09:29 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cru_livescore`
--

-- --------------------------------------------------------

--
-- Table structure for table `game_result`
--

CREATE TABLE `game_result` (
  `game_result_id` int(11) NOT NULL,
  `match_id` varchar(11) NOT NULL,
  `team_1` varchar(30) NOT NULL,
  `team_2` varchar(30) NOT NULL,
  `team_1_score` varchar(30) NOT NULL,
  `team_2_score` varchar(30) NOT NULL,
  `team_1_scorer` varchar(30) NOT NULL,
  `team_2_scorer` varchar(30) NOT NULL,
  `team_1_score_time` varchar(30) NOT NULL,
  `team_2_score_time` varchar(30) NOT NULL,
  `season_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_result`
--

INSERT INTO `game_result` (`game_result_id`, `match_id`, `team_1`, `team_2`, `team_1_score`, `team_2_score`, `team_1_scorer`, `team_2_scorer`, `team_1_score_time`, `team_2_score_time`, `season_type`) VALUES
(1, '1', 'Man u', 'chelsea', '0', '0', '', '', '', '', ''),
(2, '2', 'real mardi', 'Man u', '0', '0', '', '', '', '', ''),
(3, '3', 'real mardi', 'Man u', '0', '0', '', '', '', '', 'Laliga');

-- --------------------------------------------------------

--
-- Table structure for table `live_table`
--

CREATE TABLE `live_table` (
  `id` int(11) NOT NULL,
  `team` varchar(30) NOT NULL,
  `p` varchar(11) NOT NULL,
  `gd` varchar(11) NOT NULL,
  `pts` varchar(11) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `live_table`
--

INSERT INTO `live_table` (`id`, `team`, `p`, `gd`, `pts`, `type`) VALUES
(1, 'Man u', '15', '20', '78', 'Laliga'),
(2, 'bacra', '15', '20', '78', 'Departmental'),
(3, '', '15', '20', '78', 'Departmental'),
(4, '', '15', '20', '78', 'Departmental'),
(5, '', '15', '20', '78', 'Departmental');

-- --------------------------------------------------------

--
-- Table structure for table `match_schedule`
--

CREATE TABLE `match_schedule` (
  `match_id` int(11) NOT NULL,
  `team_1` varchar(30) NOT NULL,
  `team_2` varchar(30) NOT NULL,
  `match_date` text NOT NULL,
  `match_time` varchar(30) NOT NULL,
  `time_end` varchar(30) NOT NULL,
  `match_status` varchar(30) NOT NULL,
  `season_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match_schedule`
--

INSERT INTO `match_schedule` (`match_id`, `team_1`, `team_2`, `match_date`, `match_time`, `time_end`, `match_status`, `season_type`) VALUES
(1, 'Man ', 'chelsea', '2022-06-24', '00:03', '19:03', 'Championship', 'VC'),
(2, 'real mardi', 'Man u', '2022-06-12', '00:59', '12:59', 'Championship', 'Laliga'),
(3, 'real mardi', 'Man u', '2022-06-12', '00:59', '12:01', 'Friendly Game', 'Departmental');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg_id` int(11) NOT NULL,
  `sender` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `message` varchar(225) NOT NULL,
  `date` varchar(225) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `img_id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `news_msg` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`img_id`, `img`, `news_msg`, `date`) VALUES
(1, 'upload/1653389232805.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque cumque quos repellendus sit possimus architecto exercitationem error commodi repudiandae quis delectus iste, alias repellat rerum tempore. Vero tempora magni susc.Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque cumque quos repellendus sit possimus architecto exercitationem error commodi repudiandae quis delectus iste, alias repellat rerum tempore. Vero tempora magni susc', '2022-06-08 21:04:46'),
(2, 'upload/1653557340821.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque cumque quos repellendus sit possimus architecto exercitationem error commodi repudiandae quis delectus iste, alias repellat rerum tempore. Vero tempora magni susc', '2022-06-08 18:27:22'),
(3, 'upload/1653579073822.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque cumque quos repellendus sit possimus architecto exercitationem error commodi repudiandae quis delectus iste, alias repellat rerum tempore. Vero tempora magni susc', '2022-06-08 18:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `season_id` int(11) NOT NULL,
  `season_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`season_id`, `season_name`) VALUES
(1, 'Laliga'),
(2, 'Departmental'),
(3, 'VC');

-- --------------------------------------------------------

--
-- Table structure for table `sports_type`
--

CREATE TABLE `sports_type` (
  `sport_type_id` int(11) NOT NULL,
  `sport_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_type`
--

INSERT INTO `sports_type` (`sport_type_id`, `sport_type`) VALUES
(1, 'Football'),
(2, 'Basket ball'),
(3, 'Cricket');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(30) NOT NULL,
  `team_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_name`, `team_type`) VALUES
(1, 'Man u', 'football'),
(2, 'chelsea', 'football'),
(3, 'real mardi', 'football'),
(4, 'barca', 'football');

-- --------------------------------------------------------

--
-- Table structure for table `tournament`
--

CREATE TABLE `tournament` (
  `tour_id` int(11) NOT NULL,
  `tour_name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`tour_id`, `tour_name`) VALUES
(1, 'Football');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `user_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `password`, `user_type`) VALUES
(1, 'angel jude', 'admin', 'test', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game_result`
--
ALTER TABLE `game_result`
  ADD PRIMARY KEY (`game_result_id`);

--
-- Indexes for table `live_table`
--
ALTER TABLE `live_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `match_schedule`
--
ALTER TABLE `match_schedule`
  ADD PRIMARY KEY (`match_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`season_id`);

--
-- Indexes for table `sports_type`
--
ALTER TABLE `sports_type`
  ADD PRIMARY KEY (`sport_type_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`tour_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game_result`
--
ALTER TABLE `game_result`
  MODIFY `game_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `live_table`
--
ALTER TABLE `live_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `match_schedule`
--
ALTER TABLE `match_schedule`
  MODIFY `match_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `season_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sports_type`
--
ALTER TABLE `sports_type`
  MODIFY `sport_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tournament`
--
ALTER TABLE `tournament`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
