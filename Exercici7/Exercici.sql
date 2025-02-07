-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici7
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici7
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici7` ;
USE `Exercici7` ;

-- -----------------------------------------------------
-- Table `Exercici7`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici7`.`Client` (
  `idClient` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Cognoms` VARCHAR(45) NULL,
  `DNI` VARCHAR(45) NULL,
  `Adresa` VARCHAR(45) NULL,
  `Telefon` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`idClient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici7`.`Empleat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici7`.`Empleat` (
  `idEmpleat` INT NOT NULL,
  `Nom` VARCHAR(50) NULL,
  `Cognoms` VARCHAR(45) NULL,
  `Adresa` VARCHAR(45) NULL,
  `Dnaixement` VARCHAR(45) NULL,
  `Telefon` VARCHAR(45) NULL,
  `DNI` VARCHAR(45) NULL,
  PRIMARY KEY (`idEmpleat`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici7`.`Tickets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici7`.`Tickets` (
  `id` INT NOT NULL,
  `NumFac` VARCHAR(45) NULL,
  `Data` VARCHAR(45) NULL,
  `HoraVenta` VARCHAR(45) NULL,
  `Client_idClient` INT NOT NULL,
  `Empleat_idEmpleat` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Tickets_Client_idx` (`Client_idClient` ASC) VISIBLE,
  INDEX `fk_Tickets_Empleat1_idx` (`Empleat_idEmpleat` ASC) VISIBLE,
  CONSTRAINT `fk_Tickets_Client`
    FOREIGN KEY (`Client_idClient`)
    REFERENCES `Exercici7`.`Client` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tickets_Empleat1`
    FOREIGN KEY (`Empleat_idEmpleat`)
    REFERENCES `Exercici7`.`Empleat` (`idEmpleat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici7`.`Producte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici7`.`Producte` (
  `idProducte` INT NOT NULL,
  `Nom` VARCHAR(50) NULL,
  `Descripcio` VARCHAR(2000) NULL,
  `Unitat` VARCHAR(45) NULL,
  `Preu` INT NULL,
  `IVA` INT NULL,
  `CodiBarres` VARCHAR(45) NULL,
  PRIMARY KEY (`idProducte`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici7`.`LiniaTicket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici7`.`LiniaTicket` (
  `idLiniaTicket` INT NOT NULL,
  `Descompte` INT NULL,
  `Import` INT NULL,
  `Tickets_idTickets` INT NOT NULL,
  `Producte_idProducte` INT NOT NULL,
  PRIMARY KEY (`idLiniaTicket`),
  INDEX `fk_LiniaTicket_Tickets1_idx` (`Tickets_idTickets` ASC) VISIBLE,
  INDEX `fk_LiniaTicket_Producte1_idx` (`Producte_idProducte` ASC) VISIBLE,
  CONSTRAINT `fk_LiniaTicket_Tickets1`
    FOREIGN KEY (`Tickets_idTickets`)
    REFERENCES `Exercici7`.`Tickets` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_LiniaTicket_Producte1`
    FOREIGN KEY (`Producte_idProducte`)
    REFERENCES `Exercici7`.`Producte` (`idProducte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
