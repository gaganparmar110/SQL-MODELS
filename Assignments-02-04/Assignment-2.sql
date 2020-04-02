
<Assignment-2>
<que 1>
select fname+' '+sname+' '+surname as names from Student where gender='Male' and fname Like '%h';





select Office.city,Salesreps.name,Salesreps.hiredate,Customers.customerid from Salesreps INNER JOIN Office on Salesreps.officeid=Office.officeid inner join
Customers on Customers.Salesrepsid=Salesreps.salesrepsid
where Office.city Like '%aur' and Salesreps.hiredate<'2006-01-01' and Salesreps.age>21


SELECT Salesreps.name,Customers.company, Customers.creditlimit, Office.city, Customers.customerid
FROM   Salesreps INNER JOIN Customers ON Customers.salesrepsid = Salesreps.salesrepsid INNER JOIN
   Office ON Salesreps.officeid = Office.officeid 


   
   select office.officeid, sum(salesreps.salesrepsid),sum(salesreps.sales),office.targetsales,office.actualsales, (office.targetsales - office.actualsales) as difference from
office  left join salesreps 
on office.officeid = salesreps.officeid
group by(salesreps.officeid)


select products.description,products.price,products.qtyonhand,sum(orders.amount),sum(orders.qty),sum(orders.amount) from
products  left join orders
on products.productid = orders.productid
group by(orders.productid)


select customers.company , sum(orders.qty),sum(orders.amount) from
customers inner join orders 
on customers.customerid=orders.customerid
group by(orders.customerid)






select salesreps.name,salesreps.hiredate,salesreps.quota,salesreps.sales
from salesreps 
where hiredate between 
'2015-01-01' and '2020-01-01'


select products.description ,count(orders.customerid) as TotalCustomer from
Products  left join orders 
on products.productid=orders.productid
left join customers 
on orders.customerid=customers.customerid
group by(orders.productid)






