USE [GD2C2023]
GO


--Eliminacion de procedures en el caso de existir-- esto es para poder borrar el esquema y no nos tire error
IF OBJECT_ID ('[LA_SCALONETA].ObtenerIDBarrio') IS NOT NULL
   DROP FUNCTION [LA_SCALONETA].ObtenerIDBarrio;
IF OBJECT_ID ('[LA_SCALONETA].migrarAlquileres') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarAlquileres;
IF OBJECT_ID ('[LA_SCALONETA].migrarAnuncio') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarAnuncio;
IF OBJECT_ID ('[LA_SCALONETA].migrarBarrio') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarBarrio;
IF OBJECT_ID ('[LA_SCALONETA].migrarCaracterXInmueble') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarCaracterXInmueble;
IF OBJECT_ID ('[LA_SCALONETA].migrarCaracteristica') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarCaracteristica;
IF OBJECT_ID ('[LA_SCALONETA].migrarComprador') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarComprador;
IF OBJECT_ID ('[LA_SCALONETA].migrarInquilino') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarInquilino;
IF OBJECT_ID ('[LA_SCALONETA].migrarTipoEstadoAlquiler') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarTipoEstadoAlquiler;
IF OBJECT_ID ('[LA_SCALONETA].migrarProvincia') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarProvincia;
IF OBJECT_ID ('[LA_SCALONETA].migrarMedioDePago') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarMedioDePago;
IF OBJECT_ID ('[LA_SCALONETA].migrarPropietario') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarPropietario;
IF OBJECT_ID ('[LA_SCALONETA].migrarAgente') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarAgente;
IF OBJECT_ID ('[LA_SCALONETA].migrarDatosInmueble') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarDatosInmueble;
IF OBJECT_ID ('[LA_SCALONETA].migrarDatosAnuncio') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarDatosAnuncio;
IF OBJECT_ID ('[LA_SCALONETA].migrarDetalleImporte') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarDetalleImporte;
IF OBJECT_ID ('[LA_SCALONETA].migrarInmueble') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarInmueble;
IF OBJECT_ID ('[LA_SCALONETA].migrarInmuebleXProp') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarInmuebleXProp;
IF OBJECT_ID ('[LA_SCALONETA].migrarLocalidad') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarLocalidad;
IF OBJECT_ID ('[LA_SCALONETA].migrarMoneda') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarMoneda;
IF OBJECT_ID ('[LA_SCALONETA].migrarPagoAlquiler') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarPagoAlquiler;
IF OBJECT_ID ('[LA_SCALONETA].migrarPagoVenta') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarPagoVenta;
IF OBJECT_ID ('[LA_SCALONETA].migrarSucursal') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarSucursal;
IF OBJECT_ID ('[LA_SCALONETA].migrarTipos_Estado_Inmueble') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarTipos_Estado_Inmueble;
IF OBJECT_ID ('[LA_SCALONETA].migrarVentaInmueble') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarVentaInmueble;

