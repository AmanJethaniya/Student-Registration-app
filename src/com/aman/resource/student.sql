-- Dumping database structure for amandemos
DROP DATABASE IF EXISTS amandemos;
CREATE DATABASE amandemos;
USE amandemos;

-- Dumping structure for table amandemos.student if already present
DROP TABLE IF EXISTS customer;
CREATE TABLE IF NOT EXISTS student
(
	rollNum INT(10) NOT NULL,
	FirstName varchar(20) DEFAULT NULL,
	LastName varchar(20) DEFAULT NULL,
	Percentage double DEFAULT NULL,
	Primary Key(rollNum)
);
