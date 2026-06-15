CREATE TABLE supplier_mgmt AS
SELECT
	suppliers.supplier_ID As supplier_ID,
    suppliers.supplier_name as supplier_name,
    product.product_ID as product_ID,
    product.product as product_name,
    suppliers.phone_number as phone_number,
    suppliers.email as email
from suppliers
cross join
product;

#Inserting a new record into the Suppliers table:
	INSERT INTO supplier_mgmt (supplier_ID, supplier_name, product_ID, product_name, phone_number, email)
	VALUES ('S001', 'Highland Sports', 'P100', 'Football', '123-456-7890', 'contact@highlandsports.com');
#Updating the supplier name from 'Highland Sports' to 'HighlandSporty'
	SET SQL_SAFE_UPDATES = 0;
    UPDATE supplier_mgmt
	SET supplier_name = 'HighlandSports'
	WHERE supplier_name = 'Highland Sports';
#Selecting and viewing all data from the Suppliers table:
	SELECT * FROM supplier_mgmt WHERE supplier_ID = 'S001';
#Deleting records with the supplier name 'HighlandSporty':
	DELETE FROM supplier_mgmt	WHERE supplier_name = 'HighlandSporty';
    SET SQL_SAFE_UPDATES = 1;
