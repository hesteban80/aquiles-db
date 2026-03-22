-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CLEAR_DB]

AS
BEGIN
	DELETE FROM CLIENT_WEEK_SESSIONS;
	DELETE FROM CLOSING_DAYS;
	DELETE FROM DISCOUNTS;
	DELETE FROM FEES;
	DELETE FROM PRODUCTS;
	DELETE FROM PRODUCT_TYPES;
	DELETE FROM CLIENTS;
END