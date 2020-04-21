-- 1. All Customers and their Addresses

SELECT *
FROM "customers" JOIN "addresses" ON "customers".id = "addresses".customer_id;

--2. All orders and their line items (orders, quantity and product).
SELECT *
FROM "orders" JOIN "line_items" ON "orders".id = "line_items".order_id;

--3. Which warehouses have cheetos?
SELECT *
FROM "products"
    JOIN "warehouse_product"
    ON "products".id =  "warehouse_product".product_id
WHERE "products".description = 'cheetos';

Which warehouses have diet pepsi?
SELECT *
FROM "products"
    JOIN "warehouse_product"
    ON "products".id =  "warehouse_product".product_id
WHERE "products".description = 'diet pepsi';

--5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT count(*)
FROM "orders" JOIN "addresses"
    ON "orders".address_id = "addresses".id
GROUP BY "addresses".customer_id
ORDER BY "addresses".customer_id;

--How many customers do we have?
SELECT count(*)
FROM "customers"

--How many products do we carry?
SELECT count(*)
FROM "products";

--What is the total available on-hand quantity of diet pepsi?
SELECT SUM("warehouse_product".on_hand)
FROM "warehouse_product"
WHERE "warehouse_product".product_id = '6';

--STRETCH
