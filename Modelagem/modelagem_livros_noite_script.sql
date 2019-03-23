SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `dados191n` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `dados191n` ;

-- -----------------------------------------------------
-- Table `dados191n`.`Autores`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dados191n`.`Autores` (
  `autCodigo` INT NOT NULL AUTO_INCREMENT ,
  `autDtCadastro` TIMESTAMP NULL ,
  `autNome` VARCHAR(40) NULL ,
  `autApelido` VARCHAR(45) NULL ,
  `autSexo` CHAR(1) NULL ,
  `autTelefone` VARCHAR(15) NULL ,
  `autEmail` VARCHAR(40) NULL ,
  PRIMARY KEY (`autCodigo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados191n`.`Editoras`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dados191n`.`Editoras` (
  `edtCodigo` INT NOT NULL AUTO_INCREMENT ,
  `edtDtCadastro` TIMESTAMP NULL ,
  `edtNome` VARCHAR(40) NULL ,
  `edtCidade` VARCHAR(30) NULL ,
  `edtEstado` CHAR(2) NULL ,
  `edtEmail` VARCHAR(40) NULL ,
  `edtTelefone` VARCHAR(15) NULL ,
  PRIMARY KEY (`edtCodigo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados191n`.`Livro`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dados191n`.`Livro` (
  `livCodigo` INT NOT NULL AUTO_INCREMENT ,
  `livDtCadastro` TIMESTAMP NULL ,
  `livTituloLivro` VARCHAR(50) NULL ,
  `livEdicao` VARCHAR(10) NULL ,
  `livAno` DECIMAL(10,0) NULL ,
  `autCodigo` INT NOT NULL ,
  `edtCodigo` INT NOT NULL ,
  PRIMARY KEY (`livCodigo`) ,
  INDEX `fk_Livro_Autores` (`autCodigo` ASC) ,
  INDEX `fk_Livro_Editoras1` (`edtCodigo` ASC) ,
  CONSTRAINT `fk_Livro_Autores`
    FOREIGN KEY (`autCodigo` )
    REFERENCES `dados191n`.`Autores` (`autCodigo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Livro_Editoras1`
    FOREIGN KEY (`edtCodigo` )
    REFERENCES `dados191n`.`Editoras` (`edtCodigo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
