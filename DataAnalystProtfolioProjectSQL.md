## Client Brief - Ben's Pizzeria
    - Main areas of focus
        - Orders
        - Stock control
        - Staff

## Orders Data Required
    - Item name
    - Item price
    - Quantity
    - Customer name
    - Delivery address

## Ours
    - Row ID
    - Order ID
    - Item name
    - Item category
    - Item size
    - Item price
    - Quantity
    - Customer first name
    - Customer last name
    - Delivery address 1
    - Delivery address 2
    - Delivery city
    - Delivery zip code


## Database

## Customer
    - CustomerID PK int
    - Name varchar(500)
    - Address1 varchar(500)
    - Address2 NULL varchar(500)
    - Address3 NULL varchar(500)

## Order
    - OrderID PK int
    - CustomerID int FK >- Customer.CustomerID
    - TotalAmount money
    - OrderStatusID int FK >- OrderStatus.OrderStatusID

## OrderLine
    - OrderLineID PK int
    - OrderID int FK >- Order.OrderID
    - ProductID int FK >- Product.ProductID
    - Quantity int

## Product 
    - ProductID PK int
    - Name varchar(500)
    - Price money

## OrderStatus
    - OrderStatusID PK int
    - Name varchar(500)

## Stock control requirements
    - Wants to be able to know when it's time to order new stock
    - To do this we're going to need more information about:
        - what ingredients go into each into each pizza
        - their quantity based on the size of the pizza
        - the existing stock level
    - We'll assume the lead time for delivery by suppliers is the same for all ingredients


## Staff data requirements
    - Wants to know which staff members are working when
    - Based on the staff salary information, how much each
      pizza costs (ingredients+chefs+delivery)

## Dashboard 1 - Order activity
    - For this, we will need a dashboard with the following data:
        1. Total orders
        2. Total sales
        3. Total items
        4. Average order value
        5. Sales by category
        6. Top selling items
        7. Orders by hour
        8. Sales by hour
        9. Orders by address
        10. Orders by delivery/pick up

```
--ORDER DATASET
select 
o.order_id,
i.item_price,
o.quantity,
i.item_cat,
i.item_name,
o.created_at,
c.cust_id,
concat(c.first_name, ' ', c.last__name) as customer,
a.delivery_address1,
a.delivery_address2,
a.delivery_city,
a.delivery_zipcode,
o.delivery 
from orders o 
inner join items i on i.item_id = o.item_id
inner join address a on a.add_id = o.add_id
inner join customers c on c.cust_id = o.cust_id  
```


## Dashboard 2 - Inventory Management
    - This wil be a lot more complicated than the orders. Mainly because we need to calculate how much inventory we're using and then identify inventory that needs reordering.
    We also want to calculate how much each pizza costs to make base on the cost of the ingredients so we can keep an eye on pricing and P/L
    Here is what we need
        1. Total quantity by ingredient
        2. Total cost of ingredients
        3. Calculated cost of pizza
        4. Percentage stock remaining by ingredient


```
-- TOTAL PRICES PIZZA
select 
i.item_id,
i.sku,
i.item_name,
i.item_cat ,
i.item_size ,
sum(r.quantity  * i2.ing_price ) as total_price_ing
from items i 
inner join recipes r on r.item_id = i.item_id 
inner join recipes_ingredients ri on ri.recipe_id = r.recipe_id 
inner join ingredients i2 on i2.ing_id  = ri.ing_id 
group by 
i.item_id,
i.sku,
i.item_name,
i.item_cat ,
i.item_size 
order by 1 asc

```

## cost for staff
```
select 
r."date",
concat(s.first_name,' ',s.last_name) as staff_name,
s."position",
s.hourly_rate,
s2.day_of_week ,
s2.start_time ,
s2.end_time ,
(extract (hour from s2.end_time) - extract (hour from s2.start_time)) as total_hours,
((extract (hour from s2.end_time) - extract (hour from s2.start_time))* s.hourly_rate) as pay_per_shitf
from rota r  
inner join staff s on s.staff_id = r.staff_id 
inner join shift s2 on s2.shift_id = r.shift_id 
order by 1 asc
```

## stock2
```
with s2 as(select 
item_id,
ing_id,
ing_name,
sum(oredered_weight)as oredered_weight 
from stock1 s 
group by 
item_id,
ing_id,
ing_name)
select 
s2.ing_name,
oredered_weight,
(i1.ing_weight*i.quantity) as total_inv_weight,
(i1.ing_weight*i.quantity) - s2.oredered_weight as remaining_weight
from s2 
inner join inventories i on i.item_id = s2.item_id
inner join ingredients i1 on i1.ing_id  = s2.ing_id 
```

## stock03
```
select 
r."date",
s.first_name,
s.last_name,
s.hourly_rate,
s2.start_time,
s2.end_time,
abs(extract(hour from (s2.end_time - s2.start_time))) as hours_in_shift,
(abs(extract(hour from (s2.end_time - s2.start_time))) * s.hourly_rate) as staff_cost
from rota r
inner join staff s  on s.staff_id = r.staff_id
inner join shift s2 on s2.shift_id  = r.shift_id
```

