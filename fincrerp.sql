-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-09-2022 a las 20:48:41
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fincrerp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblacciones`
--

CREATE TABLE `tblacciones` (
  `idaccion` int(11) NOT NULL,
  `nombre_accion` varchar(50) NOT NULL,
  `descripcion_accion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblciudades`
--

CREATE TABLE `tblciudades` (
  `idciudad` int(11) NOT NULL,
  `nombre_ciudad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldepartamentos`
--

CREATE TABLE `tbldepartamentos` (
  `iddepartamento` int(11) NOT NULL,
  `nombre_departamento` varchar(45) NOT NULL,
  `descripcion_departamento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblempleados`
--

CREATE TABLE `tblempleados` (
  `idempleado` int(11) NOT NULL,
  `primer_nombre_empleado` varchar(30) NOT NULL,
  `segundo_nombre_empleado` varchar(30) NOT NULL,
  `apellido_pa_empleado` varchar(30) NOT NULL,
  `apellido_mat_empleado` varchar(30) NOT NULL,
  `telefono_empleado` varchar(10) NOT NULL,
  `correo_empleado` varchar(50) NOT NULL,
  `idciudad` int(11) NOT NULL,
  `calle_empleado` varchar(60) NOT NULL,
  `colonia_empleado` varchar(60) NOT NULL,
  `numero_interior_empleado` varchar(10) NOT NULL,
  `numero_exterior_empleado` varchar(10) NOT NULL,
  `idpuesto` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `sexo_empleado` varchar(1) NOT NULL,
  `fecha_nac_empleado` varchar(10) NOT NULL,
  `codigo_postal_empleado` varchar(6) NOT NULL,
  `idnomina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblempleados_detalle`
--

CREATE TABLE `tblempleados_detalle` (
  `idempleados_det` int(11) NOT NULL,
  `idempleado` int(11) NOT NULL,
  `salario_bruto_empleados_det` decimal(2,2) NOT NULL,
  `salario_neto_empleados_det` decimal(2,2) NOT NULL,
  `numerio_tarjeta_empleados_det` int(16) NOT NULL,
  `cuenta_banco_empleados_det` varchar(10) NOT NULL,
  `rfc_empleados_det` varchar(10) NOT NULL,
  `nss_empleados_det` varchar(13) NOT NULL,
  `tipo_sangre_empleados_det` varchar(2) NOT NULL,
  `contacto_emergencia_empleados_det` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpremisos_sucursales`
--

