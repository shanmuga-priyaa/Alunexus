-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2020 at 05:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumnus_forum`
--
-- --------------------------------------------------------
--
-- Table structure for table `alumnus_bio`
--

CREATE TABLE `alumnus_bio` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `role` varchar(100) NOT NULL,
  `batch` year(4) NOT NULL,
  `course_id` int(30) NOT NULL,
  `email` varchar(250) NOT NULL,
  `connected_to` text NOT NULL,
  `avatar` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= Unverified, 1= Verified',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumnus_bio`
--
INSERT INTO `alumnus_bio` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `role`, `batch`, `course_id`, `email`, `connected_to`, `avatar`, `status`, `date_created`) VALUES 
(2, 'Sureshkumar', 'R', 'kumar', 'Male', 'Alumni', 2024, 1, 'sureshkumar23@gmail.com', 'My Company', 'b1.jpg', 0, '2023-10-15'),
(3, 'Muthu', 'K', 'kumar', 'Male', 'Alumni', 2024, 2, 'mk16@gmail.com', 'cts','b2.png', 0, '2024-03-21'),
(4, 'priya', 'L', 'L', 'Female', 'Alumni', 2024, 3, 'priyal@gmail.com', 'tcs','g1.png', 0, '2024-02-10'),
(5, 'meena', 'M', 'M', 'Female', 'Alumni', 2024, 4, 'meena94@gmail.com', 'EGC','g2.png', 0, '2024-03-18'),
(6, 'vinitha', 'K', 'K', 'Female', 'Alumni', 2024, 3, 'vinitha@gmail.com', 'amazon','g1.png', 0, '2024-01-05'),
(7, 'nandhu', 'A', 'A', 'Female', 'Alumni', 2024, 2, 'nandhu@gmail.com', 'My Company','g2.png', 0, '2024-04-02'),
(8, 'chitra', 'M', 'M', 'Female', 'Alumni', 2023, 1, 'chitra22@gmail.com', 'IT','g1.png', 0, '2024-04-02'),
(9, 'lavanya', 'R', 'R', 'Female', 'Alumni', 2023, 2, 'lavanya@gmail.com', 'infoys','g1.png', 0, '2024-04-15'),
(10, 'Mohan', 'w', 'w', 'Male', 'Alumni', 2023, 3, 'mohan1@gmail.com', 'IT','b1.png', 0, '2024-04-02'),
(11, 'harish', 'Q', 'Q', 'Male', 'Alumni', 2023, 4, 'harish2@gmail.com', 'infoys','b2.png', 0, '2024-04-15'),
(12, 'anandh', 'V', 'V','Male', 'Alumni', 2023, 1, 'anandh3@gmail.com', 'IT','b1.png', 0, '2024-04-02'),
(13, 'shree', 'R', 'R', 'Female', 'Alumni', 2023, 2, 'shree4@gmail.com', 'infoys','g1.png', 0, '2024-04-15'),
(14, 'porkodi', 'M', 'M', 'Female', 'Alumni', 2023, 3, 'porkodi5@gmail.com', 'IT','g2.png', 0, '2024-04-02'),
(15, 'mega', 'K', 'K', 'Female', 'Alumni', 2023, 4, 'mega6@gmail.com', 'infoys','g1.png', 0, '2024-04-15'),
(16, 'Renuga', 'G', 'G', 'Female', 'Alumni', 2024, 1, 'renu@gmail.com', 'infoys','g1.png', 0, '2024-04-15'),
(17, 'prabhu', 'R', 'R', 'Male', 'Alumni', 2024, 4, 'prabhu@gmail.com', 'infoys','b1.png', 0, '2024-04-15'),
(18, 'surya', 'M', 'M', 'Male', 'Alumni', 2024, 3, 'surya@gmail.com', 'IT','b2.png', 0, '2024-04-02'),
(19, 'Gowri', 'K', 'K', 'Female', 'Alumni', 2024, 2, 'gowri@gmail.com', 'infoys','g1.png', 0, '2024-04-15'),
(20, 'Karthi', 'A', 'A', 'Male', 'Alumni', 2024, 4, 'karthi@gmail.com', 'infoys','b1.png', 0, '2024-04-15'),
(21, 'mercy', 'G', 'G', 'Female', 'Alumni', 2024, 1, 'mercy@gmail.com', 'infoys','g2.png', 0, '2024-04-15');
-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(30) NOT NULL,
  `company` varchar(250) NOT NULL,
  `location` text NOT NULL,
  `job_title` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `company`, `location`, `job_title`, `description`, `user_id`, `date_created`) VALUES
