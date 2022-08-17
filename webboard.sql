-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2016 at 04:03 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `webboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `m_id` int(11) NOT NULL,
  `m_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin,2 = member',
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `m_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `m_created` datetime NOT NULL,
  `m_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`m_id`,`m_type`, `email`, `password`, `m_name`, `m_created`,`m_image`) VALUES
(1,1, 'jirayu@g.com', '1234', 'Jirayu Suriwan', '2016-12-14 21:49:16','IMG-62f4b466b8c4d1.18777884'),
(2,2, 'ji@g.com', '1234', 'Jirayu Suriwan', '2016-12-14 21:49:16','IMG-62f4b466b8c4d1.18777884');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `qt_id` int(11) NOT NULL,
  `qt_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `qt_detail` text CHARACTER SET utf8 NOT NULL COMMENT 'รายละเอียด',
  `qt_view` int(11) NOT NULL COMMENT 'จำนวนคนเข้าอ่าน',
  `qt_reply` int(11) NOT NULL COMMENT 'จำนวนคนเข้าตอบ',
  `qt_created` datetime NOT NULL COMMENT 'วันที่สร้างข้อมุล',
  `m_id` int(11) NOT NULL,
  `qt_image` text NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`qt_id`, `qt_title`, `qt_detail`, `qt_view`, `qt_reply`, `qt_created`, `m_id`) VALUES
(1, 'Thailand 4.0 คือ อะรัยครับ', 'Thailand 4.0 คือ อะรัยครับ Thailand 4.0 คือ อะรัยครับ Thailand 4.0 คือ อะรัยครับ Thailand 4.0 คือ อะรัยครับ', 0, 0, '2016-12-14 21:51:14', 1),
(2, 'คอมพืวเตอร์คืออะรัย', 'คอมพืวเตอร์คืออะรัยคอมพืวเตอร์คืออะรัยคอมพืวเตอร์คืออะรัยคอมพืวเตอร์คืออะรัยคอมพืวเตอร์คืออะรัย', 2, 0, '2016-12-14 21:52:01', 1),
(3, 'อยากจีบสาวต้องทำยังงัยครับ', 'อยากจีบสาวต้องทำยังงัยครับอยากจีบสาวต้องทำยังงัยครับอยากจีบสาวต้องทำยังงัยครับอยากจีบสาวต้องทำยังงัยครับอยากจีบสาวต้องทำยังงัยครับ5555', 4, 0, '2016-12-14 21:52:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `rp_id` int(11) NOT NULL,
  `rp_detail` text CHARACTER SET utf8 NOT NULL COMMENT 'แสดงความคิดเห็น',
  `rp_created` datetime NOT NULL,
  `rp_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `qt_id` int(11) NOT NULL,
  `rp_image` text NOT NULL,
  `m_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`rp_id`, `rp_detail`, `rp_created`, `rp_name`, `qt_id`) VALUES
(1, 'ให้ดอกไม้', '2016-12-14 21:56:44', 'Pon', 3),
(2, 'ค้นหาใน google เลยครับ', '2016-12-14 21:57:54', 'nihasan', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`qt_id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`rp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `qt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `rp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
