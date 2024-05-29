 create database pizzeria;
 use  pizzeria;
 drop database pizzeria;
 -- customer table
 CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);





desc customers;




INSERT INTO customers (first_name, last_name) VALUES
('John', 'Doe'),
('Jane', 'Smith'),
('Michael', 'Johnson'),
('Emily', 'Brown'),
('William', 'Davis'),
('Emma', 'Wilson'),
('Matthew', 'Martinez'),
('Olivia', 'Taylor'),
('Daniel', 'Anderson'),
('Ava', 'Thomas'),
('Alexander', 'Hernandez'),
('Sophia', 'Lopez'),
('James', 'Garcia'),
('Charlotte', 'Rodriguez'),
('Benjamin', 'Lee'),
('Amelia', 'White'),
('Ethan', 'Jackson'),
('Isabella', 'Harris'),
('Jacob', 'Martin'),
('Mia', 'Clark'),
('Walter','White'),
('Joey','Tribbiani'),
('Michael','Scott');


select * from customers;

-- delivery table
CREATE TABLE delivery (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    address_1 VARCHAR(100),
    address_2 VARCHAR(100),
    city VARCHAR(50),
    pincode VARCHAR(10)
);


INSERT INTO delivery (address_1, address_2, city, pincode) VALUES
('123 Main St', 'Apt 1', 'Cityville', '12345'),
('456 Elm St', 'Suite 100', 'Townsville', '23456'),
('789 Oak St', 'Unit B', 'Villageton', '34567'),
('101 Pine St', 'Floor 2', 'Hamletown', '45678'),
('333 Walnut St', 'Room 5', 'Villageton', '56789'),
('444 Elm St', 'Building C', 'Townsville', '67890'),
('777 Pine St', 'Unit 3A', 'Hamletown', '78901'),
('888 Oak St', 'Apartment 10', 'Villageton', '89012'),
('111 Pine St', 'Suite 20', 'Hamletown', '90123'),
('555 Oak St', 'Floor 3', 'Villageton', '01234'),
('666 Cherry Ln', 'Room 7', 'Riverside', '34567'),
('999 Maple Ave', 'Unit D', 'Boroughburg', '45678'),
('222 Maple Ave', 'Building E', 'Boroughburg', '56789'),
('333 Walnut St', 'Apartment 5', 'Villageton', '67890'),
('888 Oak St', 'Floor 4', 'Villageton', '78901'),
('546 Smith St','Tower 10','Birmingham','56420'),
('550 Edward St','Suite 10','Scranton','21301'),
('880 Andy Bl','House 10','Santa Ana','65632');

select * from delivery;



desc delivery;


-- Ingredient Table

CREATE TABLE ingredient (
    ingredient_id INT AUTO_INCREMENT PRIMARY KEY,
    ingredient_name VARCHAR(100),
    ingredient_weight DECIMAL(10,2),
    ingredient_price DECIMAL(10,2)
);



desc ingredient;



INSERT INTO ingredient (ingredient_name, ingredient_weight, ingredient_price) VALUES
('Pepperoni', 0.1, 1.50),
('Mushrooms', 0.05, 1.00),
('Onions', 0.03, 0.75),
('Green Peppers', 0.04, 0.80),
('Black Olives', 0.02, 0.60),
('Sausage', 0.12, 1.80),
('Bacon', 0.08, 1.25),
('Ham', 0.15, 2.00),
('Pineapple', 0.06, 1.00),
('Spinach', 0.07, 0.90),
('Tomatoes', 0.05, 0.75),
('Garlic', 0.02, 0.50),
('Jalapenos', 0.03, 0.60),
('Extra Cheese', 0.1, 1.25),
('BBQ Sauce', 0.05, 0.75),
('Buffalo Sauce', 0.04, 0.70),
('Ranch Dressing', 0.03, 0.60),
('Alfredo Sauce', 0.05, 0.75),
('Marinara Sauce', 0.05, 0.70),
('Oregano', 0.01, 0.30);

select * from ingredient;


-- Recipe Table

-- Creating the "recipe" table
CREATE TABLE recipe (
    row_id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_id INT,
    ingredient_id INT,
    quantity DECIMAL(10,2),
    FOREIGN KEY (ingredient_id) REFERENCES ingredient(ingredient_id)
);


desc recipe;



-- Inserting sample recipe data
INSERT INTO recipe (recipe_id, ingredient_id, quantity) VALUES
(1, 1, 0.1),
(1, 2, 0.05),
(1, 3, 0.03),
(1, 4, 0.04),
(1, 5, 0.02),
(2, 1, 0.1),
(2, 6, 0.12),
(2, 7, 0.08),
(2, 8, 0.15),
(2, 9, 0.06),
(3, 2, 0.07),
(3, 10, 0.05),
(3, 11, 0.05),
(3, 12, 0.02),
(4, 1, 0.1),
(4, 13, 0.03),
(4, 14, 0.1),
(4, 15, 0.05),
(5, 11, 0.04),
(5, 16, 0.03);