(1, 'IT Company', 'Home-Based', 'Web Developer', '&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis eu volutpat odio facilisis mauris sit amet massa vitae. In tellus integer feugiat scelerisque varius morbi enim. Orci eu lobortis elementum nibh tellus molestie nunc. Vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Eleifend donec pretium vulputate sapien nec. Enim praesent elementum facilisis leo vel fringilla est ullamcorper. Quam adipiscing vitae proin sagittis nisl rhoncus. Sed viverra ipsum nunc aliquet bibendum. Enim ut sem viverra aliquet eget sit amet tellus. Integer feugiat scelerisque varius morbi enim nunc faucibus.&lt;/p&gt;&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Viverra justo nec ultrices dui. Leo vel orci porta non pulvinar neque laoreet. Id semper risus in hendrerit gravida rutrum quisque non tellus. Sit amet consectetur adipiscing elit ut. Id neque aliquam vestibulum morbi blandit cursus risus. Tristique senectus et netus et malesuada. Amet aliquam id diam maecenas ultricies mi eget mauris. Morbi tristique senectus et netus et malesuada. Diam phasellus vestibulum lorem sed risus. Tempor orci dapibus ultrices in. Mi sit amet mauris commodo quis imperdiet. Quisque sagittis purus sit amet volutpat. Vehicula ipsum a arcu cursus. Ornare quam viverra orci sagittis eu volutpat odio facilisis. Id volutpat lacus laoreet non curabitur. Cursus euismod quis viverra nibh cras pulvinar mattis nunc. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget nulla facilisi etiam dignissim diam quis enim lobortis. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet.&lt;/p&gt;', 3, '2020-10-15 14:14:27'),
(2, 'MNC Company', 'Chennai location', 'IT Specialist', '&lt;p style=&quot;margin-top: 1.5em; margin-bottom: 1.5em; margin-right: unset; margin-left: unset; color: rgb(68, 68, 68); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 16px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis eu volutpat odio facilisis mauris sit amet massa vitae. In tellus integer feugiat scelerisque varius morbi enim. Orci eu lobortis elementum nibh tellus molestie nunc. Vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Eleifend donec pretium vulputate sapien nec. Enim praesent elementum facilisis leo vel fringilla est ullamcorper. Quam adipiscing vitae proin sagittis nisl rhoncus. Sed viverra ipsum nunc aliquet bibendum. Enim ut sem viverra aliquet eget sit amet tellus. Integer feugiat scelerisque varius morbi enim nunc faucibus.&lt;/p&gt;&lt;p style=&quot;margin-top: 1.5em; margin-bottom: 1.5em; margin-right: unset; margin-left: unset; color: rgb(68, 68, 68); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 16px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Viverra justo nec ultrices dui. Leo vel orci porta non pulvinar neque laoreet. Id semper risus in hendrerit gravida rutrum quisque non tellus. Sit amet consectetur adipiscing elit ut. Id neque aliquam vestibulum morbi blandit cursus risus. Tristique senectus et netus et malesuada. Amet aliquam id diam maecenas ultricies mi eget mauris. Morbi tristique senectus et netus et malesuada. Diam phasellus vestibulum lorem sed risus. Tempor orci dapibus ultrices in. Mi sit amet mauris commodo quis imperdiet. Quisque sagittis purus sit amet volutpat. Vehicula ipsum a arcu cursus. Ornare quam viverra orci sagittis eu volutpat odio facilisis. Id volutpat lacus laoreet non curabitur. Cursus euismod quis viverra nibh cras pulvinar mattis nunc. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget nulla facilisi etiam dignissim diam quis enim lobortis. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet.&lt;/p&gt;', 1, '2020-10-15 15:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` text NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `about`) VALUES
(1,'CSE', 'computer'),
(2,'ECE','electrical'),
(3,'EEE', 'Electric & Electronic'),
(4,'CIVIL','Buildings');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `schedule` datetime NOT NULL,
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `schedule`, `banner`, `date_created`) VALUES
(1, 'Quiz Competition', '&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Cras a est hendrerit, egestas urna quis, ullamcorper elit. Nullam a felis eget dolor vulputate vehicula. In hac habitasse platea dictumst. Nunc est urna, gravida sit amet ligula ut, aliquam fermentum lorem. Vestibulum non suscipit velit, in rhoncus orci. Vivamus pulvinar quam nec leo semper facilisis quis eu magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum lectus lorem, iaculis sed nunc nec, lacinia auctor risus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Aenean elementum, risus eget rutrum dapibus, tellus leo eleifend leo, et mattis turpis quam eu turpis. Suspendisse commodo placerat tellus, quis faucibus metus euismod sed. Cras vitae risus in felis dignissim fermentum. Morbi aliquam nisi ipsum, id aliquam tortor congue eu. Sed fringilla convallis augue, et vulputate ante convallis vitae. Integer lacinia lacus at vehicula finibus. Nullam ultrices turpis dui, volutpat pulvinar augue placerat in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quam metus, sollicitudin a lectus non, tincidunt sagittis odio.&lt;/p&gt;', '2020-10-16 09:51:55', 'assets/img/quiz.png', '2020-10-16 09:51:55'),
(2, 'Dance Show', '&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Cras a est hendrerit, egestas urna quis, ullamcorper elit. Nullam a felis eget dolor vulputate vehicula. In hac habitasse platea dictumst. Nunc est urna, gravida sit amet ligula ut, aliquam fermentum lorem. Vestibulum non suscipit velit, in rhoncus orci. Vivamus pulvinar quam nec leo semper facilisis quis eu magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum lectus lorem, iaculis sed nunc nec, lacinia auctor risus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Aenean elementum, risus eget rutrum dapibus, tellus leo eleifend leo, et mattis turpis quam eu turpis. Suspendisse commodo placerat tellus, quis faucibus metus euismod sed. Cras vitae risus in felis dignissim fermentum. Morbi aliquam nisi ipsum, id aliquam tortor congue eu. Sed fringilla convallis augue, et vulputate ante convallis vitae. Integer lacinia lacus at vehicula finibus. Nullam ultrices turpis dui, volutpat pulvinar augue placerat in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quam metus, sollicitudin a lectus non, tincidunt sagittis odio.&lt;/p&gt;', '2021-09-08 12:15:25', 'assets/img/dance.jpg', '2021-09-08 12:15:25'),
(3, 'Kolam Competition', '&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Cras a est hendrerit, egestas urna quis, ullamcorper elit. Nullam a felis eget dolor vulputate vehicula. In hac habitasse platea dictumst. Nunc est urna, gravida sit amet ligula ut, aliquam fermentum lorem. Vestibulum non suscipit velit, in rhoncus orci. Vivamus pulvinar quam nec leo semper facilisis quis eu magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum lectus lorem, iaculis sed nunc nec, lacinia auctor risus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Aenean elementum, risus eget rutrum dapibus, tellus leo eleifend leo, et mattis turpis quam eu turpis. Suspendisse commodo placerat tellus, quis faucibus metus euismod sed. Cras vitae risus in felis dignissim fermentum. Morbi aliquam nisi ipsum, id aliquam tortor congue eu. Sed fringilla convallis augue, et vulputate ante convallis vitae. Integer lacinia lacus at vehicula finibus. Nullam ultrices turpis dui, volutpat pulvinar augue placerat in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quam metus, sollicitudin a lectus non, tincidunt sagittis odio.&lt;/p&gt;', '2022-09-23 04:20:35', 'assets/img/rang.jpg', '2022-09-23 04:20:35'),
(4, 'Singning Show', '&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Cras a est hendrerit, egestas urna quis, ullamcorper elit. Nullam a felis eget dolor vulputate vehicula. In hac habitasse platea dictumst. Nunc est urna, gravida sit amet ligula ut, aliquam fermentum lorem. Vestibulum non suscipit velit, in rhoncus orci. Vivamus pulvinar quam nec leo semper facilisis quis eu magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum lectus lorem, iaculis sed nunc nec, lacinia auctor risus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Aenean elementum, risus eget rutrum dapibus, tellus leo eleifend leo, et mattis turpis quam eu turpis. Suspendisse commodo placerat tellus, quis faucibus metus euismod sed. Cras vitae risus in felis dignissim fermentum. Morbi aliquam nisi ipsum, id aliquam tortor congue eu. Sed fringilla convallis augue, et vulputate ante convallis vitae. Integer lacinia lacus at vehicula finibus. Nullam ultrices turpis dui, volutpat pulvinar augue placerat in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quam metus, sollicitudin a lectus non, tincidunt sagittis odio.&lt;/p&gt;', '2020-10-16 09:51:55', 'assets/img/sing.jpg', '2020-10-16 09:51:55'),
(5, 'Mehandhi Competition', '&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Cras a est hendrerit, egestas urna quis, ullamcorper elit. Nullam a felis eget dolor vulputate vehicula. In hac habitasse platea dictumst. Nunc est urna, gravida sit amet ligula ut, aliquam fermentum lorem. Vestibulum non suscipit velit, in rhoncus orci. Vivamus pulvinar quam nec leo semper facilisis quis eu magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum lectus lorem, iaculis sed nunc nec, lacinia auctor risus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Aenean elementum, risus eget rutrum dapibus, tellus leo eleifend leo, et mattis turpis quam eu turpis. Suspendisse commodo placerat tellus, quis faucibus metus euismod sed. Cras vitae risus in felis dignissim fermentum. Morbi aliquam nisi ipsum, id aliquam tortor congue eu. Sed fringilla convallis augue, et vulputate ante convallis vitae. Integer lacinia lacus at vehicula finibus. Nullam ultrices turpis dui, volutpat pulvinar augue placerat in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quam metus, sollicitudin a lectus non, tincidunt sagittis odio.&lt;/p&gt;', '2021-09-08 10:15:25', 'assets/img/mehan.jpeg', '2021-09-08 10:15:25'),
(6, 'Technical Rounds', '&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Cras a est hendrerit, egestas urna quis, ullamcorper elit. Nullam a felis eget dolor vulputate vehicula. In hac habitasse platea dictumst. Nunc est urna, gravida sit amet ligula ut, aliquam fermentum lorem. Vestibulum non suscipit velit, in rhoncus orci. Vivamus pulvinar quam nec leo semper facilisis quis eu magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum lectus lorem, iaculis sed nunc nec, lacinia auctor risus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Aenean elementum, risus eget rutrum dapibus, tellus leo eleifend leo, et mattis turpis quam eu turpis. Suspendisse commodo placerat tellus, quis faucibus metus euismod sed. Cras vitae risus in felis dignissim fermentum. Morbi aliquam nisi ipsum, id aliquam tortor congue eu. Sed fringilla convallis augue, et vulputate ante convallis vitae. Integer lacinia lacus at vehicula finibus. Nullam ultrices turpis dui, volutpat pulvinar augue placerat in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quam metus, sollicitudin a lectus non, tincidunt sagittis odio.&lt;/p&gt;', '2022-11-16 11:20:55', 'assets/img/tech.jpeg', '2022-11-16 11:20:55'),
(7, 'Gaming Show', '&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Cras a est hendrerit, egestas urna quis, ullamcorper elit. Nullam a felis eget dolor vulputate vehicula. In hac habitasse platea dictumst. Nunc est urna, gravida sit amet ligula ut, aliquam fermentum lorem. Vestibulum non suscipit velit, in rhoncus orci. Vivamus pulvinar quam nec leo semper facilisis quis eu magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum lectus lorem, iaculis sed nunc nec, lacinia auctor risus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Aenean elementum, risus eget rutrum dapibus, tellus leo eleifend leo, et mattis turpis quam eu turpis. Suspendisse commodo placerat tellus, quis faucibus metus euismod sed. Cras vitae risus in felis dignissim fermentum. Morbi aliquam nisi ipsum, id aliquam tortor congue eu. Sed fringilla convallis augue, et vulputate ante convallis vitae. Integer lacinia lacus at vehicula finibus. Nullam ultrices turpis dui, volutpat pulvinar augue placerat in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quam metus, sollicitudin a lectus non, tincidunt sagittis odio.&lt;/p&gt;', '2023-07-12 02:25:55', 'assets/img/game.jpg', '2023-07-12 02:25:55'),
(8, 'idol singing Competition', '&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Cras a est hendrerit, egestas urna quis, ullamcorper elit. Nullam a felis eget dolor vulputate vehicula. In hac habitasse platea dictumst. Nunc est urna, gravida sit amet ligula ut, aliquam fermentum lorem. Vestibulum non suscipit velit, in rhoncus orci. Vivamus pulvinar quam nec leo semper facilisis quis eu magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum lectus lorem, iaculis sed nunc nec, lacinia auctor risus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Aenean elementum, risus eget rutrum dapibus, tellus leo eleifend leo, et mattis turpis quam eu turpis. Suspendisse commodo placerat tellus, quis faucibus metus euismod sed. Cras vitae risus in felis dignissim fermentum. Morbi aliquam nisi ipsum, id aliquam tortor congue eu. Sed fringilla convallis augue, et vulputate ante convallis vitae. Integer lacinia lacus at vehicula finibus. Nullam ultrices turpis dui, volutpat pulvinar augue placerat in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quam metus, sollicitudin a lectus non, tincidunt sagittis odio.&lt;/p&gt;', '2024-04-18 03:40:55', 'assets/img/idol.jpg', '2024-04-18 03:40:55'),
(9, 'Cooking Competition', '&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Cras a est hendrerit, egestas urna quis, ullamcorper elit. Nullam a felis eget dolor vulputate vehicula. In hac habitasse platea dictumst. Nunc est urna, gravida sit amet ligula ut, aliquam fermentum lorem. Vestibulum non suscipit velit, in rhoncus orci. Vivamus pulvinar quam nec leo semper facilisis quis eu magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum lectus lorem, iaculis sed nunc nec, lacinia auctor risus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Aenean elementum, risus eget rutrum dapibus, tellus leo eleifend leo, et mattis turpis quam eu turpis. Suspendisse commodo placerat tellus, quis faucibus metus euismod sed. Cras vitae risus in felis dignissim fermentum. Morbi aliquam nisi ipsum, id aliquam tortor congue eu. Sed fringilla convallis augue, et vulputate ante convallis vitae. Integer lacinia lacus at vehicula finibus. Nullam ultrices turpis dui, volutpat pulvinar augue placerat in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quam metus, sollicitudin a lectus non, tincidunt sagittis odio.&lt;/p&gt;', '2021-12-01 10:30:55', 'assets/img/cook.jpg', '2021-12-01 10:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `event_commits`
--

CREATE TABLE `event_commits` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_commits`
--

INSERT INTO `event_commits` (`id`, `event_id`, `user_id`) VALUES
(1, 1, 3);

-- --------------------------------------------------------
--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `topic_id`, `comment`, `user_id`, `date_created`) VALUES
(1, 3, 'Sample updated Comment', 3, '2020-10-15 15:46:03'),
(3, 3, 'Sample', 1, '2020-10-16 08:48:02'),
(5, 0, '', 1, '2020-10-16 09:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Dumping data for table `forum_topics`
--

INSERT INTO `forum_topics` (`id`, `title`, `description`, `user_id`, `date_created`) VALUES
(2, 'Sample Topic 2', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/span&gt;', 3, '2020-10-15 15:20:51'),
(3, 'Sample Topic 3', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Vivamus gravida nunc orci. Proin ut tristique odio. Nulla suscipit ipsum arcu, a luctus lorem vulputate et. Maecenas magna lorem, tempor id ultrices id, vehicula eu diam. Aliquam erat volutpat. Praesent in sem tincidunt, mattis odio nec, ultrices justo. Vivamus sit amet sapien ornare tortor porttitor congue vel et lorem. In interdum eget metus ut sagittis. In accumsan nec purus vel ornare. Quisque non scelerisque libero, et aliquam risus. Mauris tincidunt ullamcorper efficitur. Nullam venenatis in massa et elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In mollis, tortor sed pellentesque ultrices, sem sem interdum lectus, a laoreet nulla lacus at risus. Ut placerat orci at enim fermentum, eget pretium ante pharetra. Nam id nunc congue augue feugiat egestas.&lt;/span&gt;', 3, '2020-10-15 15:22:30'),
(4, 'Topic by Admin', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: bolder; margin: 0px; padding: 0px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;', 1, '2020-10-16 08:31:45');

-- Table structure for table `messages`
--
CREATE TABLE `messages` (
  `id` int(30) NOT NULL,
  `from_user` int(30) NOT NULL,
  `to_user` int(30) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = text , 2 = photos,3 = videos, 4 = documents',
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `popped` tinyint(1) NOT NULL DEFAULT 0,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_user`, `to_user`, `type`, `message`, `status`, `popped`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 1, 2, 1, 'test', 1, 1, 0, '2021-10-16 11:45:21', '2021-10-17 19:36:34'),
(2, 1, 2, 1, '1', 1, 1, 0, '2021-10-16 11:45:25', '2021-10-17 19:36:34'),
(3, 1, 2, 1, '2', 1, 1, 0, '2021-10-16 11:45:26', '2021-10-17 19:36:34'),
(4, 1, 2, 1, '3', 1, 1, 0, '2021-10-16 11:45:28', '2021-10-17 19:36:34'),
(5, 1, 2, 1, '4', 1, 1, 0, '2021-10-16 11:45:30', '2021-10-17 19:36:34'),
(6, 1, 2, 1, '5', 1, 1, 0, '2021-10-16 11:45:31', '2021-10-17 19:36:34'),
(7, 1, 2, 1, '6', 1, 1, 0, '2021-10-16 11:45:32', '2021-10-17 19:36:34'),
(8, 1, 2, 1, '7', 1, 1, 0, '2021-10-16 11:45:34', '2021-10-17 19:36:34'),
(9, 1, 2, 1, '8', 1, 1, 0, '2021-10-16 11:45:35', '2021-10-17 19:36:34'),
(10, 1, 2, 1, '9', 1, 1, 0, '2021-10-16 11:45:37', '2021-10-17 19:36:34'),
(11, 1, 2, 1, '10', 1, 1, 0, '2021-10-16 11:45:42', '2021-10-17 19:36:34'),
(12, 1, 2, 1, '11', 1, 1, 0, '2021-10-16 11:45:44', '2021-10-17 19:36:34'),
(13, 1, 2, 1, '12', 1, 1, 0, '2021-10-16 11:45:47', '2021-10-17 19:36:34'),
(14, 1, 2, 1, '13', 1, 1, 0, '2021-10-16 11:45:51', '2021-10-17 19:36:34'),
(15, 1, 2, 1, '14', 1, 1, 0, '2021-10-16 11:45:54', '2021-10-17 19:36:34'),
(16, 1, 2, 1, '15', 1, 1, 0, '2021-10-16 11:45:57', '2021-10-17 19:36:34'),
(17, 2, 1, 1, '16', 1, 1, 0, '2021-10-16 11:52:45', '2021-10-17 19:37:00'),
(18, 2, 1, 1, '17', 1, 1, 0, '2021-10-16 11:52:49', '2021-10-17 19:37:00'),
(19, 2, 1, 1, '18', 1, 1, 0, '2021-10-16 11:52:54', '2021-10-17 19:37:00'),
(20, 2, 1, 1, '19', 1, 1, 0, '2021-10-16 11:52:57', '2021-10-17 19:37:00'),
(21, 2, 1, 1, '20', 1, 1, 0, '2021-10-16 11:53:06', '2021-10-17 19:37:00'),
(22, 2, 1, 1, '21', 1, 1, 0, '2021-10-16 11:58:48', '2021-10-17 19:37:00'),
(23, 2, 1, 1, 'test', 1, 1, 0, '2021-10-16 12:03:40', '2021-10-17 19:37:00'),
(24, 2, 1, 1, 'test', 1, 1, 0, '2021-10-16 12:04:48', '2021-10-17 19:37:00'),
(25, 1, 2, 1, 're', 1, 1, 0, '2021-10-16 12:05:03', '2021-10-17 19:36:34'),
(26, 1, 2, 1, 'wew', 1, 1, 0, '2021-10-16 12:05:19', '2021-10-17 19:36:34'),
(27, 2, 1, 1, 'hey John', 1, 1, 0, '2021-10-17 18:43:58', '2021-10-17 19:37:00'),
(28, 1, 3, 1, 'Hi Sam', 1, 1, 0, '2021-10-17 18:50:20', '2021-10-17 19:42:15'),
(29, 1, 2, 1, 'claire', 1, 1, 0, '2021-10-17 18:50:37', '2021-10-17 19:36:34'),
(30, 3, 1, 1, 'hey john', 1, 1, 0, '2021-10-17 19:42:31', '2021-10-17 19:43:18'),
(31, 1, 2, 1, 'test', 1, 0, 0, '2021-10-17 19:42:43', '2021-10-17 19:42:44'),
(32, 3, 1, 1, 'yow', 1, 1, 0, '2021-10-17 19:43:22', '2021-10-17 19:43:49'),
(33, 1, 2, 1, 'claire', 1, 0, 1, '2021-10-17 19:43:57', '2021-10-18 00:01:46'),
(34, 3, 1, 1, 'john??', 1, 1, 0, '2021-10-17 19:44:30', '2021-10-17 19:46:01'),
(35, 3, 1, 1, 'test', 1, 1, 0, '2021-10-17 19:45:42', '2021-10-17 19:46:01'),
(36, 3, 1, 1, 'hey', 1, 1, 0, '2021-10-17 19:46:12', '2021-10-17 19:46:26'),
(37, 3, 1, 1, 'psst', 1, 1, 0, '2021-10-17 19:46:33', '2021-10-17 19:47:47'),
(38, 3, 1, 1, 'John??', 1, 1, 0, '2021-10-17 19:47:00', '2021-10-17 19:47:47'),
(39, 3, 1, 1, 'hey you', 1, 1, 0, '2021-10-17 19:47:27', '2021-10-17 19:47:47'),
(40, 3, 1, 1, 'test', 1, 1, 0, '2021-10-17 19:47:54', '2021-10-17 19:50:50'),
(41, 1, 2, 1, '123', 1, 0, 0, '2021-10-17 19:49:08', '2021-10-17 19:49:09'),
(42, 3, 1, 1, '1234', 1, 1, 0, '2021-10-17 19:49:17', '2021-10-17 19:50:50'),
(43, 3, 1, 1, 'test', 1, 1, 0, '2021-10-17 19:50:04', '2021-10-17 19:50:50'),
(44, 3, 1, 1, 'qweqwe', 1, 1, 0, '2021-10-17 19:50:42', '2021-10-17 19:50:50'),
(45, 3, 1, 1, 'aaa', 1, 1, 0, '2021-10-17 19:50:57', '2021-10-17 19:52:52'),
(46, 3, 1, 1, 'John??', 1, 1, 0, '2021-10-17 19:51:38', '2021-10-17 19:52:52'),
(47, 1, 2, 1, 'calire??', 1, 0, 0, '2021-10-17 19:51:50', '2021-10-17 19:51:51'),
(48, 3, 1, 1, 'hey', 1, 1, 0, '2021-10-17 19:52:02', '2021-10-17 19:52:52'),
(49, 3, 1, 1, 'yes ?', 1, 1, 0, '2021-10-17 19:52:58', '2021-10-17 19:53:09'),
(59, 4, 1, 1, 'dude', 1, 1, 0, '2021-10-17 20:15:38', '2021-10-17 20:15:43'),
(60, 1, 4, 1, 'hey', 1, 1, 0, '2021-10-17 20:15:50', '2021-10-17 20:16:04'),
(61, 4, 1, 1, 'men', 1, 1, 0, '2021-10-17 21:28:39', '2021-10-17 21:39:08'),
(62, 4, 1, 1, 'test', 1, 1, 0, '2021-10-17 21:32:31', '2021-10-17 21:39:08'),
(63, 1, 3, 1, 'test', 1, 1, 0, '2021-10-17 21:32:53', '2021-10-18 00:02:20'),
(64, 4, 1, 1, 'test', 1, 1, 0, '2021-10-17 21:33:00', '2021-10-17 21:39:08'),
(65, 4, 1, 1, 'dude', 1, 1, 0, '2021-10-17 21:33:27', '2021-10-17 21:39:08'),
(66, 4, 1, 1, 'yow', 1, 1, 0, '2021-10-17 21:35:24', '2021-10-17 21:39:08'),
(67, 4, 1, 1, 'test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test ', 1, 1, 0, '2021-10-17 21:38:07', '2021-10-17 21:42:42'),
(68, 4, 1, 1, 'teest', 1, 1, 0, '2021-10-17 21:49:16', '2021-10-17 21:49:18'),
(69, 4, 1, 1, 'dude??', 1, 1, 0, '2021-10-17 21:52:38', '2021-10-17 21:52:41'),
(70, 4, 1, 1, 'sup', 1, 1, 0, '2021-10-17 21:52:48', '2021-10-17 21:54:47'),
(71, 1, 4, 1, 'hey', 1, 1, 0, '2021-10-17 21:53:02', '2021-10-17 21:54:13'),
(72, 1, 4, 1, 'What ??', 1, 1, 0, '2021-10-17 21:54:54', '2021-10-17 21:55:15'),
(73, 1, 4, 1, 'How can I help you ?', 1, 1, 0, '2021-10-17 21:55:29', '2021-10-17 21:56:46'),
(74, 4, 1, 1, 'test only', 1, 1, 0, '2021-10-17 21:56:51', '2021-10-17 22:19:00'),
(75, 4, 1, 1, 'test', 1, 1, 0, '2021-10-17 21:57:08', '2021-10-17 22:19:00'),
(76, 4, 1, 1, 'a', 1, 1, 0, '2021-10-17 21:57:14', '2021-10-17 22:19:00'),
(77, 4, 1, 1, '123', 1, 1, 0, '2021-10-17 21:58:26', '2021-10-17 22:19:00'),
(78, 4, 1, 1, '123', 1, 1, 0, '2021-10-17 21:58:31', '2021-10-17 22:19:00'),
(79, 4, 1, 1, '2221\r\n25', 1, 1, 0, '2021-10-17 21:58:38', '2021-10-17 22:19:00'),
(80, 1, 4, 1, 'yes?\r\n22', 1, 1, 0, '2021-10-17 21:59:39', '2021-10-17 21:59:43'),
(81, 4, 1, 1, 'hey', 1, 1, 0, '2021-10-17 22:01:22', '2021-10-17 22:19:00'),
(82, 4, 1, 1, 'what\r\n??', 1, 1, 0, '2021-10-17 22:01:58', '2021-10-17 22:19:00'),
(83, 4, 1, 1, 'test\r\n', 1, 1, 0, '2021-10-17 22:15:43', '2021-10-17 22:19:00'),
(84, 4, 1, 1, 'test\r\n', 1, 1, 0, '2021-10-17 22:16:01', '2021-10-17 23:07:20'),
(85, 4, 1, 1, 'yow\r\n\r\nsup', 1, 1, 0, '2021-10-17 22:16:11', '2021-10-17 23:07:20'),
(86, 4, 1, 1, 'wew\r\ntest', 1, 1, 0, '2021-10-17 22:18:30', '2021-10-17 23:07:20'),
(87, 1, 4, 1, 'test', 1, 1, 0, '2021-10-17 22:19:08', '2021-10-17 22:29:46'),
(88, 1, 4, 1, 'test\r\ntest', 1, 1, 0, '2021-10-17 22:19:14', '2021-10-17 22:29:46'),
(89, 1, 4, 1, 'test\r\ntest', 1, 1, 0, '2021-10-17 22:21:13', '2021-10-17 22:29:46'),
(90, 1, 4, 1, 'dude\r\nCan I Ask ?', 1, 1, 1, '2021-10-17 22:30:01', '2021-10-17 23:36:55'),
(91, 4, 1, 1, 'What?\r\nIs it about something?', 1, 1, 1, '2021-10-17 22:30:32', '2021-10-17 23:37:56'),
(92, 1, 4, 1, 'Remeber test 101\r\nCan you check the bug ?', 1, 1, 1, '2021-10-17 22:31:09', '2021-10-17 23:36:01'),
(93, 4, 1, 1, 'test', 1, 1, 1, '2021-10-17 22:42:23', '2021-10-17 23:38:02'),
(94, 4, 1, 1, 'test', 1, 1, 1, '2021-10-17 22:43:28', '2021-10-17 23:07:29'),
(95, 4, 1, 1, 'test', 1, 1, 1, '2021-10-17 23:21:14', '2021-10-17 23:35:50'),
(96, 4, 1, 1, 'hey dude', 1, 1, 0, '2021-10-17 23:44:45', '2021-10-17 23:46:14'),
(97, 4, 1, 1, 'yow', 1, 1, 0, '2021-10-17 23:46:04', '2021-10-17 23:46:14'),
(98, 4, 1, 1, 'fs', 1, 1, 0, '2021-10-17 23:48:34', '2021-10-17 23:55:38'),
(99, 4, 1, 1, 'test', 1, 1, 0, '2021-10-17 23:49:12', '2021-10-17 23:55:38'),
(100, 1, 4, 1, 'what?', 1, 1, 0, '2021-10-17 23:49:22', '2021-10-17 23:51:07'),
(101, 1, 4, 1, 'yow', 1, 1, 0, '2021-10-17 23:55:42', '2021-10-18 00:01:56'),
(102, 3, 1, 1, 'JOhn?', 0, 1, 0, '2021-10-18 00:02:29', '2021-10-18 00:02:30'),
(103, 3, 1, 1, 'Hey John', 0, 1, 0, '2021-10-18 00:02:33', '2021-10-18 00:03:13'),
(104, 3, 1, 1, 'John', 0, 1, 0, '2021-10-18 00:02:49', '2021-10-18 00:03:13'),
(105, 3, 1, 1, 'test', 0, 1, 0, '2021-10-18 00:03:21', '2021-10-18 00:03:21'),
(106, 3, 1, 1, 'john', 0, 1, 0, '2021-10-18 00:03:26', '2021-10-18 00:03:42'),
(107, 3, 1, 1, 'hey', 0, 1, 0, '2021-10-18 00:03:58', '2021-10-18 00:03:58'),
(108, 3, 1, 1, 'hey', 0, 1, 0, '2021-10-18 00:04:06', '2021-10-18 00:07:16'),
(109, 3, 1, 1, 'test', 0, 1, 0, '2021-10-18 00:07:23', '2021-10-18 00:07:23'),
(110, 3, 1, 1, 'test', 0, 1, 0, '2021-10-18 00:07:56', '2021-10-18 00:07:56'),
(111, 3, 1, 1, 'test', 0, 1, 0, '2021-10-18 00:07:59', '2021-10-18 00:08:00');

