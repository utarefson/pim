USE [PasswordCRUD]
GO
/****** Object:  StoredProcedure [dbo].[UsuarioBaja]    Script Date: 12/20/2020 9:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[UsuarioBaja]
(
@ID int
)
AS
BEGIN
	
	DELETE FROM Usuarios WHERE ID=@ID
END

