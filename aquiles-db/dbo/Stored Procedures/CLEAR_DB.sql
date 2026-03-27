-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CLEAR_DB]

AS
BEGIN
	DELETE FROM CLIENT_WEEK_SESSIONS;
	DELETE FROM CLIENT_WEEK_INTENSIVE_SESSIONS;
	DELETE FROM FREE_DAYS;
	DELETE FROM FEES;
	DELETE FROM CLIENTS;
	DELETE FROM PRODUCTS;
	DELETE FROM DISCOUNTS;
	DELETE FROM PRODUCT_TYPES;
	DELETE FROM CLOSING_DAYS;
END