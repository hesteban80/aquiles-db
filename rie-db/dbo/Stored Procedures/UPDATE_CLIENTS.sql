


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UPDATE_CLIENTS]

AS
BEGIN
	alter table clients drop column RespBirthDate
	alter table clients drop column RespAddress
	alter table clients drop column RespLocation
	alter table clients drop column RespPostalCode
	alter table clients drop column RespProvince
	
	EXEC sp_rename 'clients.RespName', 'Resp1Name', 'COLUMN';
	EXEC sp_rename 'clients.RespSurname', 'Resp1Surname', 'COLUMN';
	EXEC sp_rename 'clients.RespDni', 'Resp1Dni', 'COLUMN';
	EXEC sp_rename 'clients.RespPhone', 'Resp1Phone', 'COLUMN';
	EXEC sp_rename 'clients.RespEmail', 'Resp1Email', 'COLUMN';
	
	alter table clients add Notes varchar(500) null 

	alter table clients add Resp2Name varchar(250) null 
	alter table clients add Resp2Surname varchar(250) null 
	alter table clients add Resp2Dni varchar(50) null 
	alter table clients add Resp2Phone varchar(250) null 
	alter table clients add Resp2Email varchar(250) null 

END