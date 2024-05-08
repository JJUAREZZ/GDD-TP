USE GD2C2023
GO

/*
---Esquema-----
--Eliminacion si existe previamente--
IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'LA_SCALONETA')
  DROP SCHEMA LA_SCALONETA
GO

--Creaci√≥n--
CREATE SCHEMA [LA_SCALONETA]
GO
*/

--Eliminacion de procedure
IF OBJECT_ID ('[LA_SCALONETA].migrarTipoMonedaBI') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarTipoMonedaBI;
IF OBJECT_ID ('[LA_SCALONETA].migrarTipoOperacion_BI') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarTipoOperacion_BI;
IF OBJECT_ID ('[LA_SCALONETA].migrarAmbientes_BI') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarAmbientes_BI;
IF OBJECT_ID ('[LA_SCALONETA].migrarTipoInmuebleBI') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarTipoInmuebleBI;
IF OBJECT_ID ('[LA_SCALONETA].MigrarTiempo_BI') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].MigrarTiempo_BI;
IF OBJECT_ID ('[LA_SCALONETA].MigrarRangoEtario_BI') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].MigrarRangoEtario_BI;
IF OBJECT_ID ('[LA_SCALONETA].MigrarRangoM2_BI') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].MigrarRangoM2_BI;
IF OBJECT_ID ('[LA_SCALONETA].migrarUbicacion_BI') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].MigrarUbicacion_BI;
IF OBJECT_ID ('[LA_SCALONETA].MigrarAnuncios_BI') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].MigrarAnuncios_BI;
IF OBJECT_ID ('[LA_SCALONETA].migrarSucursal_BI') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarSucursal_BI;
IF OBJECT_ID ('[LA_SCALONETA].migrarVentaInmueble_BI') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarVentaInmueble_BI;
IF OBJECT_ID ('[LA_SCALONETA].migrarAlquileres_BI') IS NOT NULL
   DROP PROCEDURE [LA_SCALONETA].migrarAlquileres_BI;


-- Eliminacion de Funciones
IF OBJECT_ID ('[LA_SCALONETA].FX_CALCULAR_RANGO_METROS') IS NOT NULL
   DROP FUNCTION [LA_SCALONETA].FX_CALCULAR_RANGO_METROS;
IF OBJECT_ID ('[LA_SCALONETA].FX_CALCULAR_RANGO_ETARIO_INQUILINO') IS NOT NULL
   DROP FUNCTION [LA_SCALONETA].FX_CALCULAR_RANGO_ETARIO_INQUILINO;
IF OBJECT_ID ('[LA_SCALONETA].FX_CALCULAR_RANGO_ETARIO_EMPLEADO') IS NOT NULL
   DROP FUNCTION [LA_SCALONETA].FX_CALCULAR_RANGO_ETARIO_EMPLEADO;
   
   
   


