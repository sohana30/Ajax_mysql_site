-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 14, 2019 at 09:45 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `country`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(3) NOT NULL,
  `cname` varchar(35) NOT NULL,
  `detail` varchar(1000) NOT NULL,
  `image_url` varchar(256) NOT NULL,
  `Image_icon` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `cname`, `detail`, `image_url`, `Image_icon`) VALUES
(1, 'Afghanistan', 'Afghanistan is famous for its pomegranates in Asia', 'afghanistan.jpg', 'afghanistan.png'),
(2, 'Bangladesh', 'Bangladesh is famous for its jute and garment products like dresses, shocks etc.', 'bangladesh.jpg', 'bangladesh.png'),
(3, 'Canada', 'Canada is widely known for its hockey, maple syrup, and brutally cold winters.', 'canada.jpg', 'canada.png'),
(4, 'Czech Republic', 'Czech Republic is known for its beautiful castles and medieval buildings', 'czech_republic.jpg', 'czech_republic.png'),
(5, 'Denmark', 'Denmark is also known to be one of the biggest exporters of pork', 'denmark.jpg', 'denmark.png'),
(6, 'Egypt', 'Egypt is famous for its ancient civilization and some of the world most famous monuments, including the Giza pyramids, the Great Sphinx and the ancient temples of Luxor dating back thousands of years.', 'egypt.jpg', 'egypt.png'),
(7, 'France', 'France is famous for the Tour de France and the Eiffel.', 'france.jpg', 'france.png'),
(8, 'Germany', 'Germany is home to some of the most popular car manufacturing units in the world. Audi, Volkswagen, BMW and Mercedes-Benz, all have their origins in Germany. ', 'germany.jpg', 'germany.png'),
(9, 'Hong Kong', 'Hong Kong is most famous for its travel and shopping.', 'hong_kong.jpg', 'hong_kong.png'),
(10, 'India', 'India is famous for its spices and our cuisine is world famous, no doubt in that.', 'india.jpg', 'india.png'),
(11, 'Japan', 'Japan Is famous for their amazing history, Mt Fuji, unrivaled technology and Samurais.', 'japan.jpg', 'japan.png'),
(12, 'Kuwait', 'Kuwait is famous for The Liberation Tower.', 'kuwait.jpg', 'kuwait.png'),
(13, 'Lebanon', 'Lebanon is known for being a vacation destination for the people of the Persian Gulf, many of whom wear the traditional hijab.', 'lebanon.jpg', 'lebanon.png'),
(14, 'Malaysia', 'Malaysia is known for its capital city of Kuala Lumpur, a powerhouse financial and business hub in South East Asia, as well as its beautiful beaches, secluded islands, elevated hill stations, and UNESCO World Heritage Sites.', 'malaysia.jpg', 'malaysia.png'),
(16, 'Norway', 'Norway is famous for its natural attractions like Fjords, mountains and midnight sun, but it also well known for a vibrant cultural life.', 'norway.jpg', 'norway.png'),
(17, 'Oman', 'Oman is famous for fresh, sea air of breathing.', 'oman.jpg', 'oman.png'),
(18, 'Philippines', 'Philippines is known for having its rich biodiversity as its main tourist attraction.', 'philippines.jpg', 'philippines.png'),
(19, 'Qatar', 'Qatar is classified by the UN as a country of very high human development and is widely regarded as the most advanced Arab state for human development. ', 'qatar.jpg', 'qatar.png'),
(20, 'Russia', 'Russia is known for its cold climate, vodka, bears, or even the recent drug cheating scandal that saw athletes banned from Rio Olympics. ', 'russia.jpg', 'russia.png'),
(21, 'Saudi Arabia', 'Saudi Arabia has the most oil of any place in the world. ', 'saudi_arabia.jpg', 'saudi_arabia.png'),
(22, 'Turkey', 'Turkey is famous for it´s geographical location', 'turkey.jpg', 'turkey.png'),
(23, 'United States', 'US is famous for its attractions such as the Grand Canyon and Mount Rushmore naturally come to mind, as are its lasting imprints on global culture, such as Hollywood, music, sports, historical personalities, tech innovation, and more.', 'united_states.jpg', 'united_states.png'),
(24, 'Vietnam', 'Vietnam is famous for besides it being a Southeast Asian country and a top worth-visiting place due to its ancient history, diverse culture and quintessential natural landscapes.', 'vietnam.jpg', 'vietnam.png'),
(25, 'Yemen', 'Yemen is famous for its ancient mudbrick high-rise buildings.', 'yemen.jpg', 'yemen.png'),
(26, 'Zimbabwe', 'Zimbabwe is blessed with pristine tracts of wilderness that offer spectacular and diverse scenery home to all of Africa celebrity animals.', 'zimbabwe.jpg', 'zimbabwe.png');
