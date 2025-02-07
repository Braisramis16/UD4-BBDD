-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici 2c
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici 2c
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici 2c` ;
USE `Exercici 2c` ;

-- -----------------------------------------------------
-- Table `Exercici 2c`.`Alumnat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2c`.`Alumnat` (
  `idAlumnat` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Cognoms` VARCHAR(45) NULL,
  `Alumnatcol` VARCHAR(45) NULL,
  `DNI` VARCHAR(9) NULL,
  `email` VARCHAR(45) NULL,
  `telefon` VARCHAR(9) NULL,
  `adreça` VARCHAR(45) NULL,
  PRIMARY KEY (`idAlumnat`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2c`.`Matricula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2c`.`Matricula` (
  `idMatricula` INT NOT NULL,
  `data` VARCHAR(45) NULL,
  `Alumnat_idAlumnat` INT NOT NULL,
  `alumnne` VARCHAR(45) NULL,
  `assigntura` VARCHAR(45) NULL,
  PRIMARY KEY (`idMatricula`),
  INDEX `fk_Matricula_Alumnat_idx` (`Alumnat_idAlumnat` ASC) VISIBLE,
  CONSTRAINT `fk_Matricula_Alumnat`
    FOREIGN KEY (`Alumnat_idAlumnat`)
    REFERENCES `Exercici 2c`.`Alumnat` (`idAlumnat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2c`.`Assignatura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2c`.`Assignatura` (
  `idAssignatura` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `credits` VARCHAR(45) NULL,
  `departament` VARCHAR(45) NULL,
  `professor` VARCHAR(45) NULL,
  PRIMARY KEY (`idAssignatura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2c`.`Departament`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2c`.`Departament` (
  `idDepartament` INT NOT NULL,
  `nom` VARCHAR(45) NULL,
  PRIMARY KEY (`idDepartament`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2c`.`Professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2c`.`Professor` (
  `idProfessor` INT NOT NULL,
  `Departament_idDepartament` INT NOT NULL,
  `DNI` VARCHAR(45) NULL,
  `NOM` VARCHAR(45) NULL,
  `Cognoms` VARCHAR(45) NULL,
  `titulació` VARCHAR(45) NULL,
  `departament` VARCHAR(45) NULL,
  `EsCapDeDepartament` VARCHAR(45) NULL,
  PRIMARY KEY (`idProfessor`),
  INDEX `fk_Professor_Departament1_idx` (`Departament_idDepartament` ASC) VISIBLE,
  CONSTRAINT `fk_Professor_Departament1`
    FOREIGN KEY (`Departament_idDepartament`)
    REFERENCES `Exercici 2c`.`Departament` (`idDepartament`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2c`.`Linea matricula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2c`.`Linea matricula` (
  `idLinea matricula` INT NOT NULL,
  `Numhores` VARCHAR(45) NULL,
  `Matricula_idMatricula` INT NOT NULL,
  `Assignatura_idAssignatura` INT NOT NULL,
  `Professor_idProfessor` INT NOT NULL,
  PRIMARY KEY (`idLinea matricula`),
  INDEX `fk_Linea matricula_Matricula1_idx` (`Matricula_idMatricula` ASC) VISIBLE,
  INDEX `fk_Linea matricula_Assignatura1_idx` (`Assignatura_idAssignatura` ASC) VISIBLE,
  INDEX `fk_Linea matricula_Professor1_idx` (`Professor_idProfessor` ASC) VISIBLE,
  CONSTRAINT `fk_Linea matricula_Matricula1`
    FOREIGN KEY (`Matricula_idMatricula`)
    REFERENCES `Exercici 2c`.`Matricula` (`idMatricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Linea matricula_Assignatura1`
    FOREIGN KEY (`Assignatura_idAssignatura`)
    REFERENCES `Exercici 2c`.`Assignatura` (`idAssignatura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Linea matricula_Professor1`
    FOREIGN KEY (`Professor_idProfessor`)
    REFERENCES `Exercici 2c`.`Professor` (`idProfessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
