-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici 2a
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici 2a
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici 2a` ;
USE `Exercici 2a` ;

-- -----------------------------------------------------
-- Table `Exercici 2a`.`Pacient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2a`.`Pacient` (
  `idPacient` INT NOT NULL,
  `DNI` VARCHAR(9) NULL,
  `Nom` VARCHAR(45) NULL,
  `Cognoms` VARCHAR(45) NULL,
  `telefon` VARCHAR(45) NULL,
  `adreça` VARCHAR(45) NULL,
  `Numero SS` VARCHAR(45) NULL,
  PRIMARY KEY (`idPacient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2a`.`Metge`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2a`.`Metge` (
  `idMetge` INT NOT NULL,
  `Num_Colegiat` VARCHAR(45) NULL,
  `Nom` VARCHAR(45) NULL,
  `Cognoms` VARCHAR(45) NULL,
  `especialitat` VARCHAR(45) NULL,
  `càrrec` VARCHAR(45) NULL,
  PRIMARY KEY (`idMetge`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2a`.`Consulta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2a`.`Consulta` (
  `idConsulta` INT NOT NULL,
  `Pacient` VARCHAR(45) NULL,
  `Metge` VARCHAR(45) NULL,
  `Data` VARCHAR(45) NULL,
  `llit` VARCHAR(45) NULL,
  `planta` VARCHAR(45) NULL,
  `diagnostic` VARCHAR(45) NULL,
  `Pacient_idPacient` INT NOT NULL,
  `Metge_idMetge` INT NOT NULL,
  PRIMARY KEY (`idConsulta`),
  INDEX `fk_Consulta_Pacient_idx` (`Pacient_idPacient` ASC) VISIBLE,
  INDEX `fk_Consulta_Metge1_idx` (`Metge_idMetge` ASC) VISIBLE,
  CONSTRAINT `fk_Consulta_Pacient`
    FOREIGN KEY (`Pacient_idPacient`)
    REFERENCES `Exercici 2a`.`Pacient` (`idPacient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consulta_Metge1`
    FOREIGN KEY (`Metge_idMetge`)
    REFERENCES `Exercici 2a`.`Metge` (`idMetge`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
