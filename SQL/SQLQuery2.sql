--Exercise 1

/*
CREATE TABLE Customers_
(
Cust_ID int NOT NULL ,
Cust_Name varchar(50),
Cust_City varchar(50),
Cust_RoomNo int,
CheckIn_Time datetime,
primary key (Cust_ID)
)
*/


--Exercise 2



/*Print Distinct City from Table Customers 
and Print Count Distinct City from Table Customers.*/

/*
select distinct c.city, count(*) as distinct_city_count 
from customers as c 
group by c.city
*/

/*Write a SQL query to get the least number of quantities and
the highest number of quantities bought by the user consider
the OrderDetails Table.*/

/*
select min(od.quantity) as least_number, max(od.quantity) as highest_number 
from order_details as od
*/

/*Print the total and an average number of quantities ordered by users, consider the OrderDetails Table.*/

/*
select count(od.quantity) as total, AVG(od.quantity) as average
from order_details as od
*/

/*Print name of the product which is present at the 5th position
till the 15th position from Products table, use LIMIT keyword*/

-- There is no limit keyword in SQL SERVER, that's why I'm using different approach to get this.


/*
select ProductID,
ProductName as product_name
from products
where ProductID between 5 and 15 
*/

/* Write a SQL query for all the details of the supplier whose
name consists of “A” at the second position from the Suppliers
table. */

/*
select SupplierName
from suppliers
where SupplierName like '_A%'
*/

/* Print the details of the customer who doesn’t stay in the USA
and Canada from the Customers table.*/

/*
select*from
customers
where Country not in ('USA','CANADA')
*/


/*Print the details of all the orders which were placed between
the year 2020 to 2021 also print the same in descending order
from the OrderDetails table.*/


/*
select*
from orders
where OrderDate between '2020-01-01' and '2021-12-31'
order by OrderID desc

*/


/*Write a query to show the distinct city and their count from
the Customers table.*/

/*
SELECT distinct City as City_Name, count(City) as count_of_city
from customers 
group by City
*/


/*Write a query to fetch details of all employees excluding the
employees with first names, “Sanjay” and “Sonia” from the
Employees table.*/


/*
select *
from employees
where not FirstName = ('Sanjay') and not FirstName = ('Sonia')
*/


/*
Duplicate a table as similar to the Suppliers table and name it
as SupplierDetail.
*/

/*
select * INTO SupplierDetail
FROM 
suppliers
*/

/*Delete customer details whose country is Venezuela and print
the rest of the Customer table*/


/*
Delete from customers where Country = 'Venezuela'
select*FROM customers
*/

