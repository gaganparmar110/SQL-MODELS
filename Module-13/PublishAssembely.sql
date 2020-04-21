step-1
use AdventureWorks2014


step-2-create_assembly

create assembly [Clr]
AUTHORIZATION [dbo]
FROM 'C:\Users\Gagan\source\repos\Clr\bin\Debug\Clr.dll'
WITH PERMISSION_SET = SAFE
GO

step-3
create function check_regex (@x nvarchar(max),@y nvarchar(max))
returns bit
as
EXTERNAL NAME [Clr].[Clr.IsRegexMatch].MatchRegex

step-4,executing function
select dbo.check_regex(1,1);
select dbo.check_regex('gray','gr(a|e)y');
