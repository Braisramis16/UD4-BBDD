-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici 2.b
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici 2.b
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici 2.b` ;
USE `Exercici 2.b` ;

-- -----------------------------------------------------
-- Table `Exercici 2.b`.`Cine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.b`.`Cine` (
  `idCine` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Adreça` VARCHAR(45) NULL,
  `Telefon` VARCHAR(45) NULL,
  `Població` VARCHAR(45) NULL,
  `Num sales` VARCHAR(45) NULL,
  PRIMARY KEY (`idCine`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2.b`.`Pelicula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.b`.`Pelicula` (
  `idPelicula` INT NOT NULL,
  `Titol` VARCHAR(45) NULL,
  `Classificació` VARCHAR(45) NULL,
  `Genere` VARCHAR(45) NULL,
  `Director` VARCHAR(45) NULL,
  `Durada` VARCHAR(45) NULL,
  PRIMARY KEY (`idPelicula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2.b`.`Tarifa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.b`.`Tarifa` (
  `idTarifa` INT NOT NULL,
  `Cine` VARCHAR(45) NULL,
  `Tipus` VARCHAR(45) NULL,
  `Preu` VARCHAR(45) NULL,
  PRIMARY KEY (`idTarifa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2.b`.`Projeccio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.b`.`Projeccio` (
  `idProjecciones` INT NOT NULL,
  `Data` VARCHAR(45) NULL,
  `Hora` VARCHAR(45) NULL,
  `Cine_idCine` INT NOT NULL,
  `Pelicula_idPelicula` INT NOT NULL,
  `Tarifa_idTarifa` INT NOT NULL,
  PRIMARY KEY (`idProjecciones`),
  INDEX `fk_Projeccio_Cine_idx` (`Cine_idCine` ASC) VISIBLE,
  INDEX `fk_Projeccio_Pelicula1_idx` (`Pelicula_idPelicula` ASC) VISIBLE,
  INDEX `fk_Projeccio_Tarifa1_idx` (`Tarifa_idTarifa` ASC) VISIBLE,
  CONSTRAINT `fk_Projeccio_Cine`
    FOREIGN KEY (`Cine_idCine`)
    REFERENCES `Exercici 2.b`.`Cine` (`idCine`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Projeccio_Pelicula1`
    FOREIGN KEY (`Pelicula_idPelicula`)
    REFERENCES `Exercici 2.b`.`Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Projeccio_Tarifa1`
    FOREIGN KEY (`Tarifa_idTarifa`)
    REFERENCES `Exercici 2.b`.`Tarifa` (`idTarifa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
