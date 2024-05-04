-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 05:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coding`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `b_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `discription` varchar(200) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `m_id` int(20) NOT NULL,
  `reg_number` varchar(9) NOT NULL,
  `m_fname` varchar(23) NOT NULL,
  `m_lname` varchar(15) NOT NULL,
  `m_email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `git` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `team_id` varchar(10) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `about` varchar(400) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`m_id`, `reg_number`, `m_fname`, `m_lname`, `m_email`, `password`, `dob`, `git`, `status`, `team_id`, `profile`, `about`, `phone`) VALUES
(1, '001', 'member', 'bruno', 'member@gmail.com', '0000', '2024-04-19', 'brux', 'member', '1', 'about.webp', '                        pro developer', '078989898'),
(2, '002', 'GPRO', 'JR', 'leader@gmail.com', '12345', '2024-04-20', 'GPROJR', 'leader', '2', 'messages-3.jpg', '                        web designer', '078668589');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `p_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `decription` varchar(300) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `team_id` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `start_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`p_id`, `title`, `decription`, `duration`, `team_id`, `status`, `start_date`, `end_date`) VALUES
(2, 'game web', 'call of duty modern warfare\r\n\r\n', '1 month', 'unsigned', 'unsigned', 'not yet', 'not yet'),
(3, 'jhvghhfc', 'hgvhvgh', '1 week', 'unsigned', 'unsigned', 'not yet', 'not yet'),
(4, 'bruno', 'rbfd', '2 weeks', 'unsigned', 'unsigned', 'not yet', 'not yet');

-- --------------------------------------------------------

--
-- Table structure for table `project_feedback`
--

CREATE TABLE `project_feedback` (
  `f_id` int(11) NOT NULL,
  `team_id` varchar(20) NOT NULL,
  `host_link` varchar(100) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `p_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE `super_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`id`, `email`, `password`) VALUES
(1, 'brunojr@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(20) NOT NULL,
  `t_git` varchar(23) NOT NULL,
  `t_leader` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`t_id`, `t_name`, `t_git`, `t_leader`) VALUES
(2, 'team 1', 'bruno/git', '2312'),
(4, 'bruno', '', '1'),
(5, 'Riverprog', '', '23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`reg_number`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `project_feedback`
--
ALTER TABLE `project_feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_feedback`
--
ALTER TABLE `project_feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
