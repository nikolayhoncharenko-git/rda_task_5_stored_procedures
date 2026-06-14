USE ShopDB; 
-- Він повинен повернути таблицю зі списком назв продуктів, а також їх кількістю на складі.
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN warehouse_id INT
)
BEGIN
    SELECT Name,
           WarehouseAmount
    FROM Products
        INNER JOIN ProductInventory
            ON WarehouseID = warehouse_id;
END //
DELIMITER ;
