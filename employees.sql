-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 13, 2022 at 12:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `current_dept_emp`
-- (See below for the actual view)
--
CREATE TABLE `current_dept_emp` (
`emp_no` int(11)
,`dept_no` char(4)
,`from_date` date
,`to_date` date
);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_no` char(4) NOT NULL,
  `dept_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES
('3', 'Finance'),
('1', 'General Management'),
('4', 'HR'),
('2', 'Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `dept_emp`
--

CREATE TABLE `dept_emp` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept_emp`
--

INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES
(1, '1', '2013-01-01', '2022-07-01'),
(2, '2', '2010-01-01', '2022-07-01'),
(3, '4', '2019-01-01', '2022-06-10'),
(4, '4', '2005-01-01', '2022-06-10'),
(5, '2', '2015-01-01', '2022-06-10'),
(5, '3', '2015-01-01', '2022-06-10'),
(6, '3', '2007-01-01', '2022-06-10'),
(6, '4', '2007-02-01', '2022-06-01'),
(7, '2', '2008-01-23', '2022-06-10'),
(8, '1', '1985-02-01', '2022-06-10'),
(8, '2', '2000-01-01', '2022-06-01'),
(10, '3', '1982-12-01', '2022-06-10'),
(11, '2', '2005-01-01', '2022-06-01'),
(11, '4', '1996-04-19', '2022-06-10'),
(12, '1', '2020-01-01', '2022-06-01'),
(12, '3', '2018-12-21', '2022-06-10'),
(13, '3', '2018-01-01', '2022-06-01'),
(13, '4', '2013-10-30', '2022-06-10'),
(14, '2', '2017-01-06', '2022-06-10'),
(14, '3', '2017-01-06', '2022-06-10'),
(15, '1', '1991-07-30', '2022-06-10'),
(15, '4', '2015-02-01', '2022-06-01'),
(16, '4', '2021-06-01', '2022-06-10'),
(17, '3', '2021-06-01', '2022-06-10'),
(18, '1', '2021-06-01', '2022-06-10'),
(19, '1', '2018-12-01', '2021-06-01'),
(19, '3', '2018-12-01', '2022-06-10'),
(20, '2', '2018-01-01', '2022-06-01'),
(20, '4', '2015-02-01', '2022-06-01');

-- --------------------------------------------------------

--
-- Stand-in structure for view `dept_emp_latest_date`
-- (See below for the actual view)
--
CREATE TABLE `dept_emp_latest_date` (
`emp_no` int(11)
,`from_date` date
,`to_date` date
);

-- --------------------------------------------------------

--
-- Table structure for table `dept_manager`
--

CREATE TABLE `dept_manager` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept_manager`
--

INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES
(1, '1', '2021-05-01', '2022-06-10'),
(10, '1', '2022-01-01', '2022-06-10'),
(11, '2', '2007-02-01', '2022-06-10'),
(19, '3', '2020-01-01', '2022-06-10'),
(20, '4', '2017-01-01', '2022-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_no` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `hire_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES
(1, '1988-07-26', 'Josephi', 'Cohen', 'M', '2022-03-29'),
(2, '1957-01-24', 'Carlos', 'Saez', 'M', '1997-01-04'),
(3, '1992-08-22', 'Eloy', 'Sandoval', 'M', '2017-03-22'),
(4, '1978-11-17', 'Mateo', 'Navarette', 'M', '2001-12-10'),
(5, '1982-12-19', 'Navarro', 'Lazo', 'M', '2010-05-16'),
(6, '1965-08-01', 'Martina', 'Milan', 'F', '1999-06-24'),
(7, '1963-09-30', 'Daniela', 'Gonzalez', 'F', '1992-07-23'),
(8, '1960-05-30', 'Mirasol', 'Garcia', 'F', '1985-02-01'),
(10, '1962-03-14', 'Teresa', 'Almodovar', 'F', '1982-11-25'),
(11, '1973-10-23', 'Estrella', 'Ochoa', 'F', '1996-04-19'),
(12, '2000-01-01', 'Julian', 'Pintor', 'M', '2018-12-21'),
(13, '1994-02-22', 'Abrahan', 'Consuegra', 'M', '2013-10-30'),
(14, '1999-09-14', 'David', 'Capote', 'M', '2017-12-30'),
(15, '1969-03-24', 'Beatriz', 'Barahona', 'F', '1991-07-30'),
(16, '2002-06-12', 'David', 'Romero', 'M', '2021-06-09'),
(17, '2002-05-08', 'David', 'Muñez', 'M', '2021-05-15'),
(18, '1999-04-21', 'David', 'Hortaleza', 'M', '2021-02-05'),
(19, '1981-05-13', 'Donna', 'Martin', 'F', '2002-12-17'),
(20, '1992-03-09', 'Rita', 'Ramazani', 'F', '2015-06-27');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `emp_no` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES
(1, 41000, '2020-05-01', '2021-05-01'),
(1, 50000, '2021-05-01', '2022-05-01'),
(2, 2300, '1997-02-01', '2013-06-01'),
(2, 4150, '2013-01-01', '2022-01-01'),
(3, 1250, '2017-04-01', '2019-01-01'),
(3, 1970, '2019-02-01', '2022-01-01'),
(4, 1450, '2001-12-01', '2005-01-01'),
(4, 2000, '2005-02-01', '2010-01-01'),
(4, 2200, '2010-02-01', '2018-01-01'),
(4, 3050, '2022-01-01', '2022-06-01'),
(5, 3070, '2010-05-16', '2015-01-01'),
(5, 3720, '2015-02-01', '2022-06-01'),
(6, 20000, '1999-06-24', '2007-01-01'),
(6, 23050, '2007-02-01', '2022-06-01'),
(7, 17250, '1992-07-23', '2008-01-23'),
(7, 21000, '2008-02-01', '2022-01-01'),
(8, 3500, '1985-02-01', '2022-06-10'),
(10, 28000, '1982-11-25', '2022-06-11'),
(11, 32000, '1996-04-19', '2022-06-10'),
(12, 1220, '2018-12-21', '2022-06-10'),
(13, 12000, '2013-10-30', '2018-01-01'),
(13, 14050, '2018-02-01', '2022-06-10'),
(14, 8970, '2017-12-30', '2022-06-10'),
(15, 13570, '1991-07-30', '2022-06-10'),
(16, 2770, '2021-06-01', '2022-01-01'),
(17, 1450, '2021-06-01', '2022-06-10'),
(18, 1670, '2021-06-01', '2021-06-01'),
(19, 42000, '2018-12-01', '2022-06-10'),
(20, 28000, '2015-02-01', '2021-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `emp_no` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure for view `current_dept_emp`
--
DROP TABLE IF EXISTS `current_dept_emp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `current_dept_emp`  AS SELECT `l`.`emp_no` AS `emp_no`, `d`.`dept_no` AS `dept_no`, `l`.`from_date` AS `from_date`, `l`.`to_date` AS `to_date` FROM (`dept_emp` `d` join `dept_emp_latest_date` `l` on(`d`.`emp_no` = `l`.`emp_no` and `d`.`from_date` = `l`.`from_date` and `l`.`to_date` = `d`.`to_date`))  ;

-- --------------------------------------------------------

--
-- Structure for view `dept_emp_latest_date`
--
DROP TABLE IF EXISTS `dept_emp_latest_date`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dept_emp_latest_date`  AS SELECT `dept_emp`.`emp_no` AS `emp_no`, max(`dept_emp`.`from_date`) AS `from_date`, max(`dept_emp`.`to_date`) AS `to_date` FROM `dept_emp` GROUP BY `dept_emp`.`emp_no``emp_no`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_no`),
  ADD UNIQUE KEY `dept_name` (`dept_name`);

--
-- Indexes for table `dept_emp`
--
ALTER TABLE `dept_emp`
  ADD PRIMARY KEY (`emp_no`,`dept_no`),
  ADD KEY `dept_no` (`dept_no`);

--
-- Indexes for table `dept_manager`
--
ALTER TABLE `dept_manager`
  ADD PRIMARY KEY (`emp_no`,`dept_no`),
  ADD KEY `dept_no` (`dept_no`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_no`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`emp_no`,`from_date`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`emp_no`,`title`,`from_date`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dept_emp`
--
ALTER TABLE `dept_emp`
  ADD CONSTRAINT `dept_emp_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `dept_emp_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE;

--
-- Constraints for table `dept_manager`
--
ALTER TABLE `dept_manager`
  ADD CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE;

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE;

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- Queries: 

-- UPDATING employee:
UPDATE employees SET first_name = 'Jaime', last_name = 'Garcia' WHERE employees.first_name = 'Danny' AND last_name = 'Jimenez' AND birth_date = '1957-01-24';

-- Changing departments names:
UPDATE departments SET dept_name = 'Development' WHERE dept_no = 1;
UPDATE departments SET dept_name = 'Operations' WHERE dept_no = 2;
UPDATE departments SET dept_name = 'Purchase' WHERE dept_no = 3;
UPDATE departments SET dept_name = 'Sales' WHERE dept_no = 4;

-- Selecting all employees with a salary greater than 20,000
SELECT employees.first_name, employees.last_name, salaries.salary FROM employees JOIN salaries ON salaries.emp_no = employees.emp_no WHERE salaries.salary > 20000;

-- Selecting all employees with a salary below 10,000
SELECT employees.first_name, employees.last_name, salaries.salary FROM employees JOIN salaries ON salaries.emp_no = employees.emp_no WHERE salaries.salary < 10000;

-- Selecting  all employees who have a salary between 14.00 and 50,000
SELECT employees.first_name, employees.last_name, salaries.salary FROM employees JOIN salaries ON salaries.emp_no = employees.emp_no WHERE salaries.salary BETWEEN 14000 AND 50000;

-- Selecting the total number of employees
SELECT COUNT(employees.emp_no) FROM employees;

-- Selecting the total number of employees who have worked in more than one department
SELECT emp_no FROM dept_emp GROUP BY dept_emp.emp_no HAVING COUNT(*) > 1; -- can't get to count all the rows at once

-- Selecting  the titles of the year 2020
SELECT title FROM titles WHERE YEAR(from_date) = '2020';

-- Selecting only the name of the employees in capital letters
SELECT * FROM employees WHERE first_name = UPPER(first_name);

-- Selecting the name, surname and name of the current department of each employee
SELECT first_name, last_name, dept_name FROM employees e JOIN dept_emp dp ON e.emp_no = dp.emp_no JOIN departments d ON dp.dept_no = d.dept_no;

-- Selecting the name, surname and number of times the employee has worked as a manager
SELECT first_name, last_name  FROM employees e JOIN dept_manager dm ON e.emp_no = dm.emp_no; -- there's no reference to how many times the emp worked as a manager

-- Selecting the name of employees without any being repeated
SELECT DISTINCT first_name FROM employees;


-- DELETING DATA 
-- Deleting all employees with a salary greater than 20,000
DELETE employees FROM employees JOIN salaries  ON employees.emp_no = salaries.emp_no WHERE salaries.salary > 20000;


-- Removing the department that has more employees
SELECT dept_name, COUNT(*) FROM departments JOIN dept_emp ON departments.dept_no = dept_emp.dept_no -- to be fixed