select * from recipe;

-- Item Table
-- Creating the "item" table
CREATE TABLE item (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100),
    item_category VARCHAR(50),
    item_size VARCHAR(10),
    item_price DECIMAL(10,2),
    sku INT,
    FOREIGN KEY (sku) REFERENCES recipe(row_id)
);


desc item;



-- Inserting sample item data
INSERT INTO item (item_name, item_category, item_size, item_price, sku) VALUES
('Pepperoni Pizza - Small', 'Pizza', 'Small', 10.99, 1),
('Pepperoni Pizza - Medium', 'Pizza', 'Medium', 12.99, 1),
('Pepperoni Pizza - Large', 'Pizza', 'Large', 14.99, 1),
('Vegetarian Pizza - Small', 'Pizza', 'Small', 11.99, 2),
('Vegetarian Pizza - Medium', 'Pizza', 'Medium', 13.99, 2),
('Vegetarian Pizza - Large', 'Pizza', 'Large', 15.99, 2),
('Meat Lovers Pizza - Small', 'Pizza', 'Small', 12.99, 3),
('Meat Lovers Pizza - Medium', 'Pizza', 'Medium', 14.99, 3),
('Meat Lovers Pizza - Large', 'Pizza', 'Large', 16.99, 3),
('Hawaiian Pizza - Small', 'Pizza', 'Small', 11.99, 4),
('Hawaiian Pizza - Medium', 'Pizza', 'Medium', 13.99, 4),
('Hawaiian Pizza - Large', 'Pizza', 'Large', 15.99, 4),
('Supreme Pizza - Small', 'Pizza', 'Small', 13.99, 5),
('Supreme Pizza - Medium', 'Pizza', 'Medium', 15.99, 5),
('Supreme Pizza - Large', 'Pizza', 'Large', 17.99, 5),
('BBQ Chicken Pizza - Small', 'Pizza', 'Small', 12.99, 6),
('BBQ Chicken Pizza - Medium', 'Pizza', 'Medium', 14.99, 6),
('BBQ Chicken Pizza - Large', 'Pizza', 'Large', 16.99, 6),
('Cheese Breadsticks', 'Appetizer', 'N/A', 6.99, NULL),
('Garlic Knots', 'Appetizer', 'N/A', 4.99, NULL),
('Caesar Salad', 'Salad', 'Regular', 8.99, NULL),
('Greek Salad', 'Salad', 'Regular', 9.99, NULL),
('Chicken Wings - 6 Pieces', 'Appetizer', 'N/A', 9.99, NULL),
('Chicken Wings - 12 Pieces', 'Appetizer', 'N/A', 17.99, NULL),
('Chocolate Lava Cake', 'Dessert', 'N/A', 5.99, NULL),
('Coke - Small', 'Beverage', 'Small', 1.99, NULL),
('Coke - Medium', 'Beverage', 'Medium', 2.49, NULL),
('Coke - Large', 'Beverage', 'Large', 2.99, NULL),
('Diet Coke - Small', 'Beverage', 'Small', 1.99, NULL),
('Diet Coke - Medium', 'Beverage', 'Medium', 2.49, NULL),
('Diet Coke - Large', 'Beverage', 'Large', 2.99, NULL),
('Sprite - Small', 'Beverage', 'Small', 1.99, NULL),
('Sprite - Medium', 'Beverage', 'Medium', 2.49, NULL),
('Sprite - Large', 'Beverage', 'Large', 2.99, NULL),
('Bottled Water', 'Beverage', 'Regular', 1.49, NULL),
('Iced Tea - Small', 'Beverage', 'Small', 1.99, NULL),
('Iced Tea - Medium', 'Beverage', 'Medium', 2.49, NULL),
('Iced Tea - Large', 'Beverage', 'Large', 2.99, NULL);

select * from item;


-- Order Table

