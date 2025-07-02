use vamsi;
show tables;

select DISTINCT product_category,ROUND(sum(total_revenue),2) as revenue 
from customer where region='Asia'group by product_category;
select product_name,units_sold from customer order by product_name ASC;
 select c1.transaction_id,c1.product_name from customer c1 left join customer c2 on c1.transaction_id =c2.transaction_id;
 select c1.transaction_id,c1.product_name from customer c1 inner join customer c2 on c1.transaction_id =c2.transaction_id;
 select c1.transaction_id,c1.product_name from customer c1 left join customer c2 on c1.transaction_id =c2.transaction_id;
 select ROUND(SUM(total_revenue),2) as total,ROUND(avg(total_revenue),2) as average from customer;
 SELECT total_revenue from (select total_revenue from customer where total_revenue>1000) as t1;
 create view customers as  select  region,SUM(total_revenue) from customer group by region;
 select * from customers;
 create index idx_region on customer(region(100));
 explain select * from customer where region='asia';

 