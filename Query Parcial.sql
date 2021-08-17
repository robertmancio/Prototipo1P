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

-- -----------------------------------------------------
-- Schema sic
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `sic`.`proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sic`.`proveedores` (
  `codigo_proveedor` VARCHAR(5) NOT NULL,
  `nombre_proveedor` VARCHAR(60) NULL DEFAULT NULL,
  `direccion_proveedor` VARCHAR(60) NULL DEFAULT NULL,
  `telefono_proveedor` VARCHAR(50) NULL DEFAULT NULL,
  `nit_proveedor` VARCHAR(50) NULL DEFAULT NULL,
  `estatus_proveedor` VARCHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo_proveedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `sic`.`compras_encabezado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sic`.`compras_encabezado` (
  `documento_compraenca` VARCHAR(10) NOT NULL,
  `codigo_proveedor` VARCHAR(5) NULL DEFAULT NULL,
  `fecha_compraenca` DATE NULL DEFAULT NULL,
  `total_compraenca` FLOAT(10,2) NULL DEFAULT NULL,
  `estatus_compraenca` VARCHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`documento_compraenca`),
  INDEX `codigo_proveedor` (`codigo_proveedor` ASC) VISIBLE,
  CONSTRAINT `compras_encabezado_ibfk_1`
    FOREIGN KEY (`codigo_proveedor`)
    REFERENCES `sic`.`proveedores` (`codigo_proveedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `sic`.`lineas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sic`.`lineas` (
  `codigo_linea` VARCHAR(5) NOT NULL,
  `nombre_linea` VARCHAR(60) NULL DEFAULT NULL,
  `estatus_linea` VARCHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo_linea`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `sic`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sic`.`marcas` (
  `codigo_marca` VARCHAR(5) NOT NULL,
  `nombre_marca` VARCHAR(60) NULL DEFAULT NULL,
  `estatus_marca` VARCHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo_marca`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `sic`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sic`.`productos` (
  `codigo_producto` VARCHAR(18) NOT NULL,
  `nombre_producto` VARCHAR(60) NULL DEFAULT NULL,
  `codigo_linea` VARCHAR(5) NULL DEFAULT NULL,
  `codigo_marca` VARCHAR(5) NULL DEFAULT NULL,
  `existencia_producto` FLOAT(10,2) NULL DEFAULT NULL,
  `estatus_producto` VARCHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo_producto`),
  INDEX `codigo_linea` (`codigo_linea` ASC) VISIBLE,
  INDEX `codigo_marca` (`codigo_marca` ASC) VISIBLE,
  CONSTRAINT `productos_ibfk_1`
    FOREIGN KEY (`codigo_linea`)
    REFERENCES `sic`.`lineas` (`codigo_linea`),
  CONSTRAINT `productos_ibfk_2`
    FOREIGN KEY (`codigo_marca`)
    REFERENCES `sic`.`marcas` (`codigo_marca`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `sic`.`bodegas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sic`.`bodegas` (
  `codigo_bodega` VARCHAR(5) NOT NULL,
  `nombre_bodega` VARCHAR(60) NULL DEFAULT NULL,
  `estatus_bodega` VARCHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo_bodega`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `sic`.`compras_detalle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sic`.`compras_detalle` (
  `documento_compraenca` VARCHAR(10) NOT NULL,
  `codigo_producto` VARCHAR(18) NOT NULL,
  `cantidad_compradet` FLOAT(10,2) NULL DEFAULT NULL,
  `costo_compradet` FLOAT(10,2) NULL DEFAULT NULL,
  `codigo_bodega` VARCHAR(5) NULL DEFAULT NULL,
  PRIMARY KEY (`documento_compraenca`, `codigo_producto`),
  INDEX `codigo_producto` (`codigo_producto` ASC) VISIBLE,
  INDEX `codigo_bodega` (`codigo_bodega` ASC) VISIBLE,
  CONSTRAINT `compras_detalle_ibfk_1`
    FOREIGN KEY (`documento_compraenca`)
    REFERENCES `sic`.`compras_encabezado` (`documento_compraenca`),
  CONSTRAINT `compras_detalle_ibfk_2`
    FOREIGN KEY (`codigo_producto`)
    REFERENCES `sic`.`productos` (`codigo_producto`),
  CONSTRAINT `compras_detalle_ibfk_3`
    FOREIGN KEY (`codigo_bodega`)
    REFERENCES `sic`.`bodegas` (`codigo_bodega`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `sic`.`vendedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sic`.`vendedores` (
  `codigo_vendedor` VARCHAR(5) NOT NULL,
  `nombre_vendedor` VARCHAR(60) NULL DEFAULT NULL,
  `direccion_vendedor` VARCHAR(60) NULL DEFAULT NULL,
  `telefono_vendedor` VARCHAR(50) NULL DEFAULT NULL,
  `nit_vendedor` VARCHAR(20) NULL DEFAULT NULL,
  `estatus_vendedor` VARCHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo_vendedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `sic`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sic`.`clientes` (
  `codigo_cliente` VARCHAR(5) NOT NULL,
  `nombre_cliente` VARCHAR(60) NULL DEFAULT NULL,
  `direccion_cliente` VARCHAR(60) NULL DEFAULT NULL,
  `nit_cliente` VARCHAR(20) NULL DEFAULT NULL,
  `telefono_cliente` VARCHAR(50) NULL DEFAULT NULL,
  `codigo_vendedor` VARCHAR(5) NULL DEFAULT NULL,
  `estatus_cliente` VARCHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo_cliente`),
  INDEX `codigo_vendedor` (`codigo_vendedor` ASC) VISIBLE,
  CONSTRAINT `clientes_ibfk_1`
    FOREIGN KEY (`codigo_vendedor`)
    REFERENCES `sic`.`vendedores` (`codigo_vendedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `sic`.`ventas_encabezado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sic`.`ventas_encabezado` (
  `documento_ventaenca` VARCHAR(10) NOT NULL,
  `codigo_cliente` VARCHAR(5) NULL DEFAULT NULL,
  `fecha_ventaenca` DATE NULL DEFAULT NULL,
  `total_ventaenca` FLOAT(10,2) NULL DEFAULT NULL,
  `estatus_ventaenca` VARCHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`documento_ventaenca`),
  INDEX `codigo_cliente` (`codigo_cliente` ASC) VISIBLE,
  CONSTRAINT `ventas_encabezado_ibfk_1`
    FOREIGN KEY (`codigo_cliente`)
    REFERENCES `sic`.`clientes` (`codigo_cliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `sic`.`ventas_detalle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sic`.`ventas_detalle` (
  `documento_ventaenca` VARCHAR(10) NOT NULL,
  `codigo_producto` VARCHAR(18) NOT NULL,
  `cantidad_ventadet` FLOAT(10,2) NULL DEFAULT NULL,
  `costo_ventadet` FLOAT(10,2) NULL DEFAULT NULL,
  `precio_ventadet` FLOAT(10,2) NULL DEFAULT NULL,
  `codigo_bodega` VARCHAR(5) NULL DEFAULT NULL,
  PRIMARY KEY (`documento_ventaenca`, `codigo_producto`),
  INDEX `codigo_producto` (`codigo_producto` ASC) VISIBLE,
  INDEX `codigo_bodega` (`codigo_bodega` ASC) VISIBLE,
  CONSTRAINT `ventas_detalle_ibfk_1`
    FOREIGN KEY (`documento_ventaenca`)
    REFERENCES `sic`.`ventas_encabezado` (`documento_ventaenca`),
  CONSTRAINT `ventas_detalle_ibfk_2`
    FOREIGN KEY (`codigo_producto`)
    REFERENCES `sic`.`productos` (`codigo_producto`),
  CONSTRAINT `ventas_detalle_ibfk_3`
    FOREIGN KEY (`codigo_bodega`)
    REFERENCES `sic`.`bodegas` (`codigo_bodega`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `mydb`.`cuentas_corrientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sic`.`cuentas_corrientes` (
  `idcuentas_corrientes` INT NOT NULL,
  `compras_detalle_documento_compraenca` VARCHAR(10) NOT NULL,
  `compras_detalle_codigo_producto` VARCHAR(18) NOT NULL,
  `ventas_detalle_documento_ventaenca` VARCHAR(10) NOT NULL,
  `ventas_detalle_codigo_producto` VARCHAR(18) NOT NULL,
  PRIMARY KEY (`idcuentas_corrientes`),
  INDEX `fk_cuentas_corrientes_compras_detalle_idx` (`compras_detalle_documento_compraenca` ASC, `compras_detalle_codigo_producto` ASC) VISIBLE,
  INDEX `fk_cuentas_corrientes_ventas_detalle1_idx` (`ventas_detalle_documento_ventaenca` ASC, `ventas_detalle_codigo_producto` ASC) VISIBLE,
  CONSTRAINT `fk_cuentas_corrientes_compras_detalle`
    FOREIGN KEY (`compras_detalle_documento_compraenca` , `compras_detalle_codigo_producto`)
    REFERENCES `sic`.`compras_detalle` (`documento_compraenca` , `codigo_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuentas_corrientes_ventas_detalle1`
    FOREIGN KEY (`ventas_detalle_documento_ventaenca` , `ventas_detalle_codigo_producto`)
    REFERENCES `sic`.`ventas_detalle` (`documento_ventaenca` , `codigo_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `sic` ;

-- -----------------------------------------------------
-- Table `sic`.`existencias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sic`.`existencias` (
  `codigo_bodega` VARCHAR(5) NOT NULL,
  `codigo_producto` VARCHAR(18) NOT NULL,
  `saldo_existencia` FLOAT(10,2) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo_bodega`, `codigo_producto`),
  INDEX `codigo_producto` (`codigo_producto` ASC) VISIBLE,
  CONSTRAINT `existencias_ibfk_1`
    FOREIGN KEY (`codigo_bodega`)
    REFERENCES `sic`.`bodegas` (`codigo_bodega`),
  CONSTRAINT `existencias_ibfk_2`
    FOREIGN KEY (`codigo_producto`)
    REFERENCES `sic`.`productos` (`codigo_producto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
