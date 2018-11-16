CREATE PROCEDURE dbo.SP_TipoUsuarioALT
@Nombre varchar(25)
AS
INSERT INTO dbo.TipoUsuario(Nombre)
VALUES
(@Nombre)

GO

EXEC Reportes.AltaReporte 
@Nombre = 'Alta de tipo de usuario' , 
@Sp = 'SP_TipoUsuarioALT' , 
@Esquema = 'dbo' , 
@BaseDatos = '' , 
@Descripcion = '' , 
@Nombre_Archivo = 'Reporte   ' , 
@Campo_Nombre = '' , 
@Pagina_Id = 11 ;

DECLARE @Reporte INT;
SELECT @Reporte=Id_Reporte FROM Reportes.Reportes WHERE Nombre = 'Alta de tipo de usuario'

UPDATE Reportes.Campos SET Variable_Id = 1 ,Control_Id = 1 ,Titulo_Pagina = 'Nombre' ,Nombre = 'Nombre' ,Orden = 1 ,Visible = 1 ,Valor_Variable = '' ,DataSet = '' ,DS = '' ,Parametro = '@Nombre' ,ComboPadre = NULL ,FileJScript = NULL ,FuncionJS = NULL ,Evento = NULL ,CssFile = NULL ,Css = NULL ,Ancho = NULL ,Longitud = NULL ,Renglon = NULL ,Class = NULL ,Parsley = NULL ,Omitir = 0 WHERE Reporte_Id = @Reporte AND Titulo_Pagina LIKE 'Nombre';
