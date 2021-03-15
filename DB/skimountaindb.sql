-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema skimountaindb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `skimountaindb` ;

-- -----------------------------------------------------
-- Schema skimountaindb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `skimountaindb` DEFAULT CHARACTER SET utf8 ;
USE `skimountaindb` ;

-- -----------------------------------------------------
-- Table `mountain`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mountain` ;

CREATE TABLE IF NOT EXISTS `mountain` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `mountain_name` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `vertical` INT NULL,
  `top_elevation` INT NULL,
  `base_elevation` INT NULL,
  `skiable_area` INT NULL,
  `lifts` TINYINT(3) NULL,
  `runs` SMALLINT(4) NULL,
  `avg_snow_fall` SMALLINT(4) NULL,
  `mountain_range` VARCHAR(60) NULL,
  `start_year` YEAR(4) NULL,
  `night_skiing` TINYINT(1) NULL,
  `most_represented_difficulty` ENUM('Expert', 'Advanced', 'Intermediate', 'Beginner') NULL,
  `have_shredded` TINYINT(1) NULL,
  `personal_log` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS skieruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'skieruser'@'localhost' IDENTIFIED BY 'skieruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'skieruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mountain`
-- -----------------------------------------------------
START TRANSACTION;
USE `skimountaindb`;
INSERT INTO `mountain` (`id`, `mountain_name`, `state`, `vertical`, `top_elevation`, `base_elevation`, `skiable_area`, `lifts`, `runs`, `avg_snow_fall`, `mountain_range`, `start_year`, `night_skiing`, `most_represented_difficulty`, `have_shredded`, `personal_log`) VALUES (1, 'Sugarloaf', 'Maine', 2820, 4237, 1417, 1240, 14, 160, 200, 'Rangely-Stratton', 1950, 0, 'Intermediate', 1, NULL);
INSERT INTO `mountain` (`id`, `mountain_name`, `state`, `vertical`, `top_elevation`, `base_elevation`, `skiable_area`, `lifts`, `runs`, `avg_snow_fall`, `mountain_range`, `start_year`, `night_skiing`, `most_represented_difficulty`, `have_shredded`, `personal_log`) VALUES (2, 'Shawnee Peak', 'Maine', 1300, NULL, NULL, NULL, 4, 44, NULL, NULL, 1938, 1, 'Intermediate', 1, NULL);
INSERT INTO `mountain` (`id`, `mountain_name`, `state`, `vertical`, `top_elevation`, `base_elevation`, `skiable_area`, `lifts`, `runs`, `avg_snow_fall`, `mountain_range`, `start_year`, `night_skiing`, `most_represented_difficulty`, `have_shredded`, `personal_log`) VALUES (3, 'Sunday River', 'Maine', 2340, 3140, 800, 870, 14, 135, 155, 'Mahoosuc', 1959, 1, 'Intermediate', 1, NULL);
INSERT INTO `mountain` (`id`, `mountain_name`, `state`, `vertical`, `top_elevation`, `base_elevation`, `skiable_area`, `lifts`, `runs`, `avg_snow_fall`, `mountain_range`, `start_year`, `night_skiing`, `most_represented_difficulty`, `have_shredded`, `personal_log`) VALUES (4, 'Jay Peak', 'Vermont', 2153, 3858, 1843, 385, 6, 76, 355, 'Green Mountains', 1950, 0, 'Intermediate', 1, NULL);
INSERT INTO `mountain` (`id`, `mountain_name`, `state`, `vertical`, `top_elevation`, `base_elevation`, `skiable_area`, `lifts`, `runs`, `avg_snow_fall`, `mountain_range`, `start_year`, `night_skiing`, `most_represented_difficulty`, `have_shredded`, `personal_log`) VALUES (5, 'Killington', 'Vermont', 3050, 4229, 1165, 1509, 15, 155, 250, 'Green Mountains', 1958, 0, 'Advanced', 1, NULL);
INSERT INTO `mountain` (`id`, `mountain_name`, `state`, `vertical`, `top_elevation`, `base_elevation`, `skiable_area`, `lifts`, `runs`, `avg_snow_fall`, `mountain_range`, `start_year`, `night_skiing`, `most_represented_difficulty`, `have_shredded`, `personal_log`) VALUES (6, 'Arapahoe Basin', 'Colorado', 2530, 13050, 10780, 1428, 6, 145, 350, 'Rocky Mountains', 1946, 0, 'Advanced', 1, NULL);
INSERT INTO `mountain` (`id`, `mountain_name`, `state`, `vertical`, `top_elevation`, `base_elevation`, `skiable_area`, `lifts`, `runs`, `avg_snow_fall`, `mountain_range`, `start_year`, `night_skiing`, `most_represented_difficulty`, `have_shredded`, `personal_log`) VALUES (7, 'Steamboat', 'Colorado', 3668, 10568, 6900, 2965, 17, 165, 400, 'Rocky Mountains', 1963, 0, 'Advanced', 1, NULL);
INSERT INTO `mountain` (`id`, `mountain_name`, `state`, `vertical`, `top_elevation`, `base_elevation`, `skiable_area`, `lifts`, `runs`, `avg_snow_fall`, `mountain_range`, `start_year`, `night_skiing`, `most_represented_difficulty`, `have_shredded`, `personal_log`) VALUES (8, 'Poweder Mountain', 'Utah', 2522, 9422, 6900, 8464, 6, 154, 350, 'Rocky Mountains', 1971, 1, 'Intermediate', 1, NULL);
INSERT INTO `mountain` (`id`, `mountain_name`, `state`, `vertical`, `top_elevation`, `base_elevation`, `skiable_area`, `lifts`, `runs`, `avg_snow_fall`, `mountain_range`, `start_year`, `night_skiing`, `most_represented_difficulty`, `have_shredded`, `personal_log`) VALUES (9, 'Alta', 'Utah', 2538, 11068, 8530, 2614, 6, 116, 545, 'Rocky Mountains', 1939, 0, 'Advanced', 1, NULL);

COMMIT;

