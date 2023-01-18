-- SQL Introduction Exercise
  -- Using the bestbuy database:
  
 -- Copy the following and paste into MySql Workbench

-- find all products 
 Select * from products;

 
-- find all products that cost $1400
 Select * from products
 where Price = 1400;
-- find all products that cost $11.99 or $13.99
 Select * From products
 where Price = 11.99 or Price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
 select * from products
 where not Price = 11.99;
-- find  all products and sort them by price from greatest to least
 select * From products
 Order By Price DESC;
-- find all employees who don't have a middle initial
 select * From employees where MiddleInitial is Null;
-- find distinct product prices
 select * from products
 where Price = 59.99;
-- find all employees whose first name starts with the letter ‘j’
select * from employees where FirstName like 'j%';
 
-- find all Macbooks 
 select * from products where Name like 'macbook%';
 
-- find all products that are on sale
 select * from products where onsale =1;
-- find the average price of all products 
 select avg (Price) from products;
-- find all Geek Squad employees who don't have a middle initial 
 select * from employees where MiddleInitial is null and Title like 'geek%';
-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Use the between keyword** 
select * from products where StockLevel between 500 and 1200;