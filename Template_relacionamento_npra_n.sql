-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `Computador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Computador` (
  `Cod` INT NOT NULL,
  `Modelo` VARCHAR(20) NOT NULL,
  `Marca` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`Cod`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pessoa` (
  `CPF` INT NOT NULL,
  `Nome` VARCHAR(50) NOT NULL,
  `Sexo` CHAR(1) NOT NULL,
  PRIMARY KEY (`CPF`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pessoa_Computador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pessoa_Computador` (
  `Pessoa_CPF` INT NOT NULL,
  `Computador_Cod` INT NOT NULL,
  PRIMARY KEY (`Pessoa_CPF`, `Computador_Cod`),
  INDEX `fk_Pessoa_has_Computador_Computador1_idx` (`Computador_Cod` ASC) VISIBLE,
  INDEX `fk_Pessoa_has_Computador_Pessoa_idx` (`Pessoa_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_Pessoa_has_Computador_Pessoa`
    FOREIGN KEY (`Pessoa_CPF`)
    REFERENCES `Pessoa` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pessoa_has_Computador_Computador1`
    FOREIGN KEY (`Computador_Cod`)
    REFERENCES `Computador` (`Cod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
