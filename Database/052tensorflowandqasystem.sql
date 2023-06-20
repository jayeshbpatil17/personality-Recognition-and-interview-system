-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2021 at 05:03 PM
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
-- Database: `052tensorflowandqasystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `sid` varchar(30) DEFAULT NULL,
  `answers` varchar(7000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `sid`, `answers`) VALUES
(1, '1', 'we started with project exit'),
(2, '1', 'we enjoy lots of work together and testing with project'),
(3, '1', 'you of your company'),
(4, '1', 'programming and Java 500cc plus plus'),
(5, '1', ' I want to'),
(6, '2', 'hg'),
(7, '2', 'gf'),
(8, '2', 'ghf'),
(9, '2', 'hf'),
(10, '2', 'hgf');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `sid` varchar(11) DEFAULT NULL,
  `studname` varchar(11) DEFAULT NULL,
  `q1` varchar(11) DEFAULT NULL,
  `q2` varchar(11) DEFAULT NULL,
  `q3` varchar(11) DEFAULT NULL,
  `q4` varchar(11) DEFAULT NULL,
  `q5` varchar(11) DEFAULT NULL,
  `marks` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `sid`, `studname`, `q1`, `q2`, `q3`, `q4`, `q5`, `marks`) VALUES
(1, '1', 'Prince', '2.5', '0.4', '2.2', '2.3', '2.5', '14'),
(2, '2', 'jaya', '0.3', '0.2', '0.3', '0.1', '0.3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `pass` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `mobile`, `email`, `pass`) VALUES
(1, 'Prince', 98765425130, 'prince@gmail.com', '123'),
(2, 'Jaya', 2147483647, 'jaya@gmail.com', '123'),
(3, 'jitesh', 2147483647, 'jitesh@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `email`, `password`) VALUES
(1, 'prince@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `teacherquestion`
--

CREATE TABLE `teacherquestion` (
  `qid` int(11) NOT NULL,
  `question` varchar(1500) DEFAULT NULL,
  `answer` varchar(6000) DEFAULT NULL,
  `marks` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacherquestion`
--

INSERT INTO `teacherquestion` (`qid`, `question`, `answer`, `marks`) VALUES
(1, 'when a project or assignment didn’t go as planned. How would you approach the situation differently in the future?', 'Last semester we had a group project that took approximately six weeks. Around week four, we realized that one of the group members was not pulling his weight. The work he agreed to do was not getting done. I took charge of the situation and scheduled a group meeting to discuss the issue. Ultimately, that person dropped the course, but by addressing the problem head-on, the group was able to divide up our work and complete the project on-time. In the future, I would make sure that the group has weekly meetings to assess our progress. That would make sure the project was on-track and that the work was getting done.', '10'),
(2, 'What do you enjoy most and least about engineering?', 'I really love the design work in engineering, the face-to-face interaction with clients, and the opportunity to see projects come to life. But if I had to pick one thing that I don’t enjoy as much, I would have to say it’s contract preparation', '10'),
(3, 'Where do you see yourself five years from now?', 'Your new employer is going to invest a lot of time and money in your training and development, and they don’t want to hear that you get bored easily and will likely look for opportunities elsewhere before too long', '10'),
(4, 'What new engineering skills have you recently developed?', 'Since graduating, I’ve been searching for work and also training myself on Civil 3D. I have a basic knowledge of Civil 3D from school, but I thought upgrading my skills would be a valuable investment in my career as an engineer', '10'),
(5, 'Why are you interested in a position with our company?', 'Your interviewer is trying to understand “Why us?” This is your chance to tell him what you know about the company and express a genuine enthusiasm for the role. Take a look at the company website and any recent press releases.', '10');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `mobileno` varchar(20) DEFAULT NULL,
  `emailid` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_company_information`
--

CREATE TABLE `user_company_information` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `company_name` longtext DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `End_date` varchar(100) DEFAULT NULL,
  `technology_worked` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `teacherquestion`
--
ALTER TABLE `teacherquestion`
  ADD UNIQUE KEY `qid` (`qid`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_company_information`
--
ALTER TABLE `user_company_information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacherquestion`
--
ALTER TABLE `teacherquestion`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_company_information`
--
ALTER TABLE `user_company_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
