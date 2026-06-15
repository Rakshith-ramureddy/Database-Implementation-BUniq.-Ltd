CREATE TABLE inventory_mgmt AS
SELECT
    inventory.inventory_ID AS inventory_ID, 
    inventory.branch_ID AS branch_ID,
    branch.branch_Name AS branch_Name,
    product.product_ID AS product_ID,
    product.product AS product_name,
    product.category AS product_category,
    suppliers.supplier_name AS supplier_name,
    inventory.receving_Date AS receving_Date,
    product.price AS price_per_unit,
    inventory.total_InventoryQTY As total_InventoryQTY
FROM
    inventory,product,suppliers,branch;

# UI design

SELECT * FROM inventory_mgmt;
INSERT INTO inventory_mgmt (branch_ID, receving_Date, total_InventoryQTY)
VALUES ('BBB1000', '01/01/2024', 500);
INSERT INTO inventory_mgmt (product_category, price) VALUES ('Badminton','150');
INSERT INTO inventory_mgmt (supplier_name) VALUES ('BAS');
INSERT INTO inventory_mgmt(branch_Name) VALUES ('kAS');
UPDATE inventory_mgmt SET total_InventoryQTY = 550 WHERE inventory_ID = BP5776;
DELETE FROM inventory_mgmt WHERE inventory_ID = BP5776;