--Eliminacion tablas
IF OBJECT_ID ('[LA_SCALONETA].[BI_ANUNCIO]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[BI_ANUNCIO];

IF OBJECT_ID ('[LA_SCALONETA].[BI_ALQUILER]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[BI_ALQUILER];

IF OBJECT_ID ('[LA_SCALONETA].[BI_OPERACION]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[BI_OPERACION];

IF OBJECT_ID ('[LA_SCALONETA].[BI_TIPO_OPERACION]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[BI_TIPO_OPERACION];

IF OBJECT_ID ('[LA_SCALONETA].[BI_TIEMPO]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[BI_TIEMPO];

IF OBJECT_ID ('[LA_SCALONETA].[BI_SUCURSAL]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[BI_SUCURSAL];

IF OBJECT_ID ('[LA_SCALONETA].[BI_UBICACION]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[BI_UBICACION];

IF OBJECT_ID ('[LA_SCALONETA].[BI_VentaInmueble]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[BI_VentaInmueble];

IF OBJECT_ID ('[LA_SCALONETA].[BI_AMBIENTES]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[BI_AMBIENTES];

IF OBJECT_ID ('[LA_SCALONETA].[BI_TIPO_MONEDA]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[BI_TIPO_MONEDA];

IF OBJECT_ID ('[LA_SCALONETA].[BI_TIPO_INMUEBLE]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[BI_TIPO_INMUEBLE];

IF OBJECT_ID ('[LA_SCALONETA].[BI_RANGO_ETARIO]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[BI_RANGO_ETARIO];

IF OBJECT_ID ('[LA_SCALONETA].[BI_RANGO_M2]', 'U') IS NOT NULL
   DROP TABLE [LA_SCALONETA].[BI_RANGO_M2];

--Eliminacion vistas

IF OBJECT_ID('[LA_SCALONETA].VISTA_ANUNCIOS_DURACION_PROMEDIO ', 'V') IS NOT NULL
    DROP VIEW [LA_SCALONETA].VISTA_ANUNCIOS_DURACION_PROMEDIO ;

IF OBJECT_ID('[LA_SCALONETA].VISTA_PROMEDIO_PRECIO_ANUNCIOS_INMUEBLES', 'V') IS NOT NULL
    DROP VIEW [LA_SCALONETA].VISTA_PROMEDIO_PRECIO_ANUNCIOS_INMUEBLES;

IF OBJECT_ID('[LA_SCALONETA].VISTA_BARRIOS_MAS_ELEGIDOS', 'V') IS NOT NULL
    DROP VIEW [LA_SCALONETA].VISTA_BARRIOS_MAS_ELEGIDOS;

IF OBJECT_ID('[LA_SCALONETA].VISTA_INCUMPLIMIENTO_DE_PAGO_ALQUILERES', 'V') IS NOT NULL
    DROP VIEW [LA_SCALONETA].VISTA_INCUMPLIMIENTO_DE_PAGO_ALQUILERES;

IF OBJECT_ID('[LA_SCALONETA].VISTA_MONTO_TOTAL_CIERRE_CONTRATOS', 'V') IS NOT NULL
    DROP VIEW [LA_SCALONETA].VISTA_MONTO_TOTAL_CIERRE_CONTRATOS;

IF OBJECT_ID('[LA_SCALONETA].VISTA_OPERACIONES_CONCRETADAS', 'V') IS NOT NULL
    DROP VIEW [LA_SCALONETA].VISTA_OPERACIONES_CONCRETADAS;

IF OBJECT_ID('[LA_SCALONETA].VISTA_PROMEDIO_COMISION', 'V') IS NOT NULL
    DROP VIEW [LA_SCALONETA].VISTA_PROMEDIO_COMISION;

IF OBJECT_ID('[LA_SCALONETA].VISTA_PROMEDIO_M2', 'V') IS NOT NULL
    DROP VIEW [LA_SCALONETA].VISTA_PROMEDIO_M2;

IF OBJECT_ID('[LA_SCALONETA].VISTA_PROMEDIO_INCREMENTO_ALQUILER', 'V') IS NOT NULL
    DROP VIEW [LA_SCALONETA].VISTA_PROMEDIO_INCREMENTO_ALQUILER;
	
	
	



CREATE TABLE [LA_SCALONETA].BI_ANUNCIO(
	id_bi_anuncio INT IDENTITY,
	id_bi_tiempo INT,
	id_bi_tipo_operacion INT,
	id_bi_ubicacion INT,
	id_bi_ambientes INT,
	id_bi_tipo_inmueble INT,
	id_rango_m2 INT,
	id_bi_tipo_moneda INT,
	id_bi_sucursal INT,
	id_bi_rango_etario INT,
	fecha_publicacion DATE,
	fecha_finalizacion DATE,
	precio FLOAT,
	
	
	
)
ALTER TABLE [LA_SCALONETA].BI_ANUNCIO ADD CONSTRAINT PK_BI_ANUNCIO PRIMARY KEY (id_bi_anuncio)



CREATE TABLE [LA_SCALONETA].BI_UBICACION(
	id_bi_ubicacion INT IDENTITY,
	provincia VARCHAR(100),
	localidad VARCHAR(100),
	barrio VARCHAR(100)
)
ALTER TABLE [LA_SCALONETA].BI_UBICACION ADD CONSTRAINT PK_BI_UBICACION PRIMARY KEY (id_bi_ubicacion)

CREATE TABLE [LA_SCALONETA].BI_TIPO_OPERACION(
	id_tipo_operacion INT IDENTITY,
	descripcion NVARCHAR(100)
)
ALTER TABLE [LA_SCALONETA].BI_TIPO_OPERACION ADD CONSTRAINT PK_BI_TIPO_OPERACION PRIMARY KEY (id_tipo_operacion)

CREATE TABLE [LA_SCALONETA].BI_TIEMPO(
	id_tiempo INT IDENTITY,
	anio INT,
	cuatrimestre INT,
	mes VARCHAR(100)
)
ALTER TABLE [LA_SCALONETA].BI_TIEMPO ADD CONSTRAINT PK_BI_TIEMPO PRIMARY KEY (id_tiempo)

CREATE TABLE [LA_SCALONETA].BI_ALQUILER(
	id_bi_alquiler INT IDENTITY,
	id_bi_tiempo INT,
	id_bi_ubicacion INT,
	id_bi_rango_etario INT, 
	id_bi_tipo_operacion INT,
	id_bi_sucursal INT,
	fecha_pago DATE,
	fecha_vencimiento DATE,
	estado VARCHAR(100),
	comision FLOAT,
	pago FLOAT
)
ALTER TABLE [LA_SCALONETA].BI_ALQUILER ADD CONSTRAINT PK_BI_ALQUILER PRIMARY KEY (id_bi_alquiler)



CREATE TABLE [LA_SCALONETA].BI_VentaInmueble(
	id_bi_VentaInmueble INT IDENTITY,
	id_bi_tiempo INT,
	id_bi_tipo_inmueble INT,
	id_bi_ubicacion INT,
	id_bi_sucursal INT,
--	id_bi_tipo_moneda INT,
	id_bi_tipo_operacion INT,
	venta_precio FLOAT,
	venta_comision FLOAT,
	superficie FLOAT
)
ALTER TABLE [LA_SCALONETA].BI_VentaInmueble ADD CONSTRAINT PK_BI_VentaInmueble PRIMARY KEY (id_bi_VentaInmueble)



CREATE TABLE [LA_SCALONETA].BI_SUCURSAL(
	id_bi_sucursal INT NOT NULL,
	id_bi_ubicacion INT,
	razon_social VARCHAR(1000)
)
ALTER TABLE [LA_SCALONETA].BI_SUCURSAL ADD CONSTRAINT PK_BI_SUCURSAL PRIMARY KEY (id_bi_sucursal)



CREATE TABLE [LA_SCALONETA].BI_TIPO_MONEDA(
	id_tipo_moneda INT IDENTITY,
	descripcion NVARCHAR(100)
)
ALTER TABLE [LA_SCALONETA].BI_TIPO_MONEDA ADD CONSTRAINT PK_BI_TIPO_MONEDA PRIMARY KEY (id_tipo_moneda)


CREATE TABLE [LA_SCALONETA].BI_RANGO_ETARIO(
	id_bi_rango_etario INT IDENTITY,
	limite_superior INT,
	limite_inferior INT,
	rango_etario VARCHAR(100)
)
ALTER TABLE [LA_SCALONETA].BI_RANGO_ETARIO ADD CONSTRAINT PK_BI_RANGO_ETARIO PRIMARY KEY (id_bi_rango_etario)


CREATE TABLE [LA_SCALONETA].BI_AMBIENTES(
	id_bi_ambientes INT IDENTITY,
	descripcion NVARCHAR(100)
)
ALTER TABLE [LA_SCALONETA].BI_AMBIENTES ADD CONSTRAINT PK_BI_AMBIENTES PRIMARY KEY (id_bi_ambientes)


CREATE TABLE [LA_SCALONETA].BI_TIPO_INMUEBLE(
	id_bi_tipo_inmueble INT IDENTITY,
	descripcion VARCHAR(100)
)
ALTER TABLE [LA_SCALONETA].BI_TIPO_INMUEBLE ADD CONSTRAINT PK_BI_TIPO_INMUEBLE PRIMARY KEY (id_bi_tipo_inmueble)


CREATE TABLE [LA_SCALONETA].BI_RANGO_M2(
	id_bi_rangoM2 INT IDENTITY,
	limite_superior INT,
	limite_inferior INT,
	rango_m2 VARCHAR(100)
)
ALTER TABLE [LA_SCALONETA].BI_RANGO_M2 ADD CONSTRAINT PK_BI_RANGO_M2 PRIMARY KEY (id_bi_rangoM2)


-- FKs DE TODAS LAS TABLAS

--Anuncio
ALTER TABLE [LA_SCALONETA].BI_ANUNCIO ADD CONSTRAINT BI_ANUNCIO_tipo_operacion FOREIGN KEY (id_bi_tipo_operacion) REFERENCES [LA_SCALONETA].BI_TIPO_OPERACION(id_tipo_operacion);
ALTER TABLE [LA_SCALONETA].BI_ANUNCIO ADD CONSTRAINT BI_ANUNCIO_ubicacion FOREIGN KEY (id_bi_ubicacion) REFERENCES [LA_SCALONETA].BI_UBICACION(id_bi_ubicacion);
ALTER TABLE [LA_SCALONETA].BI_ANUNCIO ADD CONSTRAINT BI_ANUNCIO_tiempo FOREIGN KEY (id_bi_tiempo) REFERENCES [LA_SCALONETA].BI_TIEMPO(id_tiempo);
ALTER TABLE [LA_SCALONETA].BI_ANUNCIO ADD CONSTRAINT BI_ANUNCIO_ambientes FOREIGN KEY (id_bi_ambientes) REFERENCES [LA_SCALONETA].BI_AMBIENTES(id_bi_ambientes);
ALTER TABLE [LA_SCALONETA].BI_ANUNCIO ADD CONSTRAINT BI_ANUNCIO_rango_m2 FOREIGN KEY (id_rango_m2) REFERENCES [LA_SCALONETA].BI_RANGO_M2(id_bi_rangoM2);
ALTER TABLE [LA_SCALONETA].BI_ANUNCIO ADD CONSTRAINT BI_ANUNCIO_tipo_inmueble FOREIGN KEY (id_bi_tipo_inmueble) REFERENCES [LA_SCALONETA].BI_TIPO_INMUEBLE(id_bi_tipo_inmueble);
ALTER TABLE [LA_SCALONETA].BI_ANUNCIO ADD CONSTRAINT BI_ANUNCIO_rango_etario FOREIGN KEY (id_bi_rango_etario) REFERENCES [LA_SCALONETA].BI_RANGO_ETARIO(id_bi_rango_etario);
ALTER TABLE [LA_SCALONETA].BI_ANUNCIO ADD CONSTRAINT BI_ANUNCIO_sucursal FOREIGN KEY (id_bi_sucursal) REFERENCES [LA_SCALONETA].BI_SUCURSAL(id_bi_sucursal);
ALTER TABLE [LA_SCALONETA].BI_ANUNCIO ADD CONSTRAINT BI_ANUNCIO_moneda FOREIGN KEY (id_bi_tipo_moneda) REFERENCES [LA_SCALONETA].BI_TIPO_MONEDA(id_tipo_moneda);


--Alquiler
ALTER TABLE [LA_SCALONETA].BI_ALQUILER ADD CONSTRAINT BI_ALQUILER_tiempo FOREIGN KEY (id_bi_tiempo) REFERENCES [LA_SCALONETA].BI_TIEMPO(id_tiempo);
ALTER TABLE [LA_SCALONETA].BI_ALQUILER ADD CONSTRAINT BI_ALQUILER_ubicacion FOREIGN KEY (id_bi_ubicacion) REFERENCES [LA_SCALONETA].BI_UBICACION(id_bi_ubicacion);
ALTER TABLE [LA_SCALONETA].BI_ALQUILER ADD CONSTRAINT BI_ALQUILER_rango_etario FOREIGN KEY (id_bi_rango_etario) REFERENCES [LA_SCALONETA].BI_RANGO_ETARIO(id_bi_rango_etario);
ALTER TABLE [LA_SCALONETA].BI_ALQUILER ADD CONSTRAINT BI_ALQUILER_tipo_operacion FOREIGN KEY (id_bi_tipo_operacion) REFERENCES [LA_SCALONETA].BI_TIPO_OPERACION(id_tipo_operacion);
ALTER TABLE [LA_SCALONETA].BI_ALQUILER ADD CONSTRAINT BI_ALQUILER_sucursal FOREIGN KEY (id_bi_sucursal) REFERENCES [LA_SCALONETA].BI_SUCURSAL(id_bi_sucursal);


--Venta Inmueble
ALTER TABLE [LA_SCALONETA].BI_VentaInmueble ADD CONSTRAINT BI_VentaInmueble_tiempo FOREIGN KEY (id_bi_tiempo) REFERENCES [LA_SCALONETA].BI_TIEMPO(id_tiempo);
ALTER TABLE [LA_SCALONETA].BI_VentaInmueble ADD CONSTRAINT BI_VentaInmueble_tipo_inmueble FOREIGN KEY (id_bi_tipo_inmueble) REFERENCES [LA_SCALONETA].BI_TIPO_INMUEBLE(id_bi_tipo_inmueble);
ALTER TABLE [LA_SCALONETA].BI_VentaInmueble ADD CONSTRAINT BI_VentaInmueble_ubicacion FOREIGN KEY (id_bi_ubicacion) REFERENCES [LA_SCALONETA].BI_UBICACION(id_bi_ubicacion);
ALTER TABLE [LA_SCALONETA].BI_VentaInmueble ADD CONSTRAINT BI_VentaInmueble_sucursal FOREIGN KEY (id_bi_sucursal) REFERENCES [LA_SCALONETA].BI_SUCURSAL(id_bi_sucursal);
ALTER TABLE [LA_SCALONETA].BI_VentaInmueble ADD CONSTRAINT BI_VentaInmueble_tipo_operacion FOREIGN KEY (id_bi_tipo_operacion) REFERENCES [LA_SCALONETA].BI_TIPO_OPERACION(id_tipo_operacion);




--Sucursal
ALTER TABLE [LA_SCALONETA].BI_SUCURSAL ADD CONSTRAINT BI_SUCURSAL_ubicacion FOREIGN KEY (id_bi_ubicacion) REFERENCES [LA_SCALONETA].BI_UBICACION(id_bi_ubicacion);


-- MiIGRACION DE TABLAS

--TipoMoneda
GO
CREATE PROCEDURE [LA_SCALONETA].migrarTipoMonedaBI
AS
BEGIN 
	INSERT INTO LA_SCALONETA.BI_TIPO_MONEDA
	SELECT tipo_moneda FROM [LA_SCALONETA].Moneda
END


GO
CREATE PROCEDURE [LA_SCALONETA].migrarTipoInmuebleBI
AS
BEGIN 
	INSERT INTO LA_SCALONETA.BI_TIPO_INMUEBLE
	SELECT descripcion FROM [LA_SCALONETA].Tipo_Inmueble
END


GO
CREATE PROCEDURE [LA_SCALONETA].migrarAmbientes_BI
AS
BEGIN 
	INSERT INTO LA_SCALONETA.BI_AMBIENTES
	SELECT descripcion FROM [LA_SCALONETA].Ambientes
END

GO
CREATE PROCEDURE [LA_SCALONETA].migrarTipoOperacion_BI
AS
BEGIN 
	INSERT INTO LA_SCALONETA.BI_TIPO_OPERACION
	SELECT descripcion FROM [LA_SCALONETA].Tipo_Operacion
END


GO


--Tiempo
CREATE PROCEDURE [LA_SCALONETA].MigrarTiempo_BI
AS
BEGIN
	INSERT INTO [LA_SCALONETA].BI_TIEMPO(anio, cuatrimestre, mes)
	SELECT
		YEAR(fecha_publicacion),
		DATEPART(QUARTER, fecha_publicacion),
		MONTH(fecha_publicacion)
		
	FROM [LA_SCALONETA].Anuncio
	UNION 
		SELECT
			YEAR(fecha_venta),
			DATEPART(QUARTER, fecha_venta),
			MONTH(fecha_venta)
		FROM [LA_SCALONETA].Venta_Inmueble
END 
GO


GO
-- Rango Etario
CREATE PROCEDURE [LA_SCALONETA].MigrarRangoEtario_BI
AS
BEGIN
	INSERT INTO [LA_SCALONETA].BI_RANGO_ETARIO (LIMITE_INFERIOR, LIMITE_SUPERIOR, RANGO_ETARIO)
	VALUES (0, 24,'<25')
	INSERT INTO [LA_SCALONETA].BI_RANGO_ETARIO (LIMITE_INFERIOR, LIMITE_SUPERIOR, RANGO_ETARIO)
	VALUES (25, 34, '25-35')
	INSERT INTO [LA_SCALONETA].BI_RANGO_ETARIO (LIMITE_INFERIOR, LIMITE_SUPERIOR, RANGO_ETARIO)
	VALUES (35, 54, '35-55')
	INSERT INTO [LA_SCALONETA].BI_RANGO_ETARIO (LIMITE_INFERIOR, LIMITE_SUPERIOR, RANGO_ETARIO)
	VALUES (55, 200,'>55')
END
GO


-- Rango M2
CREATE PROCEDURE [LA_SCALONETA].MigrarRangoM2_BI
AS
BEGIN
	INSERT INTO [LA_SCALONETA].BI_RANGO_M2 (LIMITE_INFERIOR, LIMITE_SUPERIOR, rango_m2)
	VALUES (0, 34,'<35')
	INSERT INTO [LA_SCALONETA].BI_RANGO_M2 (LIMITE_INFERIOR, LIMITE_SUPERIOR, rango_m2)
	VALUES (35, 54, '35-55')
	INSERT INTO [LA_SCALONETA].BI_RANGO_M2 (LIMITE_INFERIOR, LIMITE_SUPERIOR, rango_m2)
	VALUES (55, 74, '55-75')
	INSERT INTO [LA_SCALONETA].BI_RANGO_M2 (LIMITE_INFERIOR, LIMITE_SUPERIOR, rango_m2)
	VALUES (75, 99,'75-100')
	INSERT INTO [LA_SCALONETA].BI_RANGO_M2 (LIMITE_INFERIOR, LIMITE_SUPERIOR, rango_m2)
	VALUES (100, 1000000,'>100')
END
GO

GO
CREATE PROCEDURE [LA_SCALONETA].migrarUbicacion_BI
AS 
BEGIN

	INSERT INTO [LA_SCALONETA].BI_UBICACION(provincia, localidad, barrio)
	SELECT  P.descripcion , L.descripcion ,   b.descripcion 
	FROM [LA_SCALONETA].Barrio B
	JOIN [LA_SCALONETA].Localidad L ON B.id_localidad = L.id_localidad
	JOIN [LA_SCALONETA].Provincia P ON L.id_provincia = P.id_provincia
	WHERE NOT EXISTS (
				SELECT 1
				FROM [LA_SCALONETA].BI_UBICACION BU2
				WHERE B.descripcion = BU2.barrio AND
				      P.descripcion = BU2.provincia AND
					  L.descripcion = BU2.localidad
			  ) 
END 


GO
CREATE PROCEDURE [LA_SCALONETA].migrarSucursal_BI
AS 
BEGIN

	INSERT INTO [LA_SCALONETA].BI_SUCURSAL(id_bi_sucursal ,razon_social, id_bi_ubicacion)
	SELECT  Distinct s.id_sucursal, s.nombre, (SELECT id_bi_ubicacion FROM [LA_SCALONETA].BI_UBICACION BU WHERE BU.localidad = L.descripcion AND BU.provincia=P.descripcion)
	FROM [LA_SCALONETA].Sucursal S
	JOIN [LA_SCALONETA].Localidad L ON S.id_localidad = L.id_localidad
	JOIN [LA_SCALONETA].Provincia P ON S.id_provincia = P.id_provincia
END	




GO
CREATE FUNCTION [LA_SCALONETA].FX_CALCULAR_RANGO_METROS(@INMUEBLE INT)
RETURNS INT
BEGIN
	DECLARE @SUPERFICIE numeric(18, 2)
	DECLARE @ID_RANGO_METROS INT

	SET @SUPERFICIE = (SELECT i.superficie
					   FROM [LA_SCALONETA].inmueble i
					   WHERE i.id_inmueble = @INMUEBLE)

	IF @SUPERFICIE < 35
		SET @ID_RANGO_METROS = 1
	ELSE IF @SUPERFICIE BETWEEN 35 AND 55
		SET @ID_RANGO_METROS = 2
	ELSE IF @SUPERFICIE BETWEEN 55 AND 75
		SET @ID_RANGO_METROS = 3
	ELSE IF @SUPERFICIE BETWEEN 75 AND 100
		SET @ID_RANGO_METROS = 4
	ELSE IF @SUPERFICIE > 100
		SET @ID_RANGO_METROS = 5

RETURN @ID_RANGO_METROS
END
GO

CREATE FUNCTION [LA_SCALONETA].FX_CALCULAR_RANGO_ETARIO_INQUILINO(@INQUILINO INT)
RETURNS INT
BEGIN
	DECLARE @FECHA_NACIMIENTO SMALLDATETIME
	DECLARE @EDAD INT
	DECLARE @ID_RANGO_ETARIO_INQUILINO INT
	SET @FECHA_NACIMIENTO = (SELECT fecha_nacimiento
							FROM [LA_SCALONETA].Inquilino
							WHERE id_inquilino = @INQUILINO)

	SET @EDAD = YEAR(GETDATE()) - YEAR(@FECHA_NACIMIENTO)

	IF @EDAD < 25
		SET @ID_RANGO_ETARIO_INQUILINO = 1
	ELSE IF @EDAD BETWEEN  25 AND 35
		SET @ID_RANGO_ETARIO_INQUILINO = 2
	ELSE IF @EDAD BETWEEN 35 AND 50
		SET @ID_RANGO_ETARIO_INQUILINO = 3
	ELSE IF @EDAD > 50
		SET @ID_RANGO_ETARIO_INQUILINO = 4

RETURN @ID_RANGO_ETARIO_INQUILINO
END
GO

CREATE FUNCTION [LA_SCALONETA].FX_CALCULAR_RANGO_ETARIO_EMPLEADO(@EMPLEADO INT)
RETURNS INT
BEGIN
	DECLARE @FECHA_NACIMIENTO SMALLDATETIME
	DECLARE @EDAD INT
	DECLARE @ID_RANGO_ETARIO_EMPLEADO INT
	SET @FECHA_NACIMIENTO = (SELECT fecha_nacimiento
							FROM [LA_SCALONETA].Agente_Inmobiliario
							WHERE id_agente = @EMPLEADO)
	SET @EDAD = YEAR(GETDATE()) - YEAR(@FECHA_NACIMIENTO)

	IF @EDAD < 25
		SET @ID_RANGO_ETARIO_EMPLEADO = 1
	ELSE IF @EDAD BETWEEN  25 AND 35
		SET @ID_RANGO_ETARIO_EMPLEADO = 2
	ELSE IF @EDAD BETWEEN 35 AND 50
		SET @ID_RANGO_ETARIO_EMPLEADO = 3
	ELSE IF @EDAD > 50
		SET @ID_RANGO_ETARIO_EMPLEADO = 4

RETURN @ID_RANGO_ETARIO_EMPLEADO
END
GO

-- ANUNCIO
CREATE PROCEDURE [LA_SCALONETA].MigrarAnuncios_BI
AS
BEGIN 
	INSERT INTO [LA_SCALONETA].BI_ANUNCIO(
		id_bi_tiempo,
		id_bi_tipo_operacion,
		id_bi_ubicacion,
		id_bi_ambientes,
		id_bi_tipo_inmueble,
		id_rango_m2,
		id_bi_tipo_moneda,
		id_bi_sucursal,
		id_bi_rango_etario,
		fecha_publicacion,
		fecha_finalizacion,
		precio
	)
	SELECT DISTINCT
		t.id_tiempo,
		tiop.id_tipo_operacion,
		(
			SELECT u.id_bi_ubicacion
			FROM [LA_SCALONETA].BI_UBICACION u
			WHERE u.barrio = b.descripcion AND u.localidad = l.descripcion AND u.provincia = p.descripcion
		) AS ubicacion,
		amb.id_bi_ambientes,
		bti.id_bi_tipo_inmueble,
		rm.id_bi_rangoM2,
		tm.id_tipo_moneda,
		bs.id_bi_sucursal,
		re.id_bi_rango_etario,
		a.fecha_publicacion,
		a.fecha_finalizacion,
		a.precio_inmueble
	FROM [LA_SCALONETA].Anuncio a
	INNER JOIN [LA_SCALONETA].Inmueble i ON i.id_inmueble = a.id_inmueble
	INNER JOIN [LA_SCALONETA].Barrio ub ON ub.id_barrio = i.id_barrio
	INNER JOIN [LA_SCALONETA].BI_AMBIENTES amb ON amb.id_bi_ambientes = i.id_ambientes
	INNER JOIN [LA_SCALONETA].BI_TIPO_INMUEBLE bti ON bti.id_bi_tipo_inmueble = i.id_tipo_inmueble
	INNER JOIN [LA_SCALONETA].Agente_Inmobiliario ag ON ag.id_agente = a.id_agente
	INNER JOIN [LA_SCALONETA].BI_SUCURSAL bs ON bs.id_bi_sucursal = ag.id_sucursal
	INNER JOIN [LA_SCALONETA].BI_TIEMPO t ON t.anio = DATEPART(YEAR,a.fecha_publicacion) AND t.mes = DATEPART(MONTH, a.fecha_publicacion) AND t.cuatrimestre = DATEPART(QUARTER, a.fecha_publicacion)
	INNER JOIN [LA_SCALONETA].BI_TIPO_OPERACION tiop ON tiop.id_tipo_operacion = a.id_tipo_operacion
	INNER JOIN [LA_SCALONETA].BI_RANGO_ETARIO re ON re.id_bi_rango_etario = [LA_SCALONETA].FX_CALCULAR_RANGO_ETARIO_EMPLEADO(a.id_agente)
	INNER JOIN [LA_SCALONETA].BI_RANGO_M2 rm ON rm.id_bi_rangoM2 = [LA_SCALONETA].FX_CALCULAR_RANGO_METROS(a.id_inmueble)
	INNER JOIN [LA_SCALONETA].BI_TIPO_MONEDA tm ON tm.id_tipo_moneda = a.id_moneda
	INNER JOIN [LA_SCALONETA].Barrio b on b.id_barrio = i.id_barrio
	INNER JOIN [LA_SCALONETA].Localidad l on b.id_localidad = l.id_localidad
	INNER JOIN [LA_SCALONETA].Provincia p on l.id_provincia = p.id_provincia
END
GO

-- VENTA INMUEBLE
CREATE PROCEDURE [LA_SCALONETA].MigrarVentaInmueble_BI
AS
BEGIN
	INSERT INTO [LA_SCALONETA].BI_VentaInmueble (
		id_bi_tiempo,
		id_bi_tipo_inmueble,
		id_bi_ubicacion,
		id_bi_sucursal,
		id_bi_tipo_operacion,
		venta_precio,
		venta_comision,
		superficie
	)
	SELECT DISTINCT 
		t.id_tiempo,
		timn.id_bi_tipo_inmueble,
		(
			SELECT u.id_bi_ubicacion
			FROM [LA_SCALONETA].BI_UBICACION u
			WHERE u.barrio = b.descripcion AND u.localidad = l.descripcion AND u.provincia = p.descripcion
		) AS ubicacion,
		s.id_bi_sucursal,
		tiop.id_tipo_operacion,
		vi.precio_venta,
		vi.comision_inmobiliaria,
		inm.superficie
	FROM [LA_SCALONETA].Venta_Inmueble vi
	INNER JOIN [LA_SCALONETA].Anuncio a ON a.id_anuncio = vi.id_anuncio
	INNER JOIN [LA_SCALONETA].Agente_Inmobiliario ag ON ag.id_agente = a.id_agente
	INNER JOIN [LA_SCALONETA].Inmueble inm ON inm.id_inmueble = a.id_inmueble
	INNER JOIN [LA_SCALONETA].BI_TIPO_INMUEBLE timn ON timn.id_bi_tipo_inmueble = inm.id_tipo_inmueble
	INNER JOIN [LA_SCALONETA].BI_TIEMPO t ON t.anio = DATEPART(YEAR,vi.fecha_venta) AND t.cuatrimestre = DATEPART(QUARTER, vi.fecha_venta) AND t.mes = DATEPART(MONTH,vi.fecha_venta)
	INNER JOIN [LA_SCALONETA].BI_SUCURSAL s ON s.id_bi_sucursal = ag.id_sucursal 
	INNER JOIN [LA_SCALONETA].Barrio b on b.id_barrio = inm.id_barrio
	INNER JOIN [LA_SCALONETA].Localidad l on b.id_localidad = l.id_localidad
	INNER JOIN [LA_SCALONETA].Provincia p on l.id_provincia = p.id_provincia
	INNER JOIN [LA_SCALONETA].BI_TIPO_OPERACION tiop ON tiop.id_tipo_operacion = a.id_tipo_operacion
END

GO
CREATE PROCEDURE [LA_SCALONETA].migrarAlquileres_BI
AS
BEGIN
	INSERT INTO [LA_SCALONETA].BI_ALQUILER
	(
		id_bi_tiempo,
		id_bi_ubicacion,
		id_bi_rango_etario,
		id_bi_tipo_operacion,
		id_bi_sucursal,
		fecha_pago,
		fecha_vencimiento,
		estado,
		comision,
		pago
	)

	SELECT DISTINCT 
		T.id_tiempo, 
		(
			SELECT u.id_bi_ubicacion
			FROM [LA_SCALONETA].BI_UBICACION u
			WHERE u.barrio = b.descripcion AND u.localidad = l.descripcion AND u.provincia = p.descripcion
		) as Ubicacion,
		R.id_bi_rango_etario,
		tiop.id_tipo_operacion,
		bs.id_bi_sucursal,
		pa.fecha_pago, 
		pa.fecha_vencimiento,
		E.descripcion,
		A.comision,
		pa.importe

	FROM [LA_SCALONETA].Alquiler A 
	INNER JOIN [LA_SCALONETA].Anuncio AN ON AN.id_anuncio = A.id_anuncio
	INNER JOIN [LA_SCALONETA].Inmueble I ON I.id_inmueble = AN.id_inmueble 
	INNER JOIN [LA_SCALONETA].pago_alquiler pa ON pa.id_alquiler = a.id_alquiler
	INNER JOIN [LA_SCALONETA].Tipo_Estado_Alquiler E ON A.id_estado_alquiler = E.id_estado_alquiler
	INNER JOIN [LA_SCALONETA].BI_RANGO_ETARIO R ON R.id_bi_rango_etario =[LA_SCALONETA].FX_CALCULAR_RANGO_ETARIO_INQUILINO(a.id_inquilino)
	INNER JOIN [LA_SCALONETA].BI_TIEMPO T ON T.anio = DATEPART(YEAR, a.fecha_inicio) AND T.mes = DATEPART(MONTH, a.fecha_inicio) AND T.cuatrimestre = DATEPART(QUARTER, a.fecha_inicio)
	INNER JOIN [LA_SCALONETA].Barrio b on b.id_barrio = i.id_barrio
	INNER JOIN [LA_SCALONETA].Localidad l on b.id_localidad = l.id_localidad
	INNER JOIN [LA_SCALONETA].Provincia p on l.id_provincia = p.id_provincia
	INNER JOIN [LA_SCALONETA].BI_ANUNCIO bian ON bian.id_bi_anuncio = A.id_anuncio
	INNER JOIN [LA_SCALONETA].BI_SUCURSAL bs ON bs.id_bi_sucursal = bian.id_bi_sucursal
	INNER JOIN [LA_SCALONETA].BI_TIPO_OPERACION tiop ON tiop.id_tipo_operacion = bian.id_bi_tipo_operacion
END

GO
BEGIN TRANSACTION
EXEC [LA_SCALONETA].migrarTipoOperacion_BI
EXEC [LA_SCALONETA].migrarAmbientes_BI
EXEC [LA_SCALONETA].migrarTipoInmuebleBI
EXEC [LA_SCALONETA].migrarTipoMonedaBI

EXEC [LA_SCALONETA].MigrarTiempo_BI
EXEC [LA_SCALONETA].MigrarRangoEtario_BI
EXEC [LA_SCALONETA].MigrarRangoM2_BI

EXEC [LA_SCALONETA].migrarUbicacion_BI
EXEC [LA_SCALONETA].migrarSucursal_BI

EXEC [LA_SCALONETA].MigrarAnuncios_BI
EXEC [LA_SCALONETA].MigrarVentaInmueble_BI
EXEC [LA_SCALONETA].migrarAlquileres_BI
COMMIT TRANSACTION

GO

-- VISTAS

--1
CREATE VIEW [LA_SCALONETA].VISTA_ANUNCIOS_DURACION_PROMEDIO 
AS	
	SELECT DISTINCT
		AVG(DATEDIFF(DAY, A.fecha_publicacion, A.fecha_finalizacion)) AS Promedio,
		tip.descripcion AS Tipo_Operacion,
		u.barrio,
		amb.descripcion AS Cantidad_Ambientes,
		t.anio as 'AÒo',
		t.cuatrimestre as Cuatrimestre
	FROM [LA_SCALONETA].BI_ANUNCIO A
	INNER JOIN [LA_SCALONETA].BI_TIPO_OPERACION tip ON tip.id_tipo_operacion = A.id_bi_tipo_operacion
	INNER JOIN [LA_SCALONETA].BI_UBICACION u ON u.id_bi_ubicacion = A.id_bi_ubicacion
	INNER JOIN [LA_SCALONETA].BI_AMBIENTES amb ON amb.id_bi_ambientes = A.id_bi_ambientes
	INNER JOIN [LA_SCALONETA].BI_TIEMPO t ON t.id_tiempo = A.id_bi_tiempo
	GROUP BY tip.descripcion, u.barrio, amb.descripcion, t.anio, t.cuatrimestre

GO

--2
CREATE VIEW [LA_SCALONETA].VISTA_PROMEDIO_PRECIO_ANUNCIOS_INMUEBLES
AS
	SELECT DISTINCT
		AVG(A.precio) AS Promedio,
		tm.descripcion AS Tipo_Moneda,
		tip.descripcion AS Tipo_Operacion,
		tinm.descripcion AS Tipo_Inmueble,
		rm2.rango_m2,
		t.anio,
		t.cuatrimestre
	FROM [LA_SCALONETA].BI_ANUNCIO A
	INNER JOIN [LA_SCALONETA].BI_TIPO_OPERACION tip ON tip.id_tipo_operacion = A.id_bi_tipo_operacion
	INNER JOIN [LA_SCALONETA].BI_TIPO_INMUEBLE tinm ON tinm.id_bi_tipo_inmueble = A.id_bi_tipo_inmueble
	INNER JOIN [LA_SCALONETA].BI_RANGO_M2 rm2 ON rm2.id_bi_rangoM2 = A.id_rango_m2
	INNER JOIN [LA_SCALONETA].BI_TIEMPO t ON t.id_tiempo = A.id_bi_tiempo
	INNER JOIN [LA_SCALONETA].BI_TIPO_MONEDA tm ON tm.id_tipo_moneda = A.id_bi_tipo_moneda
	GROUP BY tm.descripcion, tip.descripcion, tip.descripcion, tinm.descripcion, rm2.rango_m2, t.anio, t.cuatrimestre
GO

--3
CREATE VIEW [LA_SCALONETA].VISTA_BARRIOS_MAS_ELEGIDOS
AS
	SELECT TOP 5 
		t.anio, 
		t.cuatrimestre, 
		u.barrio, 
		re.rango_etario 
	FROM [LA_SCALONETA].BI_Alquiler a
	JOIN [LA_SCALONETA].BI_Ubicacion u ON u.id_bi_ubicacion = a.id_bi_alquiler
	JOIN [LA_SCALONETA].BI_Tiempo t ON t.id_tiempo = a.id_bi_tiempo
	JOIN [LA_SCALONETA].BI_Rango_Etario re ON re.id_bi_rango_etario = a.id_bi_rango_etario
	GROUP BY t.anio, t.cuatrimestre, u.barrio, re.rango_etario
	ORDER BY COUNT(*) DESC
GO
--4
CREATE VIEW [LA_SCALONETA].VISTA_INCUMPLIMIENTO_DE_PAGO_ALQUILERES
AS    
SELECT DISTINCT
        T.anio,
        T.mes,
        (SELECT COUNT(*) FROM [LA_SCALONETA].BI_ALQUILER A1 WHERE A1.fecha_pago > a1.fecha_vencimiento) / COUNT(*) * 100 AS 'PorcentajeIncumplimiento'
    FROM [LA_SCALONETA].BI_ALQUILER A
    JOIN [LA_SCALONETA].BI_TIEMPO T ON T.id_tiempo = A.id_bi_tiempo
    GROUP BY T.anio, T.mes
GO

--5 ver
CREATE VIEW [LA_SCALONETA].VISTA_PROMEDIO_INCREMENTO_ALQUILER
AS
SELECT DISTINCT
		T.anio,
        T.mes,
		AVG(CASE WHEN PagoAnteriorImp IS NOT NULL
			THEN ((A.pago - PagoAnteriorImp) / PagoAnteriorImp) *100
			ELSE 0
		END) AS Porcentaje
		/*AVG(A.pago * 100 / (SELECT A1.pago FROM [LA_SCALONETA].BI_ALQUILER A1
							WHERE t.mes = MONTH(GETDATE()) AND t.anio = YEAR(GETDATE()))) AS Porcentaje*/
FROM [LA_SCALONETA].BI_ALQUILER A
	INNER JOIN [LA_SCALONETA].BI_TIEMPO T ON T.id_tiempo = A.id_bi_tiempo
	/*WHERE A.estado = 'Activo' AND A.pago < (SELECT A2.pago FROM [LA_SCALONETA].BI_ALQUILER A2
											WHERE t.mes = MONTH(GETDATE()) AND t.anio = YEAR(GETDATE()))*/
	OUTER APPLY(
		SELECT TOP 1 pago AS PagoAnteriorImp FROM [LA_SCALONETA].BI_ALQUILER alq 
		WHERE alq.id_bi_alquiler = A.id_bi_alquiler AND alq.id_bi_tiempo < A.id_bi_tiempo
		ORDER BY alq.id_bi_tiempo DESC
	) AS PagoAnterior
	GROUP BY T.anio, T.mes
GO

-- 6
CREATE VIEW [LA_SCALONETA].VISTA_PROMEDIO_M2
AS
	SELECT DISTINCT
		AVG(V.venta_precio/V.superficie) AS Promedio,
		t.anio,
		t.cuatrimestre,
		tinm.descripcion AS Tipo_Inmueble,
		u.localidad
	FROM [LA_SCALONETA].BI_VentaInmueble V
	INNER JOIN [LA_SCALONETA].BI_TIEMPO t ON t.id_tiempo = V.id_bi_tiempo
	INNER JOIN [LA_SCALONETA].BI_TIPO_INMUEBLE tinm ON tinm.id_bi_tipo_inmueble = V.id_bi_tipo_inmueble
	INNER JOIN [LA_SCALONETA].BI_UBICACION u ON u.id_bi_ubicacion = V.id_bi_ubicacion
	GROUP BY t.anio, t.cuatrimestre, tinm.descripcion, u.localidad
GO

--7
CREATE VIEW [LA_SCALONETA].VISTA_PROMEDIO_COMISION
AS
	SELECT DISTINCT
		AVG(A.comision) AS Promedio,
		t.anio,
		t.cuatrimestre,
		tip.descripcion
	FROM [LA_SCALONETA].BI_ALQUILER A
	INNER JOIN [LA_SCALONETA].BI_SUCURSAL s ON s.id_bi_sucursal = A.id_bi_sucursal
	INNER JOIN [LA_SCALONETA].BI_Tiempo t ON t.id_tiempo = a.id_bi_tiempo
	INNER JOIN [LA_SCALONETA].BI_TIPO_OPERACION tip ON tip.id_tipo_operacion = A.id_bi_tipo_operacion
	Group by t.anio, t.cuatrimestre, tip.descripcion
	UNION
	SELECT DISTINCT
		AVG(V.venta_comision) AS Promedio,
		t.anio,
		t.cuatrimestre,
		tip.descripcion
	FROM [LA_SCALONETA].BI_VentaInmueble V
	INNER JOIN [LA_SCALONETA].BI_SUCURSAL s ON s.id_bi_sucursal = V.id_bi_sucursal
	INNER JOIN [LA_SCALONETA].BI_Tiempo t ON t.id_tiempo = V.id_bi_tiempo
	INNER JOIN [LA_SCALONETA].BI_TIPO_OPERACION tip ON tip.id_tipo_operacion = V.id_bi_tipo_operacion
	Group by t.anio, t.cuatrimestre, tip.descripcion
GO

--8
CREATE VIEW [LA_SCALONETA].VISTA_OPERACIONES_CONCRETADAS
AS
	SELECT DISTINCT
		t.anio,
		s.id_bi_sucursal,
		re.rango_etario,
		COUNT(*) * 100 / (SELECT COUNT(*)
						  FROM [LA_SCALONETA].BI_ANUNCIO A1
						  INNER JOIN [LA_SCALONETA].BI_TIEMPO T1 ON T1.id_tiempo = A1.id_bi_tiempo
						  WHERE T1.anio = t.anio) AS Porcentaje
	FROM [LA_SCALONETA].BI_ANUNCIO A
	INNER JOIN [LA_SCALONETA].BI_TIEMPO t ON t.id_tiempo = A.id_bi_tiempo
	INNER JOIN [LA_SCALONETA].BI_RANGO_ETARIO re ON re.id_bi_rango_etario = A.id_bi_rango_etario
	INNER JOIN [LA_SCALONETA].BI_SUCURSAL s ON s.id_bi_sucursal = A.id_bi_sucursal
	GROUP BY t.anio, s.id_bi_sucursal, re.rango_etario
GO

--9
CREATE VIEW [LA_SCALONETA].VISTA_MONTO_TOTAL_CIERRE_CONTRATOS
AS
	SELECT DISTINCT
		t.anio,
		A.id_bi_sucursal,
		A.id_bi_tipo_operacion,
		(
		CASE WHEN A.id_bi_tipo_operacion = 3 THEN (SELECT SUM(v.venta_precio + v.venta_comision)
												   FROM [LA_SCALONETA].BI_VentaInmueble v 
												   WHERE t.id_tiempo = v.id_bi_tiempo AND a.id_bi_sucursal = v.id_bi_sucursal)
		ELSE (SELECT SUM(al.comision + al.pago)
			  FROM [LA_SCALONETA].BI_ALQUILER al
			  WHERE t.id_tiempo = al.id_bi_tiempo)
												   
		END) AS Monto_Total
	FROM [LA_SCALONETA].BI_ANUNCIO A
	INNER JOIN [LA_SCALONETA].BI_TIEMPO t ON t.id_tiempo = A.id_bi_tiempo
	GROUP BY t.id_tiempo,t.anio, A.id_bi_tipo_operacion, A.id_bi_sucursal
GO

-- EJECUCION DE VISTAS
SELECT * FROM [LA_SCALONETA].VISTA_ANUNCIOS_DURACION_PROMEDIO
SELECT * FROM [LA_SCALONETA].VISTA_PROMEDIO_PRECIO_ANUNCIOS_INMUEBLES
SELECT * FROM [LA_SCALONETA].VISTA_BARRIOS_MAS_ELEGIDOS
SELECT * FROM [LA_SCALONETA].VISTA_INCUMPLIMIENTO_DE_PAGO_ALQUILERES
SELECT * FROM [LA_SCALONETA].VISTA_PROMEDIO_INCREMENTO_ALQUILER
SELECT * FROM [LA_SCALONETA].VISTA_PROMEDIO_M2
SELECT * FROM [LA_SCALONETA].VISTA_PROMEDIO_COMISION
SELECT * FROM [LA_SCALONETA].VISTA_OPERACIONES_CONCRETADAS
SELECT * FROM [LA_SCALONETA].VISTA_MONTO_TOTAL_CIERRE_CONTRATOS


