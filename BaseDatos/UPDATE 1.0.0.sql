USE [examen]
GO
/****** Object:  StoredProcedure [dbo].[sp_transaccionesDelete]    Script Date: 11/06/2016 1:40:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transaccionesDelete]
(
	@id_transacciones int
)

AS

SET NOCOUNT ON

DELETE FROM [transacciones]
WHERE [id_transacciones] = @id_transacciones

GO
/****** Object:  StoredProcedure [dbo].[sp_transaccionesInsert]    Script Date: 11/06/2016 1:40:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transaccionesInsert]
(
	@id_categoria int,
	@monto varchar(50),
	@fecha date,
	@descripcion varchar(50),
	@id_cuenta int
)

AS

SET NOCOUNT ON

INSERT INTO [transacciones]
(
	[id_categoria],
	[monto],
	[fecha],
	[descripcion],
	[id_cuenta]
)
VALUES
(
	@id_categoria,
	@monto,
	@fecha,
	@descripcion,
	@id_cuenta
)

SELECT CAST(scope_identity() AS int)

GO
/****** Object:  StoredProcedure [dbo].[sp_transaccionesSelect]    Script Date: 11/06/2016 1:40:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transaccionesSelect]
(
	@id_transacciones int
)

AS

SET NOCOUNT ON

SELECT [id_transacciones],
	[id_categoria],
	[monto],
	[fecha],
	[descripcion],
	[id_cuenta]
FROM [transacciones]
WHERE [id_transacciones] = @id_transacciones

GO
/****** Object:  StoredProcedure [dbo].[sp_transaccionesSelectAll]    Script Date: 11/06/2016 1:40:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transaccionesSelectAll]

AS

SET NOCOUNT ON

SELECT [id_transacciones],
	[id_categoria],
	[monto],
	[fecha],
	[descripcion],
	[id_cuenta]
FROM [transacciones]

GO
/****** Object:  StoredProcedure [dbo].[sp_transaccionesUpdate]    Script Date: 11/06/2016 1:40:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transaccionesUpdate]
(
	@id_transacciones int,
	@id_categoria int,
	@monto varchar(50),
	@fecha date,
	@descripcion varchar(50),
	@id_cuenta int
)

AS

SET NOCOUNT ON

UPDATE [transacciones]
SET [id_categoria] = @id_categoria,
	[monto] = @monto,
	[fecha] = @fecha,
	[descripcion] = @descripcion,
	[id_cuenta] = @id_cuenta
WHERE [id_transacciones] = @id_transacciones

GO
/****** Object:  Table [dbo].[transacciones]    Script Date: 11/06/2016 1:40:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[transacciones](
	[id_transacciones] [int] IDENTITY(1,1) NOT NULL,
	[id_categoria] [int] NOT NULL,
	[monto] [varchar](50) NOT NULL,
	[fecha] [date] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[id_cuenta] [int] NOT NULL,
 CONSTRAINT [PK_transacciones] PRIMARY KEY CLUSTERED 
(
	[id_transacciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[transacciones]  WITH CHECK ADD  CONSTRAINT [FK_transacciones_Categoria] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[Categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[transacciones] CHECK CONSTRAINT [FK_transacciones_Categoria]
GO
ALTER TABLE [dbo].[transacciones]  WITH CHECK ADD  CONSTRAINT [FK_transacciones_cuenta] FOREIGN KEY([id_cuenta])
REFERENCES [dbo].[cuenta] ([id_cuenta])
GO
ALTER TABLE [dbo].[transacciones] CHECK CONSTRAINT [FK_transacciones_cuenta]
GO
