-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema inmuebles
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema inmuebles
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `inmuebles` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `inmuebles` ;

-- -----------------------------------------------------
-- Table `inmuebles`.`direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inmuebles`.`direccion` (
  `id_direccion` INT NOT NULL AUTO_INCREMENT,
  `calle` VARCHAR(50) NOT NULL,
  `numero` INT NOT NULL,
  `pais` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_direccion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `inmuebles`.`oficina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inmuebles`.`oficina` (
  `id_oficina` INT NOT NULL AUTO_INCREMENT,
  `telefono_oficina` INT NOT NULL,
  `fax_oficina` INT NOT NULL,
  `direccion_id_direccion` INT NOT NULL,
  PRIMARY KEY (`id_oficina`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `inmuebles`.`inmueble`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inmuebles`.`inmueble` (
  `id_inmueble` INT NOT NULL AUTO_INCREMENT,
  `tipo_inmueble` VARCHAR(50) NOT NULL,
  `num_habitaciones_inmueble` INT NOT NULL,
  `precio_alquiler_inmueble` INT NOT NULL,
  `oficina_id_oficina` INT NOT NULL,
  `direccion_id_direccion` INT NOT NULL,
  PRIMARY KEY (`id_inmueble`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `inmuebles`.`accionistas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inmuebles`.`accionistas` (
  `id_accionista` INT NOT NULL AUTO_INCREMENT,
  `inmueble_id_inmueble` INT NOT NULL,
  PRIMARY KEY (`id_accionista`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `inmuebles`.`plantilla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inmuebles`.`plantilla` (
  `id_plantilla` INT NOT NULL AUTO_INCREMENT,
  `nombre_platilla` VARCHAR(50) NOT NULL,
  `direccion_plantilla` VARCHAR(50) NOT NULL,
  `telefono_plantilla` INT NOT NULL,
  `fecha_nacimiento_plantilla` DATE NOT NULL,
  `dni_plantilla` VARCHAR(15) NOT NULL,
  `cargo_plantilla` VARCHAR(50) NOT NULL,
  `salario_plantilla` DOUBLE NOT NULL,
  `fecha_ingreso_plantilla` DATE NOT NULL,
  `oficina_id_oficina` INT NOT NULL,
  PRIMARY KEY (`id_plantilla`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `inmuebles`.`admintrativo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inmuebles`.`admintrativo` (
  `id_administrativo` INT NOT NULL AUTO_INCREMENT,
  `velocidad_escribir_administrador` INT NOT NULL,
  `plantilla_id_plantilla` INT NOT NULL,
  PRIMARY KEY (`id_administrativo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `inmuebles`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inmuebles`.`cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nombre_cliente` VARCHAR(50) NOT NULL,
  `direccion_cliente` VARCHAR(100) NOT NULL,
  `telefono_cliente` INT NOT NULL,
  `tipo_inmueble_cliente` VARCHAR(50) NOT NULL,
  `cantidad_dispuesta_pagar` INT NOT NULL,
  `oficina_id_oficina` INT NOT NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `inmuebles`.`empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inmuebles`.`empleado` (
  `id_empleado` INT NOT NULL AUTO_INCREMENT,
  `nombre_empleado` VARCHAR(100) NOT NULL,
  `relacion_empleado` VARCHAR(100) NOT NULL,
  `direccion_empleado` DATE NOT NULL,
  `telefono_empleado` INT NOT NULL,
  `plantilla_id_plantilla` INT NOT NULL,
  PRIMARY KEY (`id_empleado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `inmuebles`.`empresas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inmuebles`.`empresas` (
  `id_empresa` INT NOT NULL AUTO_INCREMENT,
  `nombre_comercial_empresa` VARCHAR(50) NOT NULL,
  `tipo_empresa` VARCHAR(50) NOT NULL,
  `direccion_empresa` VARCHAR(50) NOT NULL,
  `telefono_empresa` INT NOT NULL,
  `nom_persona_contacto` VARCHAR(50) NOT NULL,
  `accionistas_id_accionista` INT NOT NULL,
  PRIMARY KEY (`id_empresa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `inmuebles`.`particulares`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inmuebles`.`particulares` (
  `id_particulares` INT NOT NULL AUTO_INCREMENT,
  `nombre_particular` VARCHAR(50) NOT NULL,
  `direccion_particular` VARCHAR(50) NOT NULL,
  `telefono_particular` INT NOT NULL,
  `accionistas_id_accionista` INT NOT NULL,
  PRIMARY KEY (`id_particulares`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
