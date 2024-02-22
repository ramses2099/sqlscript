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