--Eliminacion de tablas en el caso de existir-- esto es para poder borrar el esquema y no nos tire error
IF OBJECT_ID ('[LA_SCALONETA].[CaracteristicaXInmueble]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[CaracteristicaXInmueble];

IF OBJECT_ID ('[LA_SCALONETA].[InmuebleXPropietario]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[InmuebleXPropietario];

IF OBJECT_ID ('[LA_SCALONETA].[Caracteristicas]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Caracteristicas];

IF OBJECT_ID ('[LA_SCALONETA].[Propietario]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Propietario];

IF OBJECT_ID ('[LA_SCALONETA].[Alquiler]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Alquiler];

IF OBJECT_ID ('[LA_SCALONETA].[Anuncio]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Anuncio];

IF OBJECT_ID ('[LA_SCALONETA].[Inmueble]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Inmueble];

IF OBJECT_ID ('[LA_SCALONETA].[Orientacion]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Orientacion];

IF OBJECT_ID ('[LA_SCALONETA].[Disposicion]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Disposicion];

IF OBJECT_ID ('[LA_SCALONETA].[Ambientes]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Ambientes];

IF OBJECT_ID ('[LA_SCALONETA].[Tipo_Estado_Inmueble]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Tipo_Estado_Inmueble];

IF OBJECT_ID ('[LA_SCALONETA].[Tipo_Inmueble]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Tipo_Inmueble];

IF OBJECT_ID ('[LA_SCALONETA].[Pago_Alquiler]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Pago_Alquiler];

IF OBJECT_ID ('[LA_SCALONETA].[Detalle_Importe]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Detalle_Importe];

IF OBJECT_ID ('[LA_SCALONETA].[Tipo_Estado_Alquiler]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Tipo_Estado_Alquiler];

IF OBJECT_ID ('[LA_SCALONETA].[Tipo_Estado_Anuncio]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Tipo_Estado_Anuncio];

IF OBJECT_ID ('[LA_SCALONETA].[Tipo_Periodo]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Tipo_Periodo];

IF OBJECT_ID ('[LA_SCALONETA].[Tipo_Operacion]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Tipo_Operacion];

IF OBJECT_ID ('[LA_SCALONETA].[Agente_Inmobiliario]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Agente_Inmobiliario];

IF OBJECT_ID ('[LA_SCALONETA].[Sucursal]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Sucursal];

IF OBJECT_ID ('[LA_SCALONETA].[Pago_Venta]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Pago_Venta];

IF OBJECT_ID ('[LA_SCALONETA].[Medio_De_Pago]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Medio_De_Pago];

IF OBJECT_ID ('[LA_SCALONETA].[Venta_Inmueble]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Venta_Inmueble];

IF OBJECT_ID ('[LA_SCALONETA].[Comprador]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Comprador];

IF OBJECT_ID ('[LA_SCALONETA].[Moneda]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Moneda];

IF OBJECT_ID ('[LA_SCALONETA].[Inquilino]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Inquilino];

IF OBJECT_ID ('[LA_SCALONETA].[Barrio]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Barrio];

IF OBJECT_ID ('[LA_SCALONETA].[Localidad]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Localidad];

IF OBJECT_ID ('[LA_SCALONETA].[Provincia]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[Provincia];

/*
---Esquema-----
--Eliminacion si existe previamente--
IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'LA_SCALONETA')
  DROP SCHEMA LA_SCALONETA
GO

--Creación--
CREATE SCHEMA [LA_SCALONETA]
GO
*/
---Alta de tablas---

--Provincia--
CREATE TABLE [LA_SCALONETA].[Provincia](
 id_provincia Int IDENTITY (1,1), /*Enumera de a uno empezando de uno*/
 descripcion Nvarchar(100)
 );
ALTER TABLE [LA_SCALONETA].[PROVINCIA] ADD CONSTRAINT PK_Provincia PRIMARY KEY (id_provincia);

--Localidad--
CREATE TABLE [LA_SCALONETA].[Localidad](
 id_localidad Int IDENTITY (1,1), /*Enumera de a uno empezando de uno*/
 id_provincia Int,
 descripcion Nvarchar(100)
 );
ALTER TABLE [LA_SCALONETA].[Localidad] ADD CONSTRAINT PK_Localidad PRIMARY KEY (id_localidad);
--ALTER TABLE [LA_SCALONETA].[Localidad] ADD CONSTRAINT Localidad_Provincia FOREIGN KEY (id_provincia) REFERENCES [LA_SCALONETA].[Provincia](id_provincia);

--Barrio--
CREATE TABLE [LA_SCALONETA].[Barrio](
 id_barrio Int IDENTITY (1,1), /*Enumera de a uno empezando de uno*/
 id_localidad Int,
 descripcion Nvarchar(100)
 );

 ALTER TABLE [LA_SCALONETA].[Barrio] ADD CONSTRAINT PK_Barrio PRIMARY KEY (id_barrio);
 --ALTER TABLE [LA_SCALONETA].[Barrio] ADD CONSTRAINT Barrio_Localidad FOREIGN KEY (id_localidad) REFERENCES [LA_SCALONETA].[Localidad](id_Localidad);

--Inquilino--
 CREATE TABLE [LA_SCALONETA].[Inquilino](
 id_inquilino Int IDENTITY (1,1),
 nombre NVARCHAR(100),
 apellido NVARCHAR(100),
 DNI INT, 
 telefono INT,
 mail NVARCHAR(100),
 fecha_registro DATETIME,
 fecha_nacimiento DATETIME);

ALTER TABLE [LA_SCALONETA].[Inquilino] ADD CONSTRAINT PK_Inquilino PRIMARY KEY (id_inquilino);

--Moneda--
 CREATE TABLE [LA_SCALONETA].[Moneda](
 id_moneda INT IDENTITY(1,1),
 tipo_moneda NVARCHAR(100)
 );

 ALTER TABLE [LA_SCALONETA].[Moneda] ADD CONSTRAINT PK_Moneda PRIMARY KEY (id_moneda);

 --Comprador--
 CREATE TABLE [LA_SCALONETA].[Comprador](
 id_comprador INT IDENTITY (1,1),
 nombre NVARCHAR(100),
 apellido NVARCHAR(100),
 dni INT,
 fecha_registro DATETIME,
 telefono INT,
 mail NVARCHAR(100),
 fecha_nacimiento DATE
 );

ALTER TABLE [LA_SCALONETA].[Comprador] ADD CONSTRAINT PK_Comprador PRIMARY KEY (id_comprador);

--Venta_Inmueble--
CREATE TABLE [LA_SCALONETA].[Venta_Inmueble](
id_venta INT IDENTITY (1, 1),
codigo INT,
id_anuncio INT,
id_comprador INT,
fecha_venta DATETIME,
precio_venta FLOAT,
id_moneda INT,
comision_inmobiliaria FLOAT
);

ALTER TABLE [LA_SCALONETA].[Venta_Inmueble] ADD CONSTRAINT PK_Venta_Inmueble PRIMARY KEY (id_venta);
--ALTER TABLE [LA_SCALONETA].[Venta_Inmueble] ADD CONSTRAINT Venta_Inmueble_Comprador FOREIGN KEY (id_comprador) REFERENCES [LA_SCALONETA].[Comprador](id_comprador);
--ALTER TABLE [LA_SCALONETA].[Venta_Inmueble] ADD CONSTRAINT Venta_Inmueble_Moneda FOREIGN KEY (id_moneda) REFERENCES [LA_SCALONETA].[Moneda](id_moneda);

--Medio de Pago--
CREATE TABLE [LA_SCALONETA].[Medio_De_Pago](
id_medio_pago INT IDENTITY(1,1),
descripcion NVARCHAR(100)
);

ALTER TABLE [LA_SCALONETA].[Medio_De_Pago] ADD CONSTRAINT PK_Medio_De_Pago PRIMARY KEY (id_medio_pago);

--Pago_Venta--
CREATE TABLE [LA_SCALONETA].[Pago_Venta](
id_pago INT IDENTITY (1,1),
importe FLOAT,
id_moneda INT,
cotizacion FLOAT,
id_medio_pago int,
id_venta INT
);
 
ALTER TABLE [LA_SCALONETA].[Pago_Venta] ADD CONSTRAINT PK_Pago_Venta PRIMARY KEY (id_pago);
--ALTER TABLE [LA_SCALONETA].[Pago_Venta] ADD CONSTRAINT Pago_Venta_Venta_Inmueble FOREIGN KEY (id_venta) REFERENCES [LA_SCALONETA].[Venta_Inmueble](id_venta);
--ALTER TABLE [LA_SCALONETA].[Pago_Venta] ADD CONSTRAINT Pago_Venta_Moneda FOREIGN KEY (id_moneda) REFERENCES [LA_SCALONETA].[Moneda](id_moneda);
--ALTER TABLE [LA_SCALONETA].[Pago_Venta] ADD CONSTRAINT Pago_Venta_Medio_De_Pago FOREIGN KEY (id_medio_pago) REFERENCES [LA_SCALONETA].[Medio_De_Pago](id_medio_pago);

--Sucursal--
CREATE TABLE [LA_SCALONETA].[Sucursal](
id_sucursal INT NOT NULL,
nombre NVARCHAR(100),
direccion NVARCHAR(100),
telefono NVARCHAR(100),
id_localidad INT,
id_provincia INT
);

ALTER TABLE [LA_SCALONETA].[Sucursal] ADD CONSTRAINT PK_Sucursal PRIMARY KEY (id_sucursal);
--ALTER TABLE [LA_SCALONETA].[Sucursal] ADD CONSTRAINT Sucursal_Localidad FOREIGN KEY (id_localidad) REFERENCES [LA_SCALONETA].[Localidad](id_localidad);
--ALTER TABLE [LA_SCALONETA].[Sucursal] ADD CONSTRAINT Sucursal_Provincia FOREIGN KEY (id_provincia) REFERENCES [LA_SCALONETA].[Provincia](id_provincia);

--Agente_Inmobiliario--
CREATE TABLE [LA_SCALONETA].[Agente_Inmobiliario](
id_agente INT IDENTITY (1,1),
nombre NVARCHAR(100),
apellido NVARCHAR(100),
dni INT, 
fecha_registro DATETIME,
telefono INT,
mail NVARCHAR(100),
fecha_nacimiento DATETIME,
id_sucursal INT -- lo agregué pero no estoy seguro si va --
);

ALTER TABLE [LA_SCALONETA].[Agente_Inmobiliario] ADD CONSTRAINT PK_Agente_Inmobiliario PRIMARY KEY (id_agente);
--ALTER TABLE [LA_SCALONETA].[Agente_Inmobiliario] ADD CONSTRAINT Agente_Inmobiliario_Sucursal FOREIGN KEY (id_sucursal) REFERENCES [LA_SCALONETA].[Sucursal](id_sucursal);

--Tipo Operacion--
CREATE TABLE [LA_SCALONETA].[Tipo_Operacion](
id_tipo INT IDENTITY (1,1),
descripcion NVARCHAR(100)
);

ALTER TABLE [LA_SCALONETA].[Tipo_Operacion] ADD CONSTRAINT PK_Tipo_Operacion PRIMARY KEY (id_tipo);

--Tipo Periodo--
CREATE TABLE [LA_SCALONETA].[Tipo_Periodo](
id_tipo_periodo INT IDENTITY (1,1),
descripcion NVARCHAR(100)
);

ALTER TABLE [LA_SCALONETA].[Tipo_Periodo] ADD CONSTRAINT PK_Tipo_Periodo PRIMARY KEY (id_tipo_periodo);

--Tipo Estado_Anuncio--
CREATE TABLE [LA_SCALONETA].[Tipo_Estado_Anuncio](
id_tipo_estado_anuncio INT IDENTITY (1,1),
descripcion NVARCHAR(100)
);

ALTER TABLE [LA_SCALONETA].[Tipo_Estado_Anuncio] ADD CONSTRAINT PK_Tipo_Estado_Anuncio PRIMARY KEY (id_tipo_estado_anuncio);

--Anuncio--
CREATE TABLE [LA_SCALONETA].[Anuncio](
id_anuncio INT IDENTITY (1,1),
codigo INT,
fecha_publicacion DATETIME,
id_agente INT,
id_tipo_operacion INT,
id_inmueble INT,
precio_inmueble FLOAT,
id_moneda INT,
id_tipo_periodo INT,
id_estado_anuncio INT,
fecha_finalizacion DATETIME,
costo_anuncio FLOAT
);

ALTER TABLE [LA_SCALONETA].[Anuncio] ADD CONSTRAINT PK_Anuncio PRIMARY KEY (id_anuncio);


--ALTER TABLE [LA_SCALONETA].[Anuncio] ADD CONSTRAINT Anuncio_Agente FOREIGN KEY (id_agente) REFERENCES [LA_SCALONETA].[Agente_Inmobiliario](id_agente);
--ALTER TABLE [LA_SCALONETA].[Anuncio] ADD CONSTRAINT Anuncio_Moneda FOREIGN KEY (id_moneda) REFERENCES [LA_SCALONETA].[Moneda](id_moneda);
--ALTER TABLE [LA_SCALONETA].[Anuncio] ADD CONSTRAINT Anuncio_Tipo_Operacion FOREIGN KEY (id_tipo_operacion) REFERENCES [LA_SCALONETA].[Tipo_Operacion](id_tipo);
--ALTER TABLE [LA_SCALONETA].[Anuncio] ADD CONSTRAINT Anuncio_Tipo_Periodo FOREIGN KEY (id_tipo_periodo) REFERENCES [LA_SCALONETA].[Tipo_Periodo](id_tipo_periodo);
--ALTER TABLE [LA_SCALONETA].[Anuncio] ADD CONSTRAINT Anuncio_Tipo_Estado_Anuncio FOREIGN KEY (id_estado_anuncio) REFERENCES [LA_SCALONETA].[Tipo_Estado_Anuncio](id_tipo_estado_anuncio);

--Detalle_Importe--
CREATE TABLE [LA_SCALONETA].[Detalle_Importe](
id_importe INT IDENTITY (1,1),
nro_periodo_inicio INT,
nro_periodo_fin INT,
precio_inicial FLOAT,
id_alquiler INT
);

ALTER TABLE [LA_SCALONETA].[Detalle_Importe] ADD CONSTRAINT PK_Importe PRIMARY KEY (id_importe);
--ALTER TABLE [LA_SCALONETA].[Detalle_Importe] ADD CONSTRAINT Importe_Alquiler FOREIGN KEY (id_alquiler) REFERENCES [LA_SCALONETA].[Alquiler](id_alquiler);

--Tipo estado Alquiler--
CREATE TABLE [LA_SCALONETA].[Tipo_Estado_Alquiler](
id_estado_alquiler INT IDENTITY (1,1),
descripcion VARCHAR(100)
);
ALTER TABLE [LA_SCALONETA].[Tipo_Estado_Alquiler] ADD CONSTRAINT PK_Tipo_Estado_Alquiler PRIMARY KEY (id_estado_alquiler);

--Alquiler---
CREATE TABLE [LA_SCALONETA].[Alquiler](
id_alquiler INT NOT NULL,
id_anuncio INT,
id_inquilino INT,
fecha_inicio DATE,
fecha_fin DATE,
duracion_periodo INT,
id_estado_alquiler INT,
deposito FLOAT,
comision FLOAT,
gastos_averiguaciones FLOAT
);

ALTER TABLE [LA_SCALONETA].[Alquiler] ADD CONSTRAINT PK_Alquiler PRIMARY KEY (id_alquiler);
--ALTER TABLE [LA_SCALONETA].[Alquiler] ADD CONSTRAINT Alquiler_Anuncio FOREIGN KEY (id_anuncio) REFERENCES [LA_SCALONETA].[Anuncio](id_anuncio);
--ALTER TABLE [LA_SCALONETA].[Alquiler] ADD CONSTRAINT Alquiler_Inquilino FOREIGN KEY (id_inquilino) REFERENCES [LA_SCALONETA].[Inquilino](id_inquilino);
--ALTER TABLE [LA_SCALONETA].[Alquiler] ADD CONSTRAINT Alquiler_Estado_Alquiler FOREIGN KEY (id_estado_alquiler) REFERENCES [LA_SCALONETA].[Tipo_Estado_Alquiler](id_estado_alquiler);
--ALTER TABLE [LA_SCALONETA].[Alquiler] ADD CONSTRAINT Alquiler_Importe FOREIGN KEY (id_importe) REFERENCES [LA_SCALONETA].[Detalle_Importe](id_importe);

--Pago Alquiler--
CREATE TABLE [LA_SCALONETA].[Pago_Alquiler](
id_pago_alquiler INT NOT NULL,
id_alquiler INT,
fecha_pago DATE,
nro_periodo INT,
descripcion_periodo VARCHAR (100),
fecha_inicio DATE,
fecha_fin DATE,
importe FLOAT,
id_medio_pago INT,
fecha_vencimiento DATE
);

ALTER TABLE [LA_SCALONETA].[Pago_Alquiler] ADD CONSTRAINT PK_Pago_Alquiler PRIMARY KEY (id_pago_alquiler);
--ALTER TABLE [LA_SCALONETA].[Pago_Alquiler] ADD CONSTRAINT Pago_Alquiler_Alquiler FOREIGN KEY (id_alquiler) REFERENCES [LA_SCALONETA].[Alquiler](id_alquiler);
--ALTER TABLE [LA_SCALONETA].[Pago_Alquiler] ADD CONSTRAINT Pago_Medio_Pago FOREIGN KEY (id_medio_pago) REFERENCES [LA_SCALONETA].[Medio_De_Pago](id_medio_pago);

--Tipo Inmueble--
CREATE TABLE [LA_SCALONETA].[Tipo_Inmueble](
id_tipo_inmueble INT IDENTITY (1,1),
descripcion VARCHAR (100)
);
ALTER TABLE [LA_SCALONETA].[Tipo_Inmueble] ADD CONSTRAINT PK_Tipo_Inmueble PRIMARY KEY (id_tipo_inmueble);


--Tipo_Estado_Inmueble--
CREATE TABLE [LA_SCALONETA].[Tipo_Estado_Inmueble](
id_estado_inmueble INT IDENTITY (1,1),
descripcion VARCHAR (100)
);

ALTER TABLE [LA_SCALONETA].[Tipo_Estado_Inmueble] ADD CONSTRAINT PK_Tipo_Estado_Inmueble PRIMARY KEY (id_estado_inmueble);

--Ambientes--
CREATE TABLE [LA_SCALONETA].[Ambientes](
id_ambientes INT IDENTITY (1,1),
descripcion VARCHAR (100)
);

ALTER TABLE [LA_SCALONETA].[Ambientes] ADD CONSTRAINT PK_Ambientes PRIMARY KEY (id_ambientes);

--Disposicicon--
CREATE TABLE [LA_SCALONETA].[Disposicion](
id_disposicion INT IDENTITY (1,1),
descripcion VARCHAR (100)
);

ALTER TABLE [LA_SCALONETA].[Disposicion] ADD CONSTRAINT PK_Disposicion PRIMARY KEY (id_disposicion);

--Orientacion--
CREATE TABLE [LA_SCALONETA].[Orientacion](
id_orientacion INT IDENTITY (1,1),
descripcion VARCHAR (100)
);

ALTER TABLE [LA_SCALONETA].[Orientacion] ADD CONSTRAINT PK_Orientacion PRIMARY KEY (id_orientacion);

--Propietario--
CREATE TABLE [LA_SCALONETA].[Propietario](
id_propietario INT IDENTITY (1,1),
nombre VARCHAR (100),
apellido VARCHAR (100),
DNI INT,
fecha_registro DATE,
telefono INT,
mail VARCHAR (100),
fecha_nacimiento DATE
);

ALTER TABLE [LA_SCALONETA].[Propietario] ADD CONSTRAINT PK_Propietario PRIMARY KEY (id_propietario);

--Caracteristicas--
CREATE TABLE [LA_SCALONETA].[Caracteristicas](
id_caracteristicas INT IDENTITY (1,1),
descripcion VARCHAR (100)
);

ALTER TABLE [LA_SCALONETA].[Caracteristicas] ADD CONSTRAINT PK_Caracteristicas PRIMARY KEY (id_caracteristicas);

--Inmueble--
CREATE TABLE [LA_SCALONETA].[Inmueble](
id_inmueble INT NOT NULL,
id_tipo_inmueble INT,
descripcion VARCHAR (100),
direccion VARCHAR (100),
id_barrio INT,
id_ambientes INT,
superficie INT,
id_disposicion INT,
id_orientacion INT,
antiguedad INT,
id_estado_inmueble INT,
nombre VARCHAR (100),
expensas FLOAT
);

ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT PK_Inmueble PRIMARY KEY (id_inmueble);
--ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT Inmueble_Tipo  FOREIGN KEY (id_tipo_inmueble) REFERENCES [LA_SCALONETA].[Tipo_Inmueble](id_tipo_inmueble);
--ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT Inmueble_Barrio  FOREIGN KEY (id_barrio) REFERENCES [LA_SCALONETA].[Barrio](id_barrio);
--ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT Inmueble_Ambientes  FOREIGN KEY (id_ambientes) REFERENCES [LA_SCALONETA].[Ambientes](id_ambientes);
--ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT Inmueble_Disposicion  FOREIGN KEY (id_disposicion) REFERENCES [LA_SCALONETA].[Disposicion](id_disposicion);
--ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT Inmueble_Orientacion  FOREIGN KEY (id_orientacion) REFERENCES [LA_SCALONETA].[Orientacion](id_orientacion);
--ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT Inmueble_Estado  FOREIGN KEY (id_estado_inmueble) REFERENCES [LA_SCALONETA].[Tipo_Estado_Inmueble](id_estado_inmueble);

--InmuebleXPropietario
CREATE TABLE [LA_SCALONETA].[InmuebleXPropietario](
id_inmuebleXProp INT IDENTITY (1,1),
id_propietario INT,
id_inmueble INT
);

ALTER TABLE [LA_SCALONETA].[InmuebleXPropietario] ADD CONSTRAINT PK_InmuebleXPropietario PRIMARY KEY (id_inmuebleXProp);
--ALTER TABLE [LA_SCALONETA].[InmuebleXPropietario] ADD CONSTRAINT InmueblexProp_Propietario  FOREIGN KEY (id_propietario) REFERENCES [LA_SCALONETA].[Propietario](id_propietario);
--ALTER TABLE [LA_SCALONETA].[InmuebleXPropietario] ADD CONSTRAINT InmueblexProp_Inmueble  FOREIGN KEY (id_inmueble) REFERENCES [LA_SCALONETA].[Inmueble](id_inmueble);

--CaracteristicaXInmueble
CREATE TABLE [LA_SCALONETA].[CaracteristicaXInmueble](
id_caracterXInmueble INT IDENTITY (1,1),
id_inmueble INT,
id_caracteristica INT
);

ALTER TABLE [LA_SCALONETA].[CaracteristicaXInmueble] ADD CONSTRAINT PK_CaracteristicaXInmueble PRIMARY KEY (id_caracterXInmueble);
--ALTER TABLE [LA_SCALONETA].[CaracteristicaXInmueble] ADD CONSTRAINT CaracterXInmueble_Inmueble  FOREIGN KEY (id_inmueble) REFERENCES [LA_SCALONETA].[Inmueble](id_inmueble);


--PK Y FK DE TODAS LAS TABLAS---
--Provincia--
--ALTER TABLE [LA_SCALONETA].[PROVINCIA] ADD CONSTRAINT PK_Provincia PRIMARY KEY (id_provincia);

--Localidad--
--ALTER TABLE [LA_SCALONETA].[Localidad] ADD CONSTRAINT PK_Localidad PRIMARY KEY (id_localidad);
ALTER TABLE [LA_SCALONETA].[Localidad] ADD CONSTRAINT Localidad_Provincia FOREIGN KEY (id_provincia) REFERENCES [LA_SCALONETA].[Provincia](id_provincia);

--Barrio--
--ALTER TABLE [LA_SCALONETA].[Barrio] ADD CONSTRAINT PK_Barrio PRIMARY KEY (id_barrio);
ALTER TABLE [LA_SCALONETA].[Barrio] ADD CONSTRAINT Barrio_Localidad FOREIGN KEY (id_localidad) REFERENCES [LA_SCALONETA].[Localidad](id_Localidad);

--Inquilino--
--ALTER TABLE [LA_SCALONETA].[Inquilino] ADD CONSTRAINT PK_Inquilino PRIMARY KEY (id_inquilino);

--Moneda--
--ALTER TABLE [LA_SCALONETA].[Moneda] ADD CONSTRAINT PK_Moneda PRIMARY KEY (id_moneda);

 --Comprador--
--ALTER TABLE [LA_SCALONETA].[Comprador] ADD CONSTRAINT PK_Comprador PRIMARY KEY (id_comprador);

--Venta_Inmueble--
--ALTER TABLE [LA_SCALONETA].[Venta_Inmueble] ADD CONSTRAINT PK_Venta_Inmueble PRIMARY KEY (id_venta);
ALTER TABLE [LA_SCALONETA].[Venta_Inmueble] ADD CONSTRAINT Venta_Inmueble_Comprador FOREIGN KEY (id_comprador) REFERENCES [LA_SCALONETA].[Comprador](id_comprador);
ALTER TABLE [LA_SCALONETA].[Venta_Inmueble] ADD CONSTRAINT Venta_Inmueble_Anuncio FOREIGN KEY (id_anuncio) REFERENCES [LA_SCALONETA].[Anuncio] (id_anuncio);
ALTER TABLE [LA_SCALONETA].[Venta_Inmueble] ADD CONSTRAINT Venta_Inmueble_Moneda FOREIGN KEY (id_moneda) REFERENCES [LA_SCALONETA].[Moneda](id_moneda);

--Medio de Pago--
--ALTER TABLE [LA_SCALONETA].[Medio_De_Pago] ADD CONSTRAINT PK_Medio_De_Pago PRIMARY KEY (id_medio_pago);

--Pago_Venta--
--ALTER TABLE [LA_SCALONETA].[Pago_Venta] ADD CONSTRAINT PK_Pago_Venta PRIMARY KEY (id_pago);
ALTER TABLE [LA_SCALONETA].[Pago_Venta] ADD CONSTRAINT Pago_Venta_Venta_Inmueble FOREIGN KEY (id_venta) REFERENCES [LA_SCALONETA].[Venta_Inmueble](id_venta);
ALTER TABLE [LA_SCALONETA].[Pago_Venta] ADD CONSTRAINT Pago_Venta_Moneda FOREIGN KEY (id_moneda) REFERENCES [LA_SCALONETA].[Moneda](id_moneda);
ALTER TABLE [LA_SCALONETA].[Pago_Venta] ADD CONSTRAINT Pago_Venta_Medio_De_Pago FOREIGN KEY (id_medio_pago) REFERENCES [LA_SCALONETA].[Medio_De_Pago](id_medio_pago);

--Sucursal--
--ALTER TABLE [LA_SCALONETA].[Sucursal] ADD CONSTRAINT PK_Sucursal PRIMARY KEY (id_sucursal);
ALTER TABLE [LA_SCALONETA].[Sucursal] ADD CONSTRAINT Sucursal_Localidad FOREIGN KEY (id_localidad) REFERENCES [LA_SCALONETA].[Localidad](id_localidad);
ALTER TABLE [LA_SCALONETA].[Sucursal] ADD CONSTRAINT Sucursal_Provincia FOREIGN KEY (id_provincia) REFERENCES [LA_SCALONETA].[Provincia](id_provincia);

--Agente_Inmobiliario--
--ALTER TABLE [LA_SCALONETA].[Agente_Inmobiliario] ADD CONSTRAINT PK_Agente_Inmobiliario PRIMARY KEY (id_agente);
ALTER TABLE [LA_SCALONETA].[Agente_Inmobiliario] ADD CONSTRAINT Agente_Inmobiliario_Sucursal FOREIGN KEY (id_sucursal) REFERENCES [LA_SCALONETA].[Sucursal](id_sucursal);

--Tipo Operacion--
--ALTER TABLE [LA_SCALONETA].[Tipo_Operacion] ADD CONSTRAINT PK_Tipo_Operacion PRIMARY KEY (id_tipo);

--Tipo Periodo--
--ALTER TABLE [LA_SCALONETA].[Tipo_Periodo] ADD CONSTRAINT PK_Tipo_Periodo PRIMARY KEY (id_tipo_periodo);

--Tipo Estado_Anuncio--
--ALTER TABLE [LA_SCALONETA].[Tipo_Estado_Anuncio] ADD CONSTRAINT PK_Tipo_Estado_Anuncio PRIMARY KEY (id_tipo_estado_anuncio);

--Anuncio--
--ALTER TABLE [LA_SCALONETA].[Anuncio] ADD CONSTRAINT PK_Anuncio PRIMARY KEY (id_anuncio);
ALTER TABLE [LA_SCALONETA].[Anuncio] ADD CONSTRAINT Anuncio_Agente FOREIGN KEY (id_agente) REFERENCES [LA_SCALONETA].[Agente_Inmobiliario](id_agente);
ALTER TABLE [LA_SCALONETA].[Anuncio] ADD CONSTRAINT Anuncio_Moneda FOREIGN KEY (id_moneda) REFERENCES [LA_SCALONETA].[Moneda](id_moneda);
ALTER TABLE [LA_SCALONETA].[Anuncio] ADD CONSTRAINT Anuncio_Inmueble FOREIGN KEY (id_inmueble) REFERENCES [LA_SCALONETA].[Inmueble](id_inmueble);
ALTER TABLE [LA_SCALONETA].[Anuncio] ADD CONSTRAINT Anuncio_Tipo_Operacion FOREIGN KEY (id_tipo_operacion) REFERENCES [LA_SCALONETA].[Tipo_Operacion](id_tipo);
ALTER TABLE [LA_SCALONETA].[Anuncio] ADD CONSTRAINT Anuncio_Tipo_Periodo FOREIGN KEY (id_tipo_periodo) REFERENCES [LA_SCALONETA].[Tipo_Periodo](id_tipo_periodo);
ALTER TABLE [LA_SCALONETA].[Anuncio] ADD CONSTRAINT Anuncio_Tipo_Estado_Anuncio FOREIGN KEY (id_estado_anuncio) REFERENCES [LA_SCALONETA].[Tipo_Estado_Anuncio](id_tipo_estado_anuncio);

--Detalle_Importe--
--ALTER TABLE [LA_SCALONETA].[Detalle_Importe] ADD CONSTRAINT PK_Importe PRIMARY KEY (id_importe);
--ALTER TABLE [LA_SCALONETA].[Detalle_Importe] ADD CONSTRAINT Importe_Alquiler FOREIGN KEY (id_alquiler) REFERENCES [LA_SCALONETA].[Alquiler](id_alquiler);

--Tipo estado Alquiler--
--ALTER TABLE [LA_SCALONETA].[Tipo_Estado_Alquiler] ADD CONSTRAINT PK_Tipo_Estado_Alquiler PRIMARY KEY (id_estado_alquiler);

--Alquiler---
--ALTER TABLE [LA_SCALONETA].[Alquiler] ADD CONSTRAINT PK_Alquiler PRIMARY KEY (id_alquiler);
ALTER TABLE [LA_SCALONETA].[Alquiler] ADD CONSTRAINT Alquiler_Anuncio FOREIGN KEY (id_anuncio) REFERENCES [LA_SCALONETA].[Anuncio](id_anuncio);
ALTER TABLE [LA_SCALONETA].[Alquiler] ADD CONSTRAINT Alquiler_Inquilino FOREIGN KEY (id_inquilino) REFERENCES [LA_SCALONETA].[Inquilino](id_inquilino);
ALTER TABLE [LA_SCALONETA].[Alquiler] ADD CONSTRAINT Alquiler_Estado_Alquiler FOREIGN KEY (id_estado_alquiler) REFERENCES [LA_SCALONETA].[Tipo_Estado_Alquiler](id_estado_alquiler);


--Pago Alquiler--
--ALTER TABLE [LA_SCALONETA].[Pago_Alquiler] ADD CONSTRAINT PK_Pago_Alquiler PRIMARY KEY (id_pago_alquiler);
ALTER TABLE [LA_SCALONETA].[Pago_Alquiler] ADD CONSTRAINT Pago_Alquiler_Alquiler FOREIGN KEY (id_alquiler) REFERENCES [LA_SCALONETA].[Alquiler](id_alquiler);
ALTER TABLE [LA_SCALONETA].[Pago_Alquiler] ADD CONSTRAINT Pago_Medio_Pago FOREIGN KEY (id_medio_pago) REFERENCES [LA_SCALONETA].[Medio_De_Pago](id_medio_pago);

--Tipo Inmueble--
--ALTER TABLE [LA_SCALONETA].[Tipo_Inmueble] ADD CONSTRAINT PK_Tipo_Inmueble PRIMARY KEY (id_tipo_inmueble);


--Tipo_Estado_Inmueble--
--ALTER TABLE [LA_SCALONETA].[Tipo_Estado_Inmueble] ADD CONSTRAINT PK_Tipo_Estado_Inmueble PRIMARY KEY (id_estado_inmueble);

--Ambientes--
--ALTER TABLE [LA_SCALONETA].[Ambientes] ADD CONSTRAINT PK_Ambientes PRIMARY KEY (id_ambientes);

--Disposicicon--
--ALTER TABLE [LA_SCALONETA].[Disposicion] ADD CONSTRAINT PK_Disposicion PRIMARY KEY (id_disposicion);

--Orientacion--
--ALTER TABLE [LA_SCALONETA].[Orientacion] ADD CONSTRAINT PK_Orientacion PRIMARY KEY (id_orientacion);

--Propietario--
--ALTER TABLE [LA_SCALONETA].[Propietario] ADD CONSTRAINT PK_Propietario PRIMARY KEY (id_propietario);

--Caracteristicas--

--ALTER TABLE [LA_SCALONETA].[Caracteristicas] ADD CONSTRAINT PK_Caracteristicas PRIMARY KEY (id_caracteristicas);

--Inmueble--
--ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT PK_Inmueble PRIMARY KEY (id_inmueble);
ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT Inmueble_Tipo  FOREIGN KEY (id_tipo_inmueble) REFERENCES [LA_SCALONETA].[Tipo_Inmueble](id_tipo_inmueble);
ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT Inmueble_Barrio  FOREIGN KEY (id_barrio) REFERENCES [LA_SCALONETA].[Barrio](id_barrio);
ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT Inmueble_Ambientes  FOREIGN KEY (id_ambientes) REFERENCES [LA_SCALONETA].[Ambientes](id_ambientes);
ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT Inmueble_Disposicion  FOREIGN KEY (id_disposicion) REFERENCES [LA_SCALONETA].[Disposicion](id_disposicion);
ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT Inmueble_Orientacion  FOREIGN KEY (id_orientacion) REFERENCES [LA_SCALONETA].[Orientacion](id_orientacion);
ALTER TABLE [LA_SCALONETA].[Inmueble] ADD CONSTRAINT Inmueble_Estado  FOREIGN KEY (id_estado_inmueble) REFERENCES [LA_SCALONETA].[Tipo_Estado_Inmueble](id_estado_inmueble);

--InmuebleXPropietario
--ALTER TABLE [LA_SCALONETA].[InmuebleXPropietario] ADD CONSTRAINT PK_InmuebleXPropietario PRIMARY KEY (id_inmuebleXProp);
ALTER TABLE [LA_SCALONETA].[InmuebleXPropietario] ADD CONSTRAINT InmueblexProp_Propietario  FOREIGN KEY (id_propietario) REFERENCES [LA_SCALONETA].[Propietario](id_propietario);
ALTER TABLE [LA_SCALONETA].[InmuebleXPropietario] ADD CONSTRAINT InmueblexProp_Inmueble  FOREIGN KEY (id_inmueble) REFERENCES [LA_SCALONETA].[Inmueble](id_inmueble);

--CaracteristicaXInmueble
--ALTER TABLE [LA_SCALONETA].[CaracteristicaXInmueble] ADD CONSTRAINT PK_CaracteristicaXInmueble PRIMARY KEY (id_caracterXInmueble);
ALTER TABLE [LA_SCALONETA].[CaracteristicaXInmueble] ADD CONSTRAINT CaracterXInmueble_Caracteristica  FOREIGN KEY (id_caracteristica) REFERENCES [LA_SCALONETA].[Caracteristicas](id_caracteristicas);
ALTER TABLE [LA_SCALONETA].[CaracteristicaXInmueble] ADD CONSTRAINT CaracterXInmueble_Inmueble  FOREIGN KEY (id_inmueble) REFERENCES [LA_SCALONETA].[Inmueble](id_inmueble);


 /*tiene q ir un go a antes de un procedure*/
--COMMIT




---------------MIGRACIÓN------------------------
GO
-- Provincia --
Create Procedure [LA_SCALONETA].migrarProvincia AS
	BEGIN
		INSERT INTO [LA_SCALONETA].[Provincia]
		SELECT DISTINCT(INMUEBLE_PROVINCIA)
		FROM gd_esquema.Maestra
		WHERE INMUEBLE_PROVINCIA is not null
		ORDER BY INMUEBLE_PROVINCIA ASC

		INSERT INTO [LA_SCALONETA].[Provincia]
		SELECT DISTINCT(SUCURSAL_PROVINCIA)
		FROM [gd_esquema].[Maestra] orig	
		WHERE SUCURSAL_PROVINCIA IS NOT NULL AND 
			  NOT EXISTS (
				SELECT 1
				FROM [LA_SCALONETA].[Provincia] copy
				WHERE orig.SUCURSAL_PROVINCIA = copy.Descripcion 
			  )
		ORDER BY SUCURSAL_PROVINCIA asc
	END
GO

-- Localidad --

CREATE PROCEDURE [LA_SCALONETA].migrarLocalidad AS
	BEGIN
		INSERT INTO [LA_SCALONETA].[Localidad](descripcion, id_provincia)
		SELECT DISTINCT orig.INMUEBLE_LOCALIDAD, prov.id_provincia
		FROM gd_esquema.Maestra orig
		LEFT JOIN [LA_SCALONETA].[Provincia] prov On Prov.Descripcion = orig.INMUEBLE_PROVINCIA
		WHERE INMUEBLE_PROVINCIA is not null
		ORDER BY INMUEBLE_LOCALIDAD asc
		
		INSERT INTO [LA_SCALONETA].[Localidad](descripcion, id_provincia)
		SELECT DISTINCT(SUCURSAL_LOCALIDAD), prov.id_provincia
		FROM gd_esquema.Maestra orig
		LEFT JOIN [LA_SCALONETA].[Provincia] prov ON Prov.descripcion = orig.SUCURSAL_PROVINCIA
		WHERE SUCURSAL_LOCALIDAD IS NOT NULL AND
			  NOT EXISTS (
				SELECT 1
				FROM [LA_SCALONETA].Localidad copy
				WHERE orig.SUCURSAL_LOCALIDAD = copy.descripcion AND
				      orig.SUCURSAL_PROVINCIA = prov.descripcion
			  )
		ORDER BY SUCURSAL_LOCALIDAD ASC
	END
GO

-- Barrio ---------------------------------------------------------------------------------------
CREATE PROCEDURE [LA_SCALONETA].migrarBarrio AS
	BEGIN
		INSERT INTO [LA_SCALONETA].[Barrio] (descripcion, id_localidad)
		SELECT DISTINCT(INMUEBLE_BARRIO),
			   loc.id_Localidad
		FROM gd_esquema.Maestra orig
		LEFT JOIN [LA_SCALONETA].[Localidad] loc On Loc.Descripcion = orig.INMUEBLE_LOCALIDAD
		WHERE INMUEBLE_BARRIO is not null
		ORDER BY INMUEBLE_BARRIO asc
	END
GO


--Sucursal-- 
CREATE PROCEDURE [LA_SCALONETA].migrarSucursal AS
BEGIN
	INSERT INTO [LA_SCALONETA].[Sucursal] (id_sucursal, nombre, direccion, telefono, id_localidad, id_provincia)
	SELECT DISTINCT M.SUCURSAL_CODIGO, M.SUCURSAL_NOMBRE, M.SUCURSAL_DIRECCION, M.SUCURSAL_TELEFONO, L.id_localidad, P.id_provincia
	FROM [gd_esquema].Maestra M
	LEFT JOIN [LA_SCALONETA].[Localidad] L ON ( M.SUCURSAL_LOCALIDAD=L.descripcion)
	LEFT JOIN [LA_SCALONETA].[Provincia] P ON ( M.SUCURSAL_PROVINCIA=P.descripcion)
	WHERE M.SUCURSAL_CODIGO IS NOT NULL
	END
GO

--s1, avenida segurola, 46863033, comida de cori, salta
--SELECT * FROM [LA_SCALONETA].Sucursal
--SELECT * FROM gd_esquema.Maestra 

--Agente Inmobiliario--

CREATE PROCEDURE [LA_SCALONETA].migrarAgente AS
BEGIN
	INSERT INTO [LA_SCALONETA].[Agente_Inmobiliario] (nombre, apellido, DNI, fecha_registro, telefono, mail, fecha_nacimiento, id_sucursal)
	SELECT DISTINCT M.AGENTE_NOMBRE, M.AGENTE_APELLIDO, M.AGENTE_DNI, M.AGENTE_FECHA_REGISTRO,M.AGENTE_TELEFONO, M.AGENTE_MAIL, M.AGENTE_FECHA_NAC, s.id_sucursal
	FROM [gd_esquema].[Maestra] M
	LEFT JOIN [LA_SCALONETA].Sucursal s ON (s.nombre = M.SUCURSAL_NOMBRE)
	WHERE AGENTE_DNI IS NOT NULL
	END
GO


--Moneda--
CREATE PROCEDURE [LA_SCALONETA].migrarMoneda AS
BEGIN
	INSERT INTO [LA_SCALONETA].Moneda (tipo_moneda)
	SELECT DISTINCT M.ANUNCIO_MONEDA
	FROM [gd_esquema].Maestra M
	WHERE ANUNCIO_MONEDA IS NOT NULL
	END
GO 




CREATE PROCEDURE [LA_SCALONETA].migrarDatosAnuncio AS
BEGIN
--Tipo_Periodo--
	INSERT INTO [LA_SCALONETA].[Tipo_Periodo] (descripcion)
	SELECT DISTINCT M.ANUNCIO_TIPO_PERIODO
	FROM [gd_esquema].Maestra M
	WHERE ANUNCIO_TIPO_PERIODO IS NOT NULL

	--Tipo Operacion
	INSERT INTO [LA_SCALONETA].[Tipo_Operacion](descripcion)
	SELECT DISTINCT M.ANUNCIO_TIPO_OPERACION
	FROM [gd_esquema].Maestra M
	WHERE ANUNCIO_TIPO_OPERACION IS NOT NULL

	--Estado Anuncio
	INSERT INTO [LA_SCALONETA].[Tipo_Estado_Anuncio](descripcion)
	SELECT DISTINCT M.ANUNCIO_ESTADO
	FROM [gd_esquema].Maestra M
	WHERE M.ANUNCIO_ESTADO IS NOT NULL
	END
GO


--Anuncio--

CREATE PROCEDURE [LA_SCALONETA].migrarAnuncio AS
BEGIN
	INSERT INTO [LA_SCALONETA].Anuncio (codigo, fecha_publicacion, id_agente, id_tipo_operacion, id_inmueble, precio_inmueble, id_moneda, id_tipo_periodo, id_estado_anuncio, fecha_finalizacion, costo_anuncio)
	SELECT DISTINCT M.ANUNCIO_CODIGO, M.ANUNCIO_FECHA_PUBLICACION, A.id_agente, TipO.id_tipo, I.id_inmueble, M.ANUNCIO_PRECIO_PUBLICADO, Mon.id_moneda, P.id_tipo_periodo, E.id_tipo_estado_anuncio, M.ANUNCIO_FECHA_FINALIZACION, M.ANUNCIO_COSTO_ANUNCIO
	FROM [gd_esquema].[Maestra] M
	LEFT JOIN [LA_SCALONETA].Moneda Mon ON (M.ANUNCIO_MONEDA =Mon.tipo_moneda)
	LEFT JOIN [LA_SCALONETA].Agente_Inmobiliario A ON (M.AGENTE_DNI = A.dni) 
	LEFT JOIN [LA_SCALONETA].Tipo_Operacion TipO ON (M.ANUNCIO_TIPO_OPERACION = TipO.descripcion)
	LEFT JOIN [LA_SCALONETA].Inmueble I ON (M.INMUEBLE_CODIGO = I.id_inmueble)
	LEFT JOIN [LA_SCALONETA].[Tipo_Periodo] P ON (M.ANUNCIO_TIPO_PERIODO = P.descripcion)
	LEFT JOIN [LA_SCALONETA].[Tipo_Estado_Anuncio] E ON (M.ANUNCIO_ESTADO = E.descripcion)
	WHERE M.ANUNCIO_CODIGO IS NOT NULL AND M.INMUEBLE_CODIGO IS NOT NULL
	END
GO


--SELECT DISTINCT(ANUNCIO_CODIGO) FROM gd_esquema.Maestra

--Medio de pago--
CREATE PROCEDURE [LA_SCALONETA].migrarMedioDePago AS
BEGIN
	INSERT INTO [LA_SCALONETA].[Medio_De_Pago] (descripcion)
	SELECT DISTINCT M.PAGO_ALQUILER_MEDIO_PAGO
	FROM [gd_esquema].Maestra M
	WHERE M.PAGO_ALQUILER_MEDIO_PAGO IS NOT NULL --Lo dejo con PAGO_ALQUILER porque en PAGO_VENTA todas sus filas son NULL
	END
GO


--TODO LO DE INMUEBLES--

CREATE PROCEDURE [LA_SCALONETA].migrarTipos_Estado_Inmueble AS
BEGIN
--Tipo inmueble--
	INSERT INTO [LA_SCALONETA].[Tipo_Inmueble] (descripcion)
	SELECT DISTINCT M.INMUEBLE_TIPO_INMUEBLE
	FROM [gd_esquema].Maestra M 
	WHERE M.INMUEBLE_TIPO_INMUEBLE IS NOT NULL

	--Tipo Estado Inmueble--
	INSERT INTO [LA_SCALONETA].[Tipo_Estado_Inmueble] (descripcion)
	SELECT DISTINCT M.INMUEBLE_ESTADO
	FROM [gd_esquema].Maestra M 
	WHERE M.INMUEBLE_ESTADO IS NOT NULL
END 
GO


CREATE PROCEDURE [LA_SCALONETA].migrarDatosInmueble AS
BEGIN
--Ambientes--
	INSERT INTO [LA_SCALONETA].[Ambientes] (descripcion)
	SELECT DISTINCT M.INMUEBLE_CANT_AMBIENTES
	FROM [gd_esquema].Maestra M 
	WHERE M.INMUEBLE_CANT_AMBIENTES IS NOT NULL

	--Orientacion--
	INSERT INTO [LA_SCALONETA].[Orientacion] (descripcion)
	SELECT DISTINCT M.INMUEBLE_ORIENTACION
	FROM [gd_esquema].Maestra M 
	WHERE M.INMUEBLE_ORIENTACION IS NOT NULL

	--Disposicion--
	INSERT INTO [LA_SCALONETA].[Disposicion] (descripcion)
	SELECT DISTINCT M.INMUEBLE_DISPOSICION
	FROM [gd_esquema].Maestra M 
	WHERE M.INMUEBLE_DISPOSICION IS NOT NULL
	END
GO


--Propietario--
CREATE PROCEDURE [LA_SCALONETA].migrarPropietario AS
BEGIN
	INSERT INTO [LA_SCALONETA].[Propietario] (nombre, apellido, DNI, fecha_registro, telefono, mail, fecha_nacimiento)
	SELECT DISTINCT M.PROPIETARIO_NOMBRE, M.PROPIETARIO_APELLIDO, M.PROPIETARIO_DNI, M.PROPIETARIO_FECHA_REGISTRO,M.PROPIETARIO_TELEFONO, M.PROPIETARIO_MAIL, M.PROPIETARIO_FECHA_NAC
	FROM [gd_esquema].[Maestra] M
	WHERE PROPIETARIO_DNI IS NOT NULL
	END
GO
--Caracteristicas
Create Procedure [LA_SCALONETA].migrarCaracteristica AS
	BEGIN
		INSERT INTO [LA_SCALONETA].[Caracteristicas]
		Values ('Cable')

		INSERT INTO [LA_SCALONETA].[Caracteristicas]
		Values ('Calefaccion')

		INSERT INTO [LA_SCALONETA].[Caracteristicas]
		Values ('Gas')

		INSERT INTO [LA_SCALONETA].[Caracteristicas]
		Values ('Wifi')
	END
GO


CREATE FUNCTION [LA_SCAlONETA].ObtenerIDBarrio(@barrio Nvarchar(255), @localidad NVARCHAR(255), @provincia NVARCHAR(255)) RETURNS INT AS
	BEGIN
		DECLARE @id_provincia int;
		Declare @id_localidad int;
		Declare @id_barrio int;

		Select @id_provincia = Id_Provincia 
		From [LA_SCALONETA].Provincia
		Where Descripcion = @provincia

		Select @id_localidad = Id_Localidad 
		From [LA_SCALONETA].Localidad
		Where Descripcion = @localidad and
			  Id_Provincia = @id_provincia

		Select @id_barrio = Id_Barrio
		From [LA_SCALONETA].Barrio
		Where Descripcion = @barrio and
			  Id_Localidad = @id_localidad

		RETURN @id_barrio;
	END
GO

--Inmueble--
CREATE PROCEDURE [LA_SCALONETA].migrarInmueble AS
BEGIN
	INSERT INTO [LA_SCALONETA].Inmueble (id_inmueble, id_tipo_inmueble, descripcion, direccion, id_barrio, id_ambientes, superficie, id_disposicion, id_orientacion, antiguedad, id_estado_inmueble, nombre, expensas)
	SELECT DISTINCT M.INMUEBLE_CODIGO, TI.id_tipo_inmueble, M.INMUEBLE_DESCRIPCION, M.INMUEBLE_DIRECCION,[LA_SCALONETA].ObtenerIDBarrio(M.INMUEBLE_BARRIO, M.INMUEBLE_LOCALIDAD, M.INMUEBLE_PROVINCIA), A.id_ambientes, M.INMUEBLE_SUPERFICIETOTAL, D.id_disposicion, O.id_orientacion, M.INMUEBLE_ANTIGUEDAD, E.id_estado_inmueble, M.INMUEBLE_NOMBRE, M.INMUEBLE_EXPESAS
	FROM [gd_esquema].Maestra M
	LEFT JOIN [LA_SCALONETA].Tipo_Inmueble TI ON (TI.descripcion = M.INMUEBLE_TIPO_INMUEBLE)
	--LEFT JOIN [LA_SCALONETA].Barrio B ON (B.descripcion = M.INMUEBLE_BARRIO)
	LEFT JOIN [LA_SCALONETA].Ambientes A ON (A.descripcion = M.INMUEBLE_CANT_AMBIENTES)
	LEFT JOIN [LA_SCALONETA].Disposicion D ON (D.descripcion = M.INMUEBLE_DISPOSICION)
	LEFT JOIN [LA_SCALONETA].Orientacion O ON (O.descripcion = M.INMUEBLE_ORIENTACION)
	LEFT JOIN [LA_SCALONETA].Tipo_Estado_Inmueble E ON (E.descripcion = M.INMUEBLE_ESTADO)
	WHERE M.INMUEBLE_CODIGO IS NOT NULL
	END
GO



--CaracteristicasXInmueble--
CREATE PROCEDURE [LA_SCALONETA].migrarCaracterXInmueble AS
	BEGIN
		INSERT INTO [LA_SCALONETA].[CaracteristicaXInmueble] (id_inmueble, id_caracteristica)
		SELECT DISTINCT --(
							--SELECT id_caracteristicas
							--FROM Caracteristicas
							--WHERE descripcion = 'Cable'
						--),
						
			   I.id_Inmueble,
			   C.id_caracteristicas
		FROM gd_esquema.Maestra M
		LEFT JOIN Inmueble I ON I.descripcion = M.INMUEBLE_DESCRIPCION
		LEFT JOIN Caracteristicas C ON C.descripcion = 'Cable'
		WHERE INMUEBLE_DESCRIPCION IS NOT NULL AND
			  INMUEBLE_CARACTERISTICA_CABLE = 1
		ORDER BY 2 ASC

		INSERT INTO [LA_SCALONETA].[CaracteristicaXInmueble] (id_inmueble, id_caracteristica)
		Select Distinct --(
							--SELECT id_caracteristicas
							--FROM Caracteristicas
							--WHERE Descripcion = 'Calefaccion'
						--),
			   I.id_inmueble,
			   C.id_caracteristicas
		FROM gd_esquema.Maestra M
		LEFT JOIN Inmueble I ON I.descripcion = M.INMUEBLE_DESCRIPCION
		LEFT JOIN Caracteristicas C ON C.descripcion = 'Calefaccion'
		WHERE INMUEBLE_DESCRIPCION IS NOT NULL AND
			  INMUEBLE_CARACTERISTICA_CALEFACCION = 1
		ORDER BY 2 ASC

		INSERT INTO [LA_SCALONETA].[CaracteristicaXInmueble] (id_inmueble, id_caracteristica)
		SELECT DISTINCT --(
							--SELECT id_caracteristicas
							--FROM Caracteristicas
							--Where Descripcion = 'Gas'
						--),
			   I.id_inmueble,
			   C.id_caracteristicas
		FROM gd_esquema.Maestra M
		LEFT JOIN Inmueble I ON I.descripcion = M.INMUEBLE_DESCRIPCION
		LEFT JOIN Caracteristicas C ON C.descripcion = 'Gas'
		WHERE INMUEBLE_DESCRIPCION IS NOT NULL AND
			  INMUEBLE_CARACTERISTICA_GAS = 1
		ORDER BY 2 ASC

		INSERT INTO [LA_SCALONETA].[CaracteristicaXInmueble] (id_inmueble, id_caracteristica)
		SELECT DISTINCT --(
							--SELECT id_caracteristicas
							--FROM Caracteristicas
							--Where Descripcion = 'Wifi'
						--),
			   I.id_inmueble,
			   C.id_caracteristicas
		From gd_esquema.Maestra M
		LEFT JOIN Inmueble I ON I.descripcion = M.INMUEBLE_DESCRIPCION
		LEFT JOIN Caracteristicas C ON C.descripcion = 'Gas'
		WHERE INMUEBLE_DESCRIPCION IS NOT NULL AND
			  INMUEBLE_CARACTERISTICA_WIFI = 1
		ORDER BY 2 ASC
	END
GO


--InmuebleXPropietario
CREATE PROCEDURE [LA_SCALONETA].migrarInmuebleXProp AS
BEGIN
	INSERT INTO [LA_SCALONETA].InmuebleXPropietario(id_inmueble, id_propietario)
	SELECT DISTINCT I.id_inmueble, P.id_propietario
	FROM gd_esquema.Maestra M
	LEFT JOIN [LA_SCALONETA].Inmueble I ON I.descripcion = M.INMUEBLE_DESCRIPCION
	LEFT JOIN [LA_SCALONETA].Propietario P  ON P.DNI = M.PROPIETARIO_DNI
	WHERE I.id_inmueble IS NOT NULL AND P.id_propietario IS NOT NULL
	END 
GO

---------VENTA INMUEBLE--------------
--Pago venta--
CREATE PROCEDURE [LA_SCALONETA].migrarPagoVenta AS
BEGIN
	INSERT INTO [LA_SCALONETA].[Pago_Venta] (id_venta, importe, id_moneda, cotizacion, id_medio_pago )
	SELECT DISTINCT  V.id_venta, M.PAGO_VENTA_IMPORTE, Mon.id_moneda, M.PAGO_VENTA_COTIZACION, MP.id_medio_pago
	FROM [gd_esquema].Maestra M
	INNER JOIN [LA_SCALONETA].Moneda Mon ON (Mon.tipo_moneda=M.PAGO_VENTA_MONEDA )
	INNER JOIN [LA_SCALONETA].Medio_De_Pago MP ON (MP.descripcion = M.PAGO_VENTA_MEDIO_PAGO)
	INNER JOIN [LA_SCALONETA].Venta_Inmueble V ON (V.codigo = M.VENTA_CODIGO)
	WHERE M.PAGO_VENTA_IMPORTE IS NOT NULL
	END
GO

GO
--Comprador--
CREATE PROCEDURE [LA_SCALONETA].migrarComprador AS
BEGIN
	INSERT INTO [LA_SCALONETA].[Comprador] (DNI, nombre, apellido,  fecha_registro, telefono, mail, fecha_nacimiento)
	SELECT DISTINCT M.COMPRADOR_DNI,M.COMPRADOR_NOMBRE, M.COMPRADOR_APELLIDO, M.COMPRADOR_FECHA_REGISTRO,M.COMPRADOR_TELEFONO, M.COMPRADOR_MAIL, M.COMPRADOR_FECHA_NAC
	FROM [gd_esquema].[Maestra] M
	WHERE COMPRADOR_DNI IS NOT NULL
	END
GO

--Venta inmueble--
CREATE PROCEDURE [LA_SCALONETA].migrarVentaInmueble AS
BEGIN
	INSERT INTO [LA_SCALONETA].Venta_Inmueble (codigo, id_anuncio, id_comprador, fecha_venta, precio_venta, id_moneda, comision_inmobiliaria)
	SELECT DISTINCT M.VENTA_CODIGO, A.id_anuncio, C.id_comprador, M.VENTA_FECHA, M.VENTA_PRECIO_VENTA, Mon.id_moneda, M.VENTA_COMISION
	FROM [gd_esquema].Maestra M
	INNER JOIN [LA_SCALONETA].Anuncio A ON (M.ANUNCIO_CODIGO = A.codigo)
	INNER JOIN [LA_SCALONETA].Comprador C ON (M.COMPRADOR_DNI = C.dni) 
	INNER JOIN [LA_SCALONETA].Moneda Mon ON  (M.VENTA_MONEDA = Mon.tipo_moneda)
	WHERE M.VENTA_CODIGO IS NOT NULL 
	END
GO


--SELECT VENTA_CODIGO FROM [gd_esquema].Maestra --257457

--SELECT * from [LA_SCALONETA].Venta_Inmueble --16232

---Inquilino---

CREATE PROCEDURE [LA_SCALONETA].migrarInquilino
AS
BEGIN
    INSERT INTO LA_SCALONETA.Inquilino (fecha_nacimiento, mail, telefono, fecha_registro, DNI, apellido, nombre)
    SELECT DISTINCT
        INQUILINO_FECHA_NAC,
        INQUILINO_MAIL,
        INQUILINO_TELEFONO,
        INQUILINO_FECHA_REGISTRO,
        INQUILINO_DNI,
        INQUILINO_APELLIDO,
        INQUILINO_NOMBRE
    FROM
        gd_esquema.Maestra
	WHERE INQUILINO_DNI IS NOT NULL
END
GO

--Tipo_Estado_Alquiler--
CREATE PROCEDURE [LA_SCALONETA].migrarTipoEstadoAlquiler
AS
BEGIN 
	INSERT INTO LA_SCALONETA.Tipo_Estado_Alquiler (descripcion)
	SELECT DISTINCT 
		ALQUILER_ESTADO
	FROM 
		gd_esquema.Maestra
	WHERE ALQUILER_ESTADO IS NOT NULL
END
GO

--Detalle Importe ver--
CREATE PROCEDURE [LA_SCALONETA].migrarDetalleImporte AS
BEGIN 
	INSERT INTO [LA_SCALONETA].Detalle_Importe (nro_periodo_inicio, nro_periodo_fin, precio_inicial, id_alquiler)
	SELECT DISTINCT 
		DETALLE_ALQ_NRO_PERIODO_INI, 
		DETALLE_ALQ_NRO_PERIODO_FIN,
		DETALLE_ALQ_PRECIO,
		A.id_alquiler
	FROM gd_esquema.Maestra M
	LEFT JOIN [LA_SCALONETA].Alquiler A ON A.id_alquiler = M.ALQUILER_CODIGO
	WHERE M.DETALLE_ALQ_NRO_PERIODO_FIN IS NOT NULL
END
GO

--Alquiler--

CREATE PROCEDURE [LA_SCALONETA].migrarAlquileres AS
BEGIN
	INSERT INTO [LA_SCALONETA].Alquiler (id_alquiler, fecha_inicio, fecha_fin, duracion_periodo, deposito, comision, gastos_averiguaciones, id_inquilino, id_estado_alquiler, id_anuncio)
	SELECT DISTINCT
	  M.ALQUILER_CODIGO,
      M.ALQUILER_FECHA_INICIO,
      M.ALQUILER_FECHA_FIN,
      M.ALQUILER_CANT_PERIODOS,
      M.ALQUILER_DEPOSITO,
      M.ALQUILER_COMISION,
      M.ALQUILER_GASTOS_AVERIGUA,
	  I.id_inquilino,
	  E.id_estado_alquiler,
	  D.id_anuncio
	FROM gd_esquema.Maestra M
	LEFT JOIN LA_SCALONETA.Inquilino I ON I.DNI = M.INQUILINO_DNI AND I.apellido = M.INQUILINO_APELLIDO
	LEFT JOIN LA_SCALONETA.Tipo_Estado_Alquiler E ON E.descripcion= M.ALQUILER_ESTADO
	LEFT JOIN LA_SCALONETA.Anuncio D ON D.id_anuncio = M.ANUNCIO_CODIGO
	WHERE  M.ALQUILER_CODIGO IS NOT NULL
	ORDER BY M.ALQUILER_CODIGO
END
GO


--Pago Alquiler--
CREATE PROCEDURE [LA_SCALONETA].migrarPagoAlquiler AS
BEGIN
	INSERT INTO [LA_SCALONETA].Pago_Alquiler (id_pago_alquiler, fecha_pago, fecha_vencimiento, nro_periodo, descripcion_periodo, fecha_inicio, fecha_fin, importe, id_alquiler, id_medio_pago)
	SELECT DISTINCT 
		PAGO_ALQUILER_CODIGO,
        PAGO_ALQUILER_FECHA,
        PAGO_ALQUILER_FECHA_VENCIMIENTO,
        PAGO_ALQUILER_NRO_PERIODO,
        PAGO_ALQUILER_DESC,
        PAGO_ALQUILER_FEC_INI,
        PAGO_ALQUILER_FEC_FIN,
        PAGO_ALQUILER_IMPORTE,
		A.id_alquiler,
        Mdp.id_medio_pago
	FROM gd_esquema.Maestra M
	LEFT JOIN [LA_SCALONETA].Medio_De_Pago MdP ON MdP.descripcion = M.PAGO_ALQUILER_MEDIO_PAGO
	LEFT JOIN [LA_SCALONETA].Alquiler A ON A.id_alquiler = M.ALQUILER_CODIGO
	WHERE PAGO_ALQUILER_CODIGO IS NOT NULL
END
GO


--ORDEN DE EJECUCION--

GO 
BEGIN TRANSACTION

	-- UBICACION
	EXEC [LA_SCALONETA].migrarProvincia;
	EXEC [LA_SCALONETA].migrarLocalidad;
	EXEC [LA_SCALONETA].migrarBarrio;

	-- PERSONAS
	EXEC [LA_SCALONETA].migrarPropietario;
	EXEC [LA_SCALONETA].migrarInquilino;
	EXEC [LA_SCALONETA].migrarComprador;

	-- MONEDA
	EXEC [LA_SCALONETA].migrarMoneda;

	-- MEDIOS DE PAGOS
	EXEC [LA_SCALONETA].migrarMedioDePago;


	-- INMUEBLE
	EXEC [LA_SCALONETA].migrarDatosInmueble;
	EXEC [LA_SCALONETA].migrarTipos_Estado_Inmueble;
	EXEC [LA_SCALONETA].migrarInmueble;

	-- AGENTE INMOBILIARIO
	EXEC [LA_SCALONETA].migrarSucursal;
	EXEC [LA_SCALONETA].migrarAgente;


	-- CARACTERISTICAS
	EXEC [LA_SCALONETA].migrarCaracteristica;

	-- ANUNCIO
	EXEC [LA_SCALONETA].migrarDatosAnuncio;
	EXEC [LA_SCALONETA].migrarAnuncio;

	-- VENTA
	EXEC [LA_SCALONETA].migrarVentaInmueble;
	EXEC [LA_SCALONETA].migrarPagoVenta;

	-- ALQUILER
	EXEC [LA_SCALONETA].migrarTipoEstadoAlquiler;
	EXEC [LA_SCALONETA].migrarAlquileres;
	EXEC [LA_SCALONETA].migrarPagoAlquiler;
	EXEC [LA_SCALONETA].migrarDetalleImporte;

	--RUPTURA DE TABLAS
	EXEC [LA_SCALONETA].migrarCaracterXInmueble;
	EXEC [LA_SCALONETA].migrarInmuebleXProp;
	COMMIT TRANSACTION

--SELECT * FROM [LA_SCALONETA].
