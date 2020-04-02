select * from NewStudent

select * from NewStudent where Surname='Shah';
select * from NewStudent where Gender='Male';

select * from NewStudent where Gender='Female' and Surname='Patel' and AdmitDate> '2006-01-01'

select * from NewStudent where MiddleName Like '%Bhai';

select * from NewStudent where FirstName Like 'M%' and MiddleName Like 'ant%';

select * from NewStudent where Surname Like '__c%';

select FirstName+' '+MiddleName+' '+Surname as Names  from NewStudent;

select FirstName , LEN(FirstName) 'LengthOfNames' from NewStudent;



select FirstName from NewStudent where Gender='Male' and FirstName Like 'Mr.%';