-- Adminer 4.7.6 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `employees`;
CREATE DATABASE `employees` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `employees`;

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `employeeid` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `pswd` varchar(255) NOT NULL,
  PRIMARY KEY (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `contact` (`fname`, `lname`, `employeeid`, `username`, `pswd`) VALUES
('Abdul',	'Farouk',	1,	'abdul1',	'A123'),
('Ryan',	'mo',	2,	'ryan1',	'R123'),
('Jay',	'ray',	3,	'jay1',	'J1234'),
('Jah',	'rule',	4,	'jah1',	'J123'),
('Thomspson',	'david',	5,	'thomspson1',	'T123'),
('lashida',	'barnes',	6,	'lashi1',	'l123'),
('April',	'Barnes',	7,	'april1',	'Aa123'),
('Nas',	'lil',	8,	'nas1',	'N123'),
('Beyonce',	'jey',	9,	'beyonce1',	'B123'),
('Bob',	'Marley',	10,	'bob1',	'Bb123');

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `employeeid` int NOT NULL,
  `dept_id` int NOT NULL,
  `dept_name` varchar(255) NOT NULL,
  `dept_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `department` (`employeeid`, `dept_id`, `dept_name`, `dept_location`) VALUES
(1,	5,	'Cybersecurity',	'New Jersey'),
(2,	21,	'Desktop Support Analyst',	'Florida'),
(3,	4,	'Software Engineer II',	'New York'),
(4,	14,	'Software Engineer I',	'New Jersey'),
(5,	13,	'CFO',	'New York'),
(6,	15,	'Information Technology Specialist Level I',	'Wisconsin'),
(7,	12,	'Support Specialist',	'New York'),
(8,	15,	'Network Engineer I',	'Florida'),
(9,	18,	'Network Engineer',	'Connecticut'),
(10,	11,	'Sr. Cyber Security Analyst',	'North Carolina');

DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `employeeid` int NOT NULL,
  `employee_salary` int NOT NULL,
  PRIMARY KEY (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `salary` (`employeeid`, `employee_salary`) VALUES
(1,	28600),
(2,	875390),
(3,	25000),
(4,	287000),
(5,	86000),
(6,	122100),
(7,	347771),
(8,	97000),
(9,	99000),
(10,	543210);

-- 2020-04-29 01:09:00


ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'it635';
CREATE USER 'steve'@'%' IDENTIFIED BY 'it635';
FLUSH PRIVILEGES;

