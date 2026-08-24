 USE ejercicio_17_adv;
  
  -- 1. STORE PROCEDURE mostrear todos los productos
  
  DELIMITER //
   CREATE PROCEDURE get_all_products()
   BEGIN
   SELECT 
   product_id, product_name, category, size, price, stock
   FROM products
   ORDER BY product_name;
   END//
   DELIMITER ;
   
   -- llamar al procedimiento
   CALL get_all_products();
   
   -- 2. STORE PROCEDURE MOSTRAR PRODUCTOS POR CATEGORIA
   
   DELIMITER //
    CREATE PROCEDURE get_products_by_category(
    IN p_category VARCHAR(50))
    BEGIN
    SELECT 
    product_id,
    product_name,
    category,
    size,
    price, 
    stock
    FROM products
    WHERE category = p_category
    ORDER BY product_name ASC;
    END //
    DELIMITER ;
    
    -- CALL PROCEDURE
    
    CALL get_products_by_category('Jacket');
    
    
    -- 3.STORE PROCEDURE para actualizar el stock del producto
    
    DELIMITER //
    CREATE PROCEDURE update_product_stock(
    IN p_product_id INT,
    IN p_new_stock INT
    )
    BEGIN
    UPDATE products
    SET stock = p_new_stock
    WHERE product_id = p_product_id;
    END //
    DELIMITER ;

    -- CALL PROCEDURE
    CALL update_product_stock (3, 20);
    
   