-- --------------------------------------------------------
--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Alumni Management System', 'info@sample.comm', '+6948 8542 623', '1602738120_pngtree-purple-hd-business-banner-image_5493.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------
--
-- Table structure for table `convo_list`
--
CREATE TABLE `convo_list` (
  `id` int(30) NOT NULL,
  `from_user` int(30) NOT NULL,
  `to_user` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `users`
--
CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Alumni officer, 3= alumnus',
  `auto_generated_pass` text NOT NULL,
  `alumnus_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `auto_generated_pass`, `alumnus_id`) VALUES
(1, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 1, '', 0),
(2, 'Sureshkumar','sureshkumar23@gmail.com','827ccb0eea8a706c4c34a16891f84e7b',2,'',2),
(3, 'Muthu','mk16@gmail.com','827ccb0eea8a706c4c34a16891f84e7b',3,'',3),
(4, 'priya','priyal@gmail.com','827ccb0eea8a706c4c34a16891f84e7b',3,'',4),
(5, 'meena','meena94@gmail.com','827ccb0eea8a706c4c34a16891f84e7b',3,'',5),
(6, 'vinitha','vinitha@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b',3,'',6),
(7, 'nandhu','nandhu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b',3,'',7);
-- --------------------------------------------------------

--
-- Table structure for table `user`
--
CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `alumnus_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `middlename`, `lastname`, `contact`, `gender`, `dob`, `email`, `password`, `date_created`, `date_updated`,`alumnus_id`) VALUES
(1, 'A, Nandhu ', 'A', 'NADHIU', '09123456789', 'Female', '1997-06-23', 'nandhu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-10-15 10:34:00', '2021-10-15 12:58:34',7),
(2, 'Kumar, Muthu ', 'K', 'Blake', '09123654987', 'Male', '1997-10-14', 'mk16@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-10-15 13:04:40', '2021-10-15 12:58:34',3),
(3, 'Meenakshi', 'k', 'meenu', '78978511554', 'Female', '1997-07-15', 'meena94@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-10-15 13:05:23','2021-10-15 12:58:34',5);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_commits`
--
ALTER TABLE `event_commits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `convo_list`
--
ALTER TABLE `convo_list`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event_commits`
--
ALTER TABLE `event_commits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


--
-- AUTO_INCREMENT for table `convo_list`
--
ALTER TABLE `convo_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
