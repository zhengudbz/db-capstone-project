CREATE PROCEDURE GetMaxQuantity()  
SELECT max(quantities) from orders;

call GetMaxQuantity;