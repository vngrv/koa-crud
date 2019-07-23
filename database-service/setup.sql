-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password'

-- CREATE DATABASE "books" ---------------------------------
CREATE DATABASE IF NOT EXISTS `books` CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `books`;
-- ---------------------------------------------------------


-- CREATE TABLE "book" -------------------------------------
-- DROP TABLE "book" -------------------------------------------
DROP TABLE IF EXISTS `book` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "book" -----------------------------------------
CREATE TABLE `book` (
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'заглавие',
	`author` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'автор',
	`description` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'описание',
	`image` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'изображение',
	`date` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'датасоздания',
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "book" -------------------------------------
LOCK TABLES `book` WRITE;

/*!40000 ALTER TABLE `book` DISABLE KEYS */

BEGIN;

REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '1', 'тест', 'тест', 'тест', 'тест', 'тест' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '2', 'test1', 'test1', 'test1', 'test1', '2019-07-22 23:03:53.905' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '3', 'test', 'test', 'test', 'test', '2019-07-22 23:04:11.912' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '4', 'test', 'test', 'test', 'test', '2019-07-22 23:05:51.297' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '5', 'test1', 'test1', 'test1', 'test13234', '2019-07-22 23:06:03.010' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '6', 'fgerg', 'grg', 'grg', 'gr', '2019-07-22 23:06:04.663' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '7', 'test', 'test', 'test', 'test', '2019-07-22 23:06:10.750' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '8', 'test', 'test', 'test', 'test', '2019-07-22 23:06:11.313' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '9', 'test', 'test', 'test', 'test', '2019-07-22 23:06:11.776' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '10', 'test', 'test', 'test', 'test', '2019-07-22 23:06:12.448' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '11', 'test', 'test', 'test', 'test', '2019-07-22 23:14:20.851' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '12', 'test', 'test', 'test', 'test', '2019-07-23 00:18:10.440' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '13', 'teуцкцукцук', 'tцукцукt', 'test', 'tцукук', '2019-07-23 00:18:40.637' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '14', 'teуцкцукцук', 'tцукцукt', 'test', 'tцукук', '2019-07-23 00:21:11.471' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '15', 'teуцкцукцук', 'tцукцукt', 'test', 'tцукук', '2019-07-23 00:24:10.702' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '16', 'teуцкцукцук', 'tцукцукt', 'test', 'tцукук', '2019-07-23 00:30:15.664' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '17', 'teуцкцукцук', 'tцукцукt', 'test', 'tцукук', '2019-07-23 00:32:26.977' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '18', 'teуцкцукцук', 'tцукцукt', 'test', 'tцукук', '2019-07-23 00:32:47.629' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '19', 'teуцкцукцук', 'tцукцукt', 'test', 'tцукук', '2019-07-23 00:34:28.810' );
REPLACE INTO `book`(`id`,`title`,`author`,`description`,`image`,`date`) VALUES ( '20', 'teуцкцукцук', 'tцукцукt', 'test', 'tцукук', '2019-07-23 00:34:43.279' );
COMMIT;
/*!40000 ALTER TABLE `book` ENABLE KEYS */

UNLOCK TABLES;

-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------
