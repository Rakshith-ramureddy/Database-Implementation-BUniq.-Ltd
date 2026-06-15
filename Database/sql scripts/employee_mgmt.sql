create table employee_mgmt as
select
	employee.employee_ID as employee_ID,
	employee.first_Name as first_Name,
    	employee.last_Name as last_Name,
    	employee.DOB as DOB,
    	employee.email as email,
    	address.Address as address,
    	employee.phoneNumber as phoneNumber,
    	employee.designation as designation

from employee,address;

#Employee Management
#Insert:
INSERT INTO employee_mgmt (employee_ID, first_Name, last_Name, DOB, email, address, phoneNumber, designation)
VALUES ('104', 'Rob', 'Walters', '1974-07-23', 'rob0@buniq.com', '1825 Village Pl.', '612-555-0100', 'sales assistant');
SELECT * FROM employee_mgmt;
#View:
SELECT * FROM employee_mgmt WHERE first_Name LIKE '%Rob%' OR last_Name LIKE '%Walters%';
# Update:
SELECT * FROM employee_mgmt  WHERE employee_ID = '104';
SET SQL_SAFE_UPDATES = 0;
UPDATE employee_mgmt 
SET first_Name = 'Rob', last_Name = 'Walters', email = 'rob0@buniq.com', phoneNumber = '612-555-0100', designation = 'sales assistant'
WHERE employee_ID = '104';
# Delete:
DELETE FROM employee_mgmt 
WHERE employee_ID = '104';
