/*------------------------------------------------
Analyze data awesome_chocolates
-------------------------------------------------*/

SELECT 
  column_name, 
  data_type, 
  character_maximum_length, 
  is_nullable, 
  column_default 
FROM 
  information_schema.columns 
WHERE 
  table_name = 'customers';

select created, amount, customerid, (quantity * amount) as subtotal,
((quantity * amount)*(discount / 100))as discount ,
((quantity * amount) - ((quantity * amount)*(discount / 100))) as total
from sales s;


select salesdate , customerid, amount, quantity, (quantity * amount) as subtotal,
((quantity * amount)*(discount))as discount ,
((quantity * amount) - ((quantity * amount)* discount)) as total
from sales s where productid  = 1;

update sales set 
total = ((quantity * amount) - ((quantity * amount)*(discount)))

select * from sales s
where total  > 10000
order by total  desc;

select extract(year from now())as y; //extract year from date

do $$
declare p_productid int;
declare p_cost_per_unit numeric(15,6);
declare p_discount numeric(15,6);
declare p_quantity int;
declare s_quantity int;
declare total_quantity int;

declare rec record;
declare products_cursor cursor for
	select productid, quantity, cost_per_unit, discount from products where productid = 1;
begin
	
    open products_cursor;
    fetch products_cursor into rec;
   
   	loop
	   	fetch next from products_cursor into rec;
	    exit when not found;
	   
	   p_cost_per_unit := rec.cost_per_unit;
	   p_discount := rec.discount;
	   
	   update sales set 	  
		  amount = p_cost_per_unit,
		  discount = (p_discount/100)		  
	   where productid = rec.productid;
	  
	   
	   raise notice 'sales productid: %  updated', rec.productid;
	   
   		
   	end loop;
   	
	close products_cursor;

end;
$$
language plpgsql;


select c.customerid, concat(c.first_name,' ', c.last_name) as name ,
c.phone_number ,
c.email ,
g.city ,
g.state 
 from customers c inner join geo g  on g.geoid = c.geoid
where c.customerid = 25;