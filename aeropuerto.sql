-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- 생성 시간: 25-11-21 03:35
-- 서버 버전: 10.4.32-MariaDB
-- PHP 버전: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `aeropuerto`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `admin`
--

INSERT INTO `admin` (`idAdmin`) VALUES
(7);

-- --------------------------------------------------------

--
-- 테이블 구조 `avion`
--

CREATE TABLE `avion` (
  `idAvion` int(11) NOT NULL,
  `codigo` varchar(45) NOT NULL,
  `idBase` int(11) NOT NULL,
  `idModelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `avion`
--

INSERT INTO `avion` (`idAvion`, `codigo`, `idBase`, `idModelo`) VALUES
(1, '1234', 2, 1),
(2, '2345', 2, 6);

-- --------------------------------------------------------

--
-- 테이블 구조 `base`
--

CREATE TABLE `base` (
  `idBase` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `base`
--

INSERT INTO `base` (`idBase`, `nombre`) VALUES
(1, 'Base1'),
(2, 'Base2');

-- --------------------------------------------------------

--
-- 테이블 구조 `ciudad`
--

CREATE TABLE `ciudad` (
  `idCiudad` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `idPais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `ciudad`
--

INSERT INTO `ciudad` (`idCiudad`, `nombre`, `idPais`) VALUES
(6, 'Bogota', 1),
(7, 'Medellin', 1),
(8, 'Cali', 1),
(9, 'Santa marta', 1),
(10, 'Buenos Aires', 5),
(11, 'Córdoba', 5),
(12, 'Rosario', 5),
(13, 'Mendoza', 5),
(14, 'San Miguel de Tucumán', 5),
(15, 'São Paulo', 3),
(16, 'Río de Janeiro', 3),
(17, 'Brasilia', 3),
(18, 'Salvador', 3),
(19, 'Fortaleza', 3),
(20, 'Ciudad de México', 4),
(21, 'Guadalajara', 4),
(22, 'Puebla', 4),
(23, 'Oaxaca', 4),
(24, 'Cancún', 4),
(25, 'Lima', 2),
(26, 'Cusco', 2),
(27, 'Arequipa', 2),
(28, 'Trujillo', 2),
(29, 'Iquitos', 2);

-- --------------------------------------------------------

--
-- 테이블 구조 `modelo`
--

CREATE TABLE `modelo` (
  `idModelo` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `idTipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `modelo`
--

INSERT INTO `modelo` (`idModelo`, `nombre`, `idTipo`) VALUES
(1, 'Airbus A350', 1),
(2, 'Boeing 737', 1),
(3, 'Airbus A320', 1),
(4, 'Boeing 777', 1),
(5, 'Boeing 747-8F', 2),
(6, 'Airbus A330-200F', 2),
(7, 'McDonnell Douglas MD-11F', 2),
(8, 'Gulfstream G650', 1),
(9, 'Bombardier Global 75', 1),
(10, 'Dassault Falcon 8X', 3);

-- --------------------------------------------------------

--
-- 테이블 구조 `pais`
--

CREATE TABLE `pais` (
  `idPais` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `pais`
--

INSERT INTO `pais` (`idPais`, `nombre`) VALUES
(5, 'Argentina'),
(3, 'Brazil'),
(1, 'Colombia'),
(4, 'Mexico'),
(2, 'Peru');

-- --------------------------------------------------------

--
-- 테이블 구조 `persona`
--

CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `codigo` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `idBase` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `persona`
--

INSERT INTO `persona` (`idPersona`, `nombre`, `codigo`, `usuario`, `pass`, `idBase`) VALUES
(1, 'Donghee ', '463526', 'djo@gmail.com', '3333', 1),
(2, 'Ana', '2345', 'ana@gmail.com', '1234', 1),
(3, 'Maria', '3456', 'maria@gmail.com', '1234', 2),
(5, 'Json', 'ABC123', 'json@gmail.com', '1234', 2),
(6, 'prueba', 'prueba', 'prueba@gmail.com', '1234', 1),
(7, 'Pepito', '9999', 'ppt@gmail.com', '1234', NULL),
(8, 'Mariana', '4578', 'mrana@gmail.com', '1234', 2),
(9, 'xxxx', 'xxx', 'xxx@gmail.com', '1234', 2),
(10, 'tttt', 'tttt', 'ttt@gmail.com', '1234', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `piloto`
--

CREATE TABLE `piloto` (
  `idPiloto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `piloto`
--

INSERT INTO `piloto` (`idPiloto`) VALUES
(1),
(5),
(6),
(9);

-- --------------------------------------------------------

--
-- 테이블 구조 `tipo`
--

CREATE TABLE `tipo` (
  `idTipo` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `tipo`
--

INSERT INTO `tipo` (`idTipo`, `descripcion`) VALUES
(3, 'Business Jet'),
(2, 'Cargo Aircraft'),
(1, 'Passenger Aircraft');

-- --------------------------------------------------------

--
-- 테이블 구조 `tripulante`
--

CREATE TABLE `tripulante` (
  `idTripultante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `tripulante`
--

INSERT INTO `tripulante` (`idTripultante`) VALUES
(2),
(3),
(8),
(10);

-- --------------------------------------------------------

--
-- 테이블 구조 `vuelo`
--

CREATE TABLE `vuelo` (
  `num_vuelo` varchar(45) NOT NULL,
  `salida` datetime NOT NULL,
  `llegada` datetime NOT NULL,
  `idPiloto` int(11) NOT NULL,
  `idAvion` int(11) NOT NULL,
  `idOrigen` int(11) NOT NULL,
  `idDestino` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `vuelo`
--

INSERT INTO `vuelo` (`num_vuelo`, `salida`, `llegada`, `idPiloto`, `idAvion`, `idOrigen`, `idDestino`) VALUES
('IB-8831', '2025-11-19 19:00:00', '2025-11-19 20:00:00', 5, 2, 11, 10),
('IB-9999', '2025-11-11 14:00:00', '2025-11-12 15:00:00', 1, 1, 10, 13);

-- --------------------------------------------------------

--
-- 테이블 구조 `vuelo_tripulante`
--

CREATE TABLE `vuelo_tripulante` (
  `num_vuelo` varchar(45) NOT NULL,
  `idTripultante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `vuelo_tripulante`
--

INSERT INTO `vuelo_tripulante` (`num_vuelo`, `idTripultante`) VALUES
('IB-8831', 2),
('IB-8831', 3);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- 테이블의 인덱스 `avion`
--
ALTER TABLE `avion`
  ADD PRIMARY KEY (`idAvion`),
  ADD UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  ADD KEY `fk_Avion_Base1_idx` (`idBase`),
  ADD KEY `fk_Avion_Modelo1_idx` (`idModelo`);

--
-- 테이블의 인덱스 `base`
--
ALTER TABLE `base`
  ADD PRIMARY KEY (`idBase`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- 테이블의 인덱스 `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`idCiudad`),
  ADD KEY `fk_Lugar_Pais1_idx` (`idPais`);

--
-- 테이블의 인덱스 `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`idModelo`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `fk_Modelo_Tipo1_idx` (`idTipo`);

--
-- 테이블의 인덱스 `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`idPais`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- 테이블의 인덱스 `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idPersona`),
  ADD UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  ADD UNIQUE KEY `correo_UNIQUE` (`usuario`),
  ADD KEY `fk_Persona_Base1_idx` (`idBase`);

--
-- 테이블의 인덱스 `piloto`
--
ALTER TABLE `piloto`
  ADD PRIMARY KEY (`idPiloto`);

--
-- 테이블의 인덱스 `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idTipo`),
  ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`);

--
-- 테이블의 인덱스 `tripulante`
--
ALTER TABLE `tripulante`
  ADD PRIMARY KEY (`idTripultante`),
  ADD KEY `fk_Tripulante_Persona1_idx` (`idTripultante`);

--
-- 테이블의 인덱스 `vuelo`
--
ALTER TABLE `vuelo`
  ADD PRIMARY KEY (`num_vuelo`),
  ADD UNIQUE KEY `num_vuelo_UNIQUE` (`num_vuelo`),
  ADD KEY `fk_Piloto_has_Avion_Avion1_idx` (`idAvion`),
  ADD KEY `fk_Piloto_has_Avion_Piloto1_idx` (`idPiloto`),
  ADD KEY `fk_Vuelo_Ciudad1_idx` (`idOrigen`),
  ADD KEY `fk_Vuelo_Ciudad2_idx` (`idDestino`);

--
-- 테이블의 인덱스 `vuelo_tripulante`
--
ALTER TABLE `vuelo_tripulante`
  ADD PRIMARY KEY (`num_vuelo`,`idTripultante`),
  ADD KEY `fk_Vuelo_has_Tripulante_Tripulante1_idx` (`idTripultante`),
  ADD KEY `fk_Vuelo_has_Tripulante_Vuelo1_idx` (`num_vuelo`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `avion`
--
ALTER TABLE `avion`
  MODIFY `idAvion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 테이블의 AUTO_INCREMENT `base`
--
ALTER TABLE `base`
  MODIFY `idBase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 테이블의 AUTO_INCREMENT `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `idCiudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 테이블의 AUTO_INCREMENT `modelo`
--
ALTER TABLE `modelo`
  MODIFY `idModelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 테이블의 AUTO_INCREMENT `pais`
--
ALTER TABLE `pais`
  MODIFY `idPais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 테이블의 AUTO_INCREMENT `persona`
--
ALTER TABLE `persona`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 테이블의 AUTO_INCREMENT `tipo`
--
ALTER TABLE `tipo`
  MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_Admin_Persona1` FOREIGN KEY (`idAdmin`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 테이블의 제약사항 `avion`
--
ALTER TABLE `avion`
  ADD CONSTRAINT `fk_Avion_Base1` FOREIGN KEY (`idBase`) REFERENCES `base` (`idBase`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Avion_Modelo1` FOREIGN KEY (`idModelo`) REFERENCES `modelo` (`idModelo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 테이블의 제약사항 `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `fk_Lugar_Pais1` FOREIGN KEY (`idPais`) REFERENCES `pais` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 테이블의 제약사항 `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `fk_Modelo_Tipo1` FOREIGN KEY (`idTipo`) REFERENCES `tipo` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 테이블의 제약사항 `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_Persona_Base1` FOREIGN KEY (`idBase`) REFERENCES `base` (`idBase`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 테이블의 제약사항 `piloto`
--
ALTER TABLE `piloto`
  ADD CONSTRAINT `fk_Piloto_Persona` FOREIGN KEY (`idPiloto`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 테이블의 제약사항 `tripulante`
--
ALTER TABLE `tripulante`
  ADD CONSTRAINT `fk_Tripulante_Persona1` FOREIGN KEY (`idTripultante`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 테이블의 제약사항 `vuelo`
--
ALTER TABLE `vuelo`
  ADD CONSTRAINT `fk_Piloto_has_Avion_Avion1` FOREIGN KEY (`idAvion`) REFERENCES `avion` (`idAvion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Piloto_has_Avion_Piloto1` FOREIGN KEY (`idPiloto`) REFERENCES `piloto` (`idPiloto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vuelo_Ciudad1` FOREIGN KEY (`idOrigen`) REFERENCES `ciudad` (`idCiudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vuelo_Ciudad2` FOREIGN KEY (`idDestino`) REFERENCES `ciudad` (`idCiudad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 테이블의 제약사항 `vuelo_tripulante`
--
ALTER TABLE `vuelo_tripulante`
  ADD CONSTRAINT `fk_Vuelo_has_Tripulante_Tripulante1` FOREIGN KEY (`idTripultante`) REFERENCES `tripulante` (`idTripultante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vuelo_has_Tripulante_Vuelo1` FOREIGN KEY (`num_vuelo`) REFERENCES `vuelo` (`num_vuelo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
