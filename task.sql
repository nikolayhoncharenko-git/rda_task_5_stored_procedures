DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN warehouse_id INT
)
BEGIN
    SELECT Products.Name,
           ProductInventory.WarehouseAmount
    FROM Products
        INNER JOIN ProductInventory
            ON ProductInventory.ProductID = Products.ID
            AND ProductInventory.WarehouseID = warehouse_id;
END //
DELIMITER ;
