USE [PasswordCRUD]
GO
/****** Object:  StoredProcedure [dbo].[UsuariosLista]    Script Date: 12/20/2020 9:21:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[UsuariosLista]	-- Add the parameters for the stored procedure here
(
	@ID int = NULL,
	@busqueda nchar(500)=NULL
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	SELECT Direccion,NombreUsuario,Correo,Contraseña,Nota,ID,ID_Categoria From Usuarios
	WHERE (@ID is null or ID=@ID) AND 
	(@busqueda is null or Direccion like '%' +@busqueda+'%') or
	(@busqueda is null or Correo like '%' +@busqueda+'%')
END
