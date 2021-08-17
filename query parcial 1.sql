-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema sic
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Clientes` (
  `codigo_cliente` INT NOT NULL,
  `nombre_cliente` VARCHAR(60) NULL,
  `direccion_cliente` VARCHAR(60) NULL,
  `nit_cliente` VARCHAR(60) NULL,
  `telefono_cliente` VARCHAR(60) NULL,
  PRIMARY KEY (`codigo_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Proveedores` (
  `codigo_proveedor` INT NOT NULL,
  `nombre_proveedor` VARCHAR(60) NULL,
  `direccion_proveedor` VARCHAR(60) NULL,
  `telefono_proveedor` VARCHAR(60) NULL,
  `nit_proveedor` VARCHAR(60) NULL,
  `estatus_proveedor` VARCHAR(60) NULL,
  PRIMARY KEY (`codigo_proveedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cuenta Corriente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cuenta Corriente` (
  `idCuenta Corriente` INT NOT NULL,
  `cuentas_por_cobrar` VARCHAR(60) NULL,
  `recibo_de_pago` VARCHAR(60) NULL,
  `cuentas_por_pagar` VARCHAR(60) NULL,
  `Cuenta Corrientecol` VARCHAR(60) NULL,
  `Proveedores_codigo_proveedor` INT NOT NULL,
  `Clientes_codigo_cliente` INT NOT NULL,
  PRIMARY KEY (`idCuenta Corriente`),
  INDEX `fk_Cuenta Corriente_Proveedores_idx` (`Proveedores_codigo_proveedor` ASC) VISIBLE,
  INDEX `fk_Cuenta Corriente_Clientes1_idx` (`Clientes_codigo_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_Cuenta Corriente_Proveedores`
    FOREIGN KEY (`Proveedores_codigo_proveedor`)
    REFERENCES `mydb`.`Proveedores` (`codigo_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cuenta Corriente_Clientes1`
    FOREIGN KEY (`Clientes_codigo_cliente`)
    REFERENCES `mydb`.`Clientes` (`codigo_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
