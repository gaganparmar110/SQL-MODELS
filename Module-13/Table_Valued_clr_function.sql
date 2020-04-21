step-1
use AdventureWorks2014;

step-2
alter assembly [Clr]

FROM 'C:\Users\Gagan\source\repos\Clr\bin\Debug\Clr.dll'

GO

step-3
--create clr table valued function
create function check_regex_Tv (@input nvarchar(max),@pattern nvarchar(max))

returns  table (input nvarchar(max),pattern nvarchar(max))
as
EXTERNAL NAME [Clr].[Clr.IsRegexMatch].InitMethod

step-4
--check function working or not
SELECT *	FROM dbo.check_regex_Tv(N'The Batch Start Line of the parameter count.', N'[fd]o[xg]');
select dbo.check_regex_Tv('black','gr(a|e)y');