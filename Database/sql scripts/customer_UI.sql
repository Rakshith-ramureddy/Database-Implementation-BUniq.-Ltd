#login
SELECT customer_ID, firstName, lastName 
FROM customer
WHERE username = 'AMYY71' AND password_ = 'hfu73';
#this is to access their profile using creds
SELECT customer_ID, firstName, lastName, DOB, phoneNumber, email, paymentInfo, address_ID
FROM customer
WHERE username = 'AMYY71' AND password_ = 'hfu73';
#TO create a new profile
 INSERT INTO customer (customer_ID, firstName, lastName, DOB, phoneNumber, email, username, password_, paymentInfo, address_ID)
VALUES (
    'C111565',
    'EUGENE',
    'HUANG',
    '1965-05-14', -- Replace with the actual date of birth
    '020 94981833', -- Replace with the actual phone number
    'eugene10@gmail.com',
    'EUGENEH65',
    'Q(y1+@lYDH',
    '8156 9121 4825 2234', -- Replace with the actual payment information
    2 -- Replace with the actual address_ID
);
DELETE FROM customer WHERE customer_ID = 'C111565';
