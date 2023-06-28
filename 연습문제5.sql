-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ERModel
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ERModel
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ERModel` DEFAULT CHARACTER SET utf8 ;
USE `ERModel` ;

-- -----------------------------------------------------
-- Table `ERModel`.`Department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERModel`.`Department` (
  `depNo` INT NOT NULL,
  `depName` VARCHAR(20) NOT NULL,
  `depTel` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`depNo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERModel`.`Member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERModel`.`Member` (
  `uid` VARCHAR(20) NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  `hp` CHAR(13) NOT NULL,
  `pos` VARCHAR(20) NULL,
  `dep` TINYINT NOT NULL,
  `rdate` DATETIME NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE INDEX `hp_UNIQUE` (`hp` ASC) VISIBLE,
  INDEX `fk_Member_Department_idx` (`dep` ASC) VISIBLE,
  CONSTRAINT `fk_Member_Department`
    FOREIGN KEY (`dep`)
    REFERENCES `ERModel`.`Department` (`depNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERModel`.`sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERModel`.`sales` (
  `uid` VARCHAR(20) NOT NULL,
  `year` YEAR NOT NULL,
  `month` TINYINT NOT NULL,
  `price` INT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  INDEX `fk_sales_Member1_idx` (`uid` ASC) VISIBLE,
  CONSTRAINT `fk_sales_Member1`
    FOREIGN KEY (`uid`)
    REFERENCES `ERModel`.`Member` (`uid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
