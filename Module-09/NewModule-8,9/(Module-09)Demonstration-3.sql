use AdventureWorks2017;


STEP-2
Create PROCEDURE dbo.spTokens
AS
SET NOCOUNT ON;
BEGIN
  SELECT * FROM sys.login_token;
  SELECT * FROM sys.user_token;
END

STEP-3
exec.spTokens;

step-4
execute AS User = '';


step-5

exec dbo.spTokens;


step-6

revert;

step-7
GRANT EXECUTE ON dbo.spTokens TO SecureUser


step-11
drop procedure dbo.spTokens;

