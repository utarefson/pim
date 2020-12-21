USE [PasswordCRUD]
GO
/****** Object:  StoredProcedure [dbo].[UsuarioAlta]    Script Date: 12/20/2020 9:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[UsuarioAlta]
	@ID int =null,
	@Direccion nchar(500),
	@NombreUsuario nchar(30),
	@Correo nchar(50),
	@Contraseña nchar(30),
	@Nota nchar(50),
	@ID_Categoria int
	

AS
BEGIN

IF(@ID IS NULL)
	BEGIN
		INSERT INTO dbo.Usuarios(Direccion,NombreUsuario,Correo,Contraseña,Nota,ID_Categoria)
		VALUES(@Direccion,@NombreUsuario,@Correo,@Contraseña,@Nota,@ID_Categoria)
	END
ELSE
	BEGIN
		UPDATE dbo.Usuarios
		SET Direccion=@Direccion, NombreUsuario =@NombreUsuario, Correo=@Correo,
		Contraseña=@Contraseña, Nota=@Nota,ID_Categoria=@ID_Categoria
		WHERE ID=@ID

	END
END