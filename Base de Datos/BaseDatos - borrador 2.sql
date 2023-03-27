CREATE DATABASE [ProyectoPA]

USE [ProyectoPA]
GO
/****** Object:  Table [dbo].[Adopciones]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adopciones](
	[idAdopcion] [int] IDENTITY(1,1) NOT NULL,
	[correoElectronico] [varchar](30) NOT NULL,
	[idAnimal] [int] NOT NULL,
	[fechaAdopcion] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idAdopcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animales]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animales](
	[idAnimal] [int] IDENTITY(1,1) NOT NULL,
	[idTipoAnimal] [varchar](30) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK__Animales__0276B503E3C3AAB2] PRIMARY KEY CLUSTERED 
(
	[idAnimal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bitacoras]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacoras](
	[idBitacora] [int] IDENTITY(1,1) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[origen] [nvarchar](100) NOT NULL,
	[mensajeError] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleFactura]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleFactura](
	[idDetalleFactura] [int] IDENTITY(1,1) NOT NULL,
	[idFactura] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[monto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalleFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[idFactura] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](50) NOT NULL,
	[terminos] [varchar](50) NOT NULL,
	[fecha] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [numeric](10, 3) NOT NULL,
	[descuento] [int] NOT NULL,
	imagen varbinary(MAX),
	[idTipoProducto] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[idRol] [varchar](30) NOT NULL,
	[rol] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAnimal]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAnimal](
	[idTipoAnimal] [varchar](30) NOT NULL,
	[tipoAnimal] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoAnimal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoProductos]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoProductos](
	[idTipoProducto] [varchar](30) NOT NULL,
	[tipoProducto] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](50) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[correoElectronico] [varchar](30) NOT NULL,
	[contrasenna] [varchar](30) NOT NULL,
	[estado] [bit] NOT NULL,
	[idRol] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[correoElectronico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adopciones]  WITH CHECK ADD FOREIGN KEY([correoElectronico])
REFERENCES [dbo].[Usuarios] ([correoElectronico])
GO
ALTER TABLE [dbo].[Adopciones]  WITH CHECK ADD  CONSTRAINT [FK__Adopcione__idAni__4BAC3F29] FOREIGN KEY([idAnimal])
REFERENCES [dbo].[Animales] ([idAnimal])
GO
ALTER TABLE [dbo].[Adopciones] CHECK CONSTRAINT [FK__Adopcione__idAni__4BAC3F29]
GO
ALTER TABLE [dbo].[Animales]  WITH CHECK ADD  CONSTRAINT [FK__Animales__idTipo__49C3F6B7] FOREIGN KEY([idTipoAnimal])
REFERENCES [dbo].[TipoAnimal] ([idTipoAnimal])
GO
ALTER TABLE [dbo].[Animales] CHECK CONSTRAINT [FK__Animales__idTipo__49C3F6B7]
GO
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD FOREIGN KEY([idFactura])
REFERENCES [dbo].[Factura] ([idFactura])
GO
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD FOREIGN KEY([idProducto])
REFERENCES [dbo].[Productos] ([idProducto])
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD FOREIGN KEY([cedula])
REFERENCES [dbo].[Usuarios] ([cedula])
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD FOREIGN KEY([idTipoProducto])
REFERENCES [dbo].[TipoProductos] ([idTipoProducto])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([idRol])
REFERENCES [dbo].[Roles] ([idRol])
GO
/****** Object:  StoredProcedure [dbo].[AgregarRoll]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarRoll] 
	@idRol VARCHAR(30),
	@rol VARCHAR(30)
AS
BEGIN
INSERT INTO Roles (idRol, rol)
     VALUES (@idRol, @rol)
END
GO
/****** Object:  StoredProcedure [dbo].[MostrarAnimales]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MostrarAnimales]
	AS
	BEGIN

		SELECT idAnimal,		
			  tipoAnimal.tipoAnimal,
			  nombre,
			  descripcion,
			  estado
		  FROM Animales 
		  INNER JOIN tipoAnimal
		  ON  Animales.idTipoAnimal = tipoAnimal.idTipoAnimal
	END
GO
/****** Object:  StoredProcedure [dbo].[Registrar]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Registrar] 
	@cedula VARCHAR(50),
	@nombre VARCHAR(30),
	@correoElectronico VARCHAR(30),
	@contrasenna VARCHAR(30)
AS
BEGIN
INSERT INTO Usuarios (cedula, nombre, correoElectronico, contrasenna, estado, idRol)
     VALUES (@cedula, @nombre, @correoElectronico, @contrasenna, 1, 1)
END
GO
/****** Object:  StoredProcedure [dbo].[RegistrarAnimal]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RegistrarAnimal]
	@idTipoAnimal varchar(30),
	@nombre varchar(30),
	@descripcion varchar(100)
AS
BEGIN
INSERT INTO Animales
           (idTipoAnimal,
           nombre,
           descripcion,
          estado)
     VALUES
           (@idTipoAnimal,
			@nombre,
			@descripcion,
			1)
END
GO
/****** Object:  StoredProcedure [dbo].[ValidarUsuario]    Script Date: 03/26/2023 2:40:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ValidarUsuario]
	@correoElectronico VARCHAR(30),
	@contrasenna VARCHAR(30)
AS
BEGIN
	SELECT idUsuario,
		  nombre,
		  correoElectronico,
		  cedula,
		  estado,
		  idRol
	  FROM dbo.Usuarios
	  WHERE correoElectronico = @correoElectronico
	  AND contrasenna = @contrasenna
	  AND estado = 1
END
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MostrarProductos]
	
AS
BEGIN
	
SELECT idProducto
      ,nombre
	  ,TipoProductos.tipoProducto
      ,descripcion
      ,cantidad
      ,precio
      ,descuento
      ,imagen
      
  FROM Productos
	INNER JOIN TipoProductos
	ON Productos.idTipoProducto = TipoProductos.idTipoProducto

END
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE RegistrarProducto
	@nombre varchar(30),
	@descripcion varchar(100),
	@cantidad int,
	@precio numeric (10,3),
	@descuento int,
	@imagen varbinary(max),
	@idTipoProducto varchar(30)

AS
BEGIN


INSERT INTO Productos
           (nombre
           ,descripcion
           ,cantidad
           ,precio
           ,descuento
           ,imagen
           ,idTipoProducto)
     VALUES
           (@nombre,@descripcion,@cantidad,@precio,@descuento,@imagen,@idTipoProducto)

END


EXEC AgregarRoll '1', 'Usuario'
EXEC AgregarRoll '2', 'Administrador'