-- Creating the "orders" table
CREATE TABLE orders (
    row_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    created_at TIMESTAMP,
    item_id INT,
    quantity INT,
    customer_id INT,
    delivery BOOLEAN,
    address_id INT,
    FOREIGN KEY (item_id) REFERENCES item(item_id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (address_id) REFERENCES delivery(address_id)
);




desc orders;





-- Inserting sample order data
INSERT INTO orders (order_id, created_at, item_id, quantity, customer_id, delivery, address_id) VALUES
(1, '2024-01-01 10:00:00', 1, 2, 1, TRUE, 1),
(2, '2024-01-01 10:30:00', 2, 1, 2, TRUE, 2),
(3, '2024-01-01 11:00:00', 3, 3, 3, TRUE, 3),
(4, '2024-01-01 11:30:00', 4, 2, 4, TRUE, 4),
(5, '2024-01-01 12:00:00', 5, 1, 5, TRUE, 5),
(6, '2024-01-01 12:30:00', 6, 2, 6, TRUE, 6),
(7, '2024-01-01 13:00:00', 7, 1, 7, TRUE, 7),
(8, '2024-01-01 13:30:00', 8, 3, 8, TRUE, 8),
(9, '2024-01-01 14:00:00', 9, 1, 9, TRUE, 9),
(10, '2024-01-01 14:30:00', 1, 2, 10, TRUE, 10),
(11, '2024-01-01 15:00:00', 11, 1, 11, TRUE, 11),
(12, '2024-01-01 15:30:00', 12, 3, 12, TRUE, 12),
(13, '2024-01-01 16:00:00', 1, 2, 13, TRUE, 13),
(14, '2024-01-01 16:30:00', 14, 1, 14, TRUE, 14),
(15, '2024-01-01 17:00:00', 15, 1, 15, TRUE, 15),
(16, '2024-01-01 17:30:00', 16, 2, 1, TRUE, 1),
(17, '2024-01-01 18:00:00', 17, 3, 2, TRUE, 2),
(18, '2024-01-01 18:30:00', 8, 1, 3, TRUE, 3),
(19, '2024-01-01 19:00:00', 19, 2, 4, TRUE, 4),
(20, '2024-01-01 19:30:00', 2, 1, 5, TRUE, 5),
(21, '2024-01-01 20:00:00', 21, 1, 6, TRUE, 6),
(22, '2024-01-01 20:30:00', 2, 2, 7, TRUE, 7),
(23, '2024-01-01 21:00:00', 23, 3, 8, TRUE, 8),
(24, '2024-01-01 21:30:00', 4, 1, 9, TRUE, 9),
(25, '2024-01-01 22:00:00', 25, 2, 10, TRUE, 10),
(26, '2024-01-01 22:30:00', 26, 1, 11, TRUE, 11),
(27, '2024-01-01 23:00:00', 7, 3, 12, TRUE, 12),
(28, '2024-01-01 23:30:00', 28, 1, 13, TRUE, 13),
(29, '2024-01-02 00:00:00', 29, 2, 14, TRUE, 14),
(30, '2024-01-02 00:30:00', 3, 1, 15, TRUE, 15),
(31, '2024-01-02 01:00:00', 31, 2, 1, TRUE, 1),
(32, '2024-01-02 01:30:00', 32, 1, 2, TRUE, 2),
(33, '2024-01-02 02:00:00', 33, 3, 3, TRUE, 3),
(34, '2024-01-02 02:30:00', 4, 2, 4, TRUE, 4),
(35, '2024-01-02 03:00:00', 35, 1, 5, TRUE, 5),
(36, '2024-01-02 03:30:00', 36, 2, 6, TRUE, 6),
(37, '2024-01-02 04:00:00', 3, 1, 7, TRUE, 7),
(38, '2024-01-02 04:30:00', 38, 3, 8, TRUE, 8),
(39, '2024-01-02 05:00:00', 9, 1, 9, TRUE, 9),
(40, '2024-01-02 05:30:00', 4, 2, 10, TRUE, 10);
select item_id,count(item_id) from orders group by item_id order by count(item_id);



select * from orders;
drop table orders;
-- Subqueries
-- Display the details of customers who had ordered a Pepperoni Pizza Small.
select * from customers where id in (select customer_id from orders where Item_id = 1);




-- What is the address used to place the order by customer Benjamin Lee.
select * from delivery where address_id in(select address_id from orders where customer_id =
(select id from customers where first_name = "Benjamin")); 


-- Display the orders details placed by John Doe
SELECT * FROM orders WHERE customer_id =(SELECT id FROM customers WHERE first_name = "John");



-- Display the Items ordered by Emily Brown
SELECT * FROM item WHERE item_id in (SELECT item_id FROM orders WHERE customer_id =
(SELECT id FROM customers WHERE first_name = "Emily"));




-- Display the names of the customers who had not placed an order
SELECT * from customers WHERE id NOT IN (SELECT customer_id FROM orders);


-- JOINS

-- [1] Display all the order details of the customers
select  distinct c.*,o.* from customers c left join orders o on c.id = o.customer_id 
union
select  distinct c.*,o.* from customers c right join orders o on c.id = o.customer_id  ;  
   
 
 -- [2] Display all the ingredient and recipe details.
select   i.*, r.* from ingredient i  inner join recipe r on i.ingredient_id = r.ingredient_id;
union
select distinct i.*, r.* from ingredient i  right join recipe r on i.ingredient_id = r.ingredient_id;

-- [3] Retrieve order details along with customer information and delivery address.
SELECT  o.order_id, c.*, d.*
FROM orders o
INNER JOIN customers c ON o.customer_id = c.id
INNER JOIN delivery d ON o.address_id = d.address_id ;

-- [4] Retrieve all customers and their orders, including those who haven't placed any orders.
 SELECT c.*, COUNT(o.order_id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.id;


-- [2]Retrieve customers along with any particular item
SELECT c.*, o.*
FROM customers c
RIGHT JOIN orders o ON c.id = o.customer_id
WHERE o.item_id = 4;





SELECT customers.*, orders.order_id
FROM customers
left JOIN orders ON customers.id = orders.customer_id
group by customers.id;

