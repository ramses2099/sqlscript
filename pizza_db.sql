-- CREATE DATABASE --

--drop database bank;
create database pizza_db;

CREATE TABLE "customers" (
  "cust_id" serial PRIMARY KEY,
  "first_name" varchar(500),
  "last__name" varchar(500),
  "created_at" timestamp default now()
);

CREATE TABLE "address" (
  "add_id" serial PRIMARY KEY,
  "delivery_address1" varchar(500),
  "delivery_address2" varchar(500),
  "delivery_city" varchar(50),
  "delivery_zipcode" varchar(20),
  "created_at" timestamp default now()
);

CREATE TABLE "items" (
  "item_id" serial PRIMARY KEY,
  "sku" varchar(250),
  "item_name" varchar(250),
  "item_cat" varchar(250),
  "item_size" varchar(250),
  "item_price" decimal(15,6),
  "created_at" timestamp default now()
);

CREATE TABLE "recipes" (
  "recipe_id" serial PRIMARY KEY,
  "item_id" int,
  "quantity" int,
  "created_at" timestamp default now(),
  constraint fk_ref_recipes_items
		foreign key(item_id) references items(item_id)
);

CREATE TABLE "ingredients" (
  "ing_id" serial PRIMARY KEY,
  "ing_name" varchar(250),
  "ing_weight" int,
  "ing_meas" varchar(20),
  "ing_price" decimal(15,6),
  "created_at" timestamp default now(),
);

CREATE TABLE "recipes_ingredients" (
  "recipes_ingredients_id" serial PRIMARY KEY,
  "recipe_id" int,
  "ing_id" int,
  "created_at" timestamp default now(),
  constraint fk_ref_recipes_ingredients_recipes
  foreign key(recipe_id) references recipes(recipe_id),
  constraint fk_ref_recipes_ingredients_ingredients
  foreign key(ing_id) references ingredients(ing_id)
);

CREATE TABLE "inventories" (
  "inv_id" serial PRIMARY KEY,
  "ing_id" int,
  "quantity" int,
  "created_at" timestamp default now(),
  constraint fk_ref_inventories_ingredients
		foreign key(ing_id) references ingredients(ing_id)
);

CREATE TABLE "orders" (
  "order_id" serial PRIMARY KEY,
  "item_id" int,
  "quantity" int,
  "cust_id" int,
  "delivery" boolean,
  "add_id" int,
  "created_at" timestamp default now(),
  constraint fk_ref_orders_items
		foreign key(item_id) references items(item_id),
  constraint fk_ref_orders_address
		foreign key(add_id) references address(add_id)
);

CREATE TABLE "staff" (
  "staff_id" serial PRIMARY KEY,
  "first_name" varchar(50),
  "last_name" varchar(50),
  "position" varchar(100),
  "hourly_rate" decimal(5,2),
  "created_at" timestamp default now()
);

CREATE TABLE "shift" (
  "shift_id" serial PRIMARY KEY,
  "day_of_week" varchar(10),
  "start_time" time,
  "end_time" time,
  "created_at" timestamp default now()
);

CREATE TABLE "rota" (
  "rota_id" serial PRIMARY KEY,
  "date" timestamp,
  "shift_id" int,
  "staff_id" int,
  "created_at" timestamp default now(),
  constraint fk_ref_rota_shift
		foreign key(shift_id) references shift(shift_id),
  constraint fk_ref_rota_staff
		foreign key(staff_id) references staff(staff_id)  
);




