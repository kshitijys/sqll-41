create table customer
(
id int primary key identity(1,1),
name varchar(20),
city varchar(20),



)
select*from customer

insert into customer values('om','pune')
insert into customer values('ketan','mumbai')
insert into customer values('aditya','nashik')
insert into customer values('pratik','banglore')
insert into customer values('mayur','hyderabad')
insert into customer values('mayur','london')

alter table customer add country varchar(20)

alter table customer add postalcode int

insert into customer(country) values('india')
delete from customer where id=8
alter table customer drop column country
update customer set country='india' where id=1
update customer set postalcode=121110 where id=1
update customer set postalcode=121111 where id=2
update customer set postalcode=121113 where id=3
update customer set postalcode=121112 where id=4
update customer set postalcode=121111 where id=5
update customer set postalcode=121110 where id=6

--Select all the different values from the Country column in the Customers table.
select distinct country from customer

--Select all records where the City column has the value "London
select *from customer 
where city='london'
update customer set city='berlin' where id=4

--4.Use the NOT keyword to select all records where City is NOT "Berlin".
select * from customer where not city='berlin'

--5.Select all records where the CustomerID column has the value 2.
select*from customer where id=2

--/\/\6.Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select * from customer where city='berlin'and postalcode=121110

--7.Select all records where the City column has the value 'Berlin' or 'London'.
select * from customer where city='berlin' or city='london'

--8.Select all records from the Customers table, sort the result alphabetically by the column City.
 select * from customer
 order by city

 --9.Select all records from the Customers table, sort the result reversed alphabetically by the column City.
 select * from customer
 order by city desc

 --/\/\10.Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
 select * from customer
 order by country, city 
 
 --11.Select all records from the Customers where the PostalCode column is empty.
 update customer set postalcode=null where id=5

select*from customer where postalcode is null

--12.Select all records from the Customers where the PostalCode column is NOT empty.
select*from customer where postalcode is not null

--13.Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
update customer set city='olso' where country='norway'

--14.Delete all the records from the Customers table where the Country value is 'Norway'.
delete from customer where country='norway'

--15.Use the MIN function to select the record with the smallest value of the Price column.
alter table customer add price int
select min(price)from customer

--16.Use an SQL function to select the record with the highest value of the Price column.

select max(price) from customer

--17.Use the correct function to return the number of records that have the Price value set to 20
select count(*) from customer where price=20

--18.Use an SQL function to calculate the average price of all products.
select avg(price) from customer

--19.Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(price) from customer

--20.Select all records where the value of the City column starts with the letter "a".
select *from customer where city like'a%'

--21.Select all records where the value of the City column ends with the letter "a".
select *from customer where city like'%a'

--22.Select all records where the value of the City column contains the letter "a".
select *from customer where city like'%a%'

--23.Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select *from customer where city like'a%b'

--24.Select all records where the value of the City column does NOT start with the letter "a".
select *from customer where city not like'a%'

--25.Select all records where the second letter of the City is an "a".
select *from customer where city  like'_a%'

--26.Select all records where the first letter of the City is an "a" or a "c" or an "s".
select *from customer where city  like'[acs]%'

--27.Select all records where the first letter of the City starts with anything from an "a" to an "f".
select *from customer where city  like'[a-f]%'

--28.Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select *from customer where city  like'[!acf]%'

--29.Use the IN operator to select all the records where the Country is either "Norway" or "France".
select*from customer where country in('norway','france')

--30.se the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select*from customer where country not in('norway','france')
alter table customer drop column price


--new table product
create table product
(
price int,
productname varchar(20)
)
insert into product values(10,'Geitost')
insert into product values(30,'cheese')
insert into product values(50,'ghee')
insert into product values(20,'Pavlova')
insert into product values(40,'milkpowder')

--31.Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select *from product where price between 10 and 20

--32.Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select *from product where price not between 10 and 20

--33.Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
select *from product where productname  between 'Geitost' and 'Pavlova'

--34.When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select id,name,city,postalcode as pno from customer

--35.When displaying the Customers table, refer to the table as Consumers instead of Customers.
select * from customer as consumer

--36.List the number of customers in each country.
select count(id),country from customer group by country

--\/\/37.List the number of customers in each country, ordered by the country with the most customers first.


--38.Write the correct SQL statement to create a new database called testDB.
create database testdb

--39.Write the correct SQL statement to delete a database named testDB
drop database testdb

--40.Add a column of type DATE called Birthday in Persons table
create table person(
perid int,
name varchar(20),
city varchar(10)
)
alter table person add birthday date

--41.Delete the column Birthday from the Persons table
alter table person drop column birthday



select*from customer
select*from product
select*from person







select city from customer