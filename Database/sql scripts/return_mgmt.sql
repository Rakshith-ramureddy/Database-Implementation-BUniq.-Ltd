create table return_mgmt as 
select 
    returns.return_ID as return_ID,
    returns.order_ID as order_ID,
    customer.customer_ID as customer_ID,
    customer.firstName as firstName,
    customer.lastName as lastName,
    customer.phoneNumber as phoneNumber,
    customer.email as email,
    returns.refund_amount as Return_amt,
    returns.return_reason as return_reason
from returns,customer;

#return_: 
#Viewing all return_ entries
SELECT * FROM return_mgmt;
#Inserting a new return_ record
INSERT INTO return_mgmt(return_ID, order_ID, customer_ID, firstName,
 lastName, phoneNumber, email, Return_amt, return_reason)
VALUES ('RT001', 'O567', 'C890', 'Alex', 'Johnson', '321-654-0987', 'alex.johnson@email.com', '100.00', 'Defective product');
#Updating an existing return_ entry
UPDATE return_mgmt
SET Review = 'Updated review: customer service has improved significantly.'
WHERE return_ID = 'RT002';
#Deleting a return_ entry
DELETE FROM return_mgmt
WHERE return_ID = 'RT003';