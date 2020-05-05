-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

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
-- Table `Medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Medico` (
  `CRM` INT NOT NULL,
  `Pessoa_CPF` INT NOT NULL,
  PRIMARY KEY (`Pessoa_CPF`),
  CONSTRAINT `fk_Medico_Pessoa`
    FOREIGN KEY (`Pessoa_CPF`)
    REFERENCES `Pessoa` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Engenheiro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Engenheiro` (
  `CREA` INT NOT NULL,
  `Pessoa_CPF` INT NOT NULL,
  PRIMARY KEY (`Pessoa_CPF`),
  CONSTRAINT `fk_Engenheiro_Pessoa1`
    FOREIGN KEY (`Pessoa_CPF`)
    REFERENCES `Pessoa` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
