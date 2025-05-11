--question 1
SELECT 
  OrderID, 
  CustomerName, 
  TRIM(product) AS Product
FROM (
  SELECT 
    OrderID, 
    CustomerName, 
    unnest(string_to_array(Products, ',')) AS product
  FROM ProductDetail
) AS expanded;

--question 2
SELECT o.OrderID, o.CustomerName, oi.Product, oi.Quantity
FROM Orders o
JOIN OrderItems oi ON o.OrderID = oi.OrderID;
