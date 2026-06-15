
drop table if exists feedback_mgmt;
create table feedback_mgmt as 
select 
    feedback.feedback_ID as feedback_ID,
    feedback.order_ID as order_ID,
    feedback.productRating as product_rating,
    feedback.facilityRating as facility_rating,
    feedback.review as review,
    feedback.staffRating as staff_rating,
    customer.customer_ID as customer_ID,
    customer.firstName as firstName,
    customer.lastName as lastName,
    customer.phoneNumber as phoneNumber
from feedback,customer;

#feedback_: 
#Viewing all feedback_ entries
SELECT * FROM feedback_mgmt;
#Inserting a new feedback_ record
INSERT INTO feedback_mgmt(feedback_ID, order_ID, customer_ID, firstName,
 lastName, phoneNumber, product_rating, staff_rating, facility_rating, review)
VALUES ('FB002', 'O124', 'C457', 'Jane', 'Smith', '987-654-3210', 5, 4, 5, 'Outstanding selection of products and excellent customer service.');
#Updating an existing feedback_ entry
UPDATE feedback_mgmt
SET Review = 'Updated review: customer service has improved significantly.'
WHERE feedback_ID = 'FB002';
#Deleting a feedback_ entry
DELETE FROM feedback_mgmt
WHERE feedback_ID = 'FB002';