CREATE TABLE `tblpremisos_sucursales` (
  `idpermiso_sucursal` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpuestos`
--

CREATE TABLE `tblpuestos` (
  `idpuesto` int(11) NOT NULL,
  `nombre_puesto` varchar(45) NOT NULL,
  `descripcion_puesto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblreportes`
--

CREATE TABLE `tblreportes` (
  `idreporte` int(11) NOT NULL,
  `iddepartamento` int(11) NOT NULL,
  `nombre_reporte` varchar(45) NOT NULL,
  `stored_procedimiento_reporte` varchar(45) NOT NULL,
  `estado_reporte` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsucursales`
--

CREATE TABLE `tblsucursales` (
  `idsucursal` int(11) NOT NULL,
  `nombre_sucursal` varchar(60) NOT NULL,
  `telefono_sucursal` varchar(10) NOT NULL,
  `ciudad_sucursal` int(11) NOT NULL,
  `calle_sucursal` varchar(60) NOT NULL,
  `colonia_sucursal` varchar(60) NOT NULL,
  `numero_interior_sucursal` varchar(10) NOT NULL,
  `numero_exterior_sucursal` varchar(10) NOT NULL,
  `codigo_postal_sucursal` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuarios`
--

CREATE TABLE `tblusuarios` (
  `idusuario` int(11) NOT NULL,
  `contrasena_usuario` varchar(45) NOT NULL,
  `correo_electronico_usuario` varchar(45) NOT NULL,
  `idempleado` int(11) NOT NULL,
  `fecha_creacion_usuario` varchar(10) NOT NULL,
  `estatus_usuario` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuarios_permisos`
--

CREATE TABLE `tblusuarios_permisos` (
  `idusuario_permiso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idvista` int(11) NOT NULL,
  `idaccion` int(11) NOT NULL,
  `fecha_creacion_usuario_permiso` varchar(10) NOT NULL,
  `estado_suario_permiso` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblvistas`
--

CREATE TABLE `tblvistas` (
  `idvista` int(11) NOT NULL,
  `nombre_vista` varchar(50) NOT NULL,
  `descripcion_vista` varchar(50) NOT NULL,
  `estado_vista` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblacciones`
--
ALTER TABLE `tblacciones`
  ADD PRIMARY KEY (`idaccion`);

--
-- Indices de la tabla `tblciudades`
--
ALTER TABLE `tblciudades`
  ADD PRIMARY KEY (`idciudad`);

--
-- Indices de la tabla `tbldepartamentos`
--
ALTER TABLE `tbldepartamentos`
  ADD PRIMARY KEY (`iddepartamento`);

--
-- Indices de la tabla `tblempleados`
--
ALTER TABLE `tblempleados`
  ADD PRIMARY KEY (`idempleado`),
  ADD KEY `idciudad` (`idciudad`),
  ADD KEY `idpuesto` (`idpuesto`),
  ADD KEY `idsucursal` (`idsucursal`);

--
-- Indices de la tabla `tblempleados_detalle`
--
ALTER TABLE `tblempleados_detalle`
  ADD PRIMARY KEY (`idempleados_det`),
  ADD KEY `idempleado` (`idempleado`);

--
-- Indices de la tabla `tblpremisos_sucursales`
--
ALTER TABLE `tblpremisos_sucursales`
  ADD PRIMARY KEY (`idpermiso_sucursal`),
  ADD KEY `idsucursal` (`idsucursal`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `tblpuestos`
--
ALTER TABLE `tblpuestos`
  ADD PRIMARY KEY (`idpuesto`);

--
-- Indices de la tabla `tblreportes`
--
ALTER TABLE `tblreportes`
  ADD PRIMARY KEY (`idreporte`),
  ADD KEY `iddepartamento` (`iddepartamento`);

--
-- Indices de la tabla `tblsucursales`
--
ALTER TABLE `tblsucursales`
  ADD PRIMARY KEY (`idsucursal`);

--
-- Indices de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `idempleado` (`idempleado`);

--
-- Indices de la tabla `tblusuarios_permisos`
--
ALTER TABLE `tblusuarios_permisos`
  ADD PRIMARY KEY (`idusuario_permiso`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idvista` (`idvista`),
  ADD KEY `idaccion` (`idaccion`);

--
-- Indices de la tabla `tblvistas`
--
ALTER TABLE `tblvistas`
  ADD PRIMARY KEY (`idvista`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblacciones`
--
ALTER TABLE `tblacciones`
  MODIFY `idaccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblciudades`
--
ALTER TABLE `tblciudades`
  MODIFY `idciudad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbldepartamentos`
--
ALTER TABLE `tbldepartamentos`
  MODIFY `iddepartamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblempleados`
--
ALTER TABLE `tblempleados`
  MODIFY `idempleado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblempleados_detalle`
--
ALTER TABLE `tblempleados_detalle`
  MODIFY `idempleados_det` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblpremisos_sucursales`
--
ALTER TABLE `tblpremisos_sucursales`
  MODIFY `idpermiso_sucursal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblpuestos`
--
ALTER TABLE `tblpuestos`
  MODIFY `idpuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblreportes`
--
ALTER TABLE `tblreportes`
  MODIFY `idreporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblsucursales`
--
ALTER TABLE `tblsucursales`
  MODIFY `idsucursal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblusuarios_permisos`
--
ALTER TABLE `tblusuarios_permisos`
  MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblvistas`
--
ALTER TABLE `tblvistas`
  MODIFY `idvista` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tblempleados`
--
ALTER TABLE `tblempleados`
  ADD CONSTRAINT `tblempleados_ibfk_1` FOREIGN KEY (`idciudad`) REFERENCES `tblciudades` (`idciudad`),
  ADD CONSTRAINT `tblempleados_ibfk_2` FOREIGN KEY (`idpuesto`) REFERENCES `tblpuestos` (`idpuesto`),
  ADD CONSTRAINT `tblempleados_ibfk_3` FOREIGN KEY (`idsucursal`) REFERENCES `tblsucursales` (`idsucursal`);

--
-- Filtros para la tabla `tblempleados_detalle`
--
ALTER TABLE `tblempleados_detalle`
  ADD CONSTRAINT `tblempleados_detalle_ibfk_1` FOREIGN KEY (`idempleado`) REFERENCES `tblempleados` (`idempleado`);

--
-- Filtros para la tabla `tblpremisos_sucursales`
--
ALTER TABLE `tblpremisos_sucursales`
  ADD CONSTRAINT `tblpremisos_sucursales_ibfk_1` FOREIGN KEY (`idsucursal`) REFERENCES `tblsucursales` (`idsucursal`),
  ADD CONSTRAINT `tblpremisos_sucursales_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `tblusuarios` (`idusuario`);

--
-- Filtros para la tabla `tblreportes`
--
ALTER TABLE `tblreportes`
  ADD CONSTRAINT `tblreportes_ibfk_1` FOREIGN KEY (`iddepartamento`) REFERENCES `tbldepartamentos` (`iddepartamento`);

--
-- Filtros para la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD CONSTRAINT `tblusuarios_ibfk_1` FOREIGN KEY (`idempleado`) REFERENCES `tblempleados` (`idempleado`);

--
-- Filtros para la tabla `tblusuarios_permisos`
--
ALTER TABLE `tblusuarios_permisos`
  ADD CONSTRAINT `tblusuarios_permisos_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `tblusuarios` (`idusuario`),
  ADD CONSTRAINT `tblusuarios_permisos_ibfk_2` FOREIGN KEY (`idvista`) REFERENCES `tblvistas` (`idvista`),
  ADD CONSTRAINT `tblusuarios_permisos_ibfk_3` FOREIGN KEY (`idaccion`) REFERENCES `tblacciones` (`idaccion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
