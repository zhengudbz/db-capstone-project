CREATE PROCEDURE GetMaxQuantity()  
SELECT max(quantities) from orders;

call GetMaxQuantity;

PREPARE GetOrderDetail FROM 'SELECT OrderID, Quantities, TotalCost FROM orders Where OrderID = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;

DELIMITER //

CREATE PROCEDURE GetOrderDetail (
    IN id INT
)
BEGIN
    DELETE FROM orders
    WHERE OrderID = id;
    SELECT CONCAT('Order ', id, ' is cancelled') AS Confirmation;
END //

DELIMITER ;

CALL GetOrderDetail(123);


