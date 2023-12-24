create schema rushi;
use rushi;
select * from mobile;
-- check mobile features and price list
select phone_name,price from mobile;

-- find the price of 5 most expensive phones
select * from mobile
order by price desc
limit 5;

-- find the price of five most cheapest phone
select * from mobile
order by price asc
limit 5;

-- list of top 5 samsung phones with price and all the features
select * from mobile
where Brands="Samsung"
order by price desc
limit 5;

-- must have android phone list then top 5 high price android phones--

select * from mobile 
where Operating_System_Type = "android"
order by price desc
limit 5;

-- must have android phone list then top 5 lower price androids phones

select * from mobile
where Operating_System_Type='Android'
order by price asc
limit 5;

-- must have ios phone list then top 5 price ios phone

select * from mobile
where Operating_System_Type='IOS'
order by price desc
limit 5;

-- must have ios phone list then lower 5 price ios phone

select * from mobile
where Operating_System_Type='IOS'
order by price asc
limit 5;

-- write a query which phone support 5g and also top 5 phone with 5g support

select * from mobile
where 5G_Availability="Yes"
order by price desc
limit 5;

-- total price of all the mobile is to be found with brand name
select brands,sum(price) from mobile
group by brands;












