/*
Given the table customer, which stores all the customer information and their referrals, as shown below.

Column Name	Type	Description
id	INT	The id of the customer, primary key
name	VARCHAR	The name of the customer
referrer_id	INT	The id of the referrer
Now you need to write a query statement that returns a list of customers containing only the name field, requiring that the referrer numbers of the customers in the list are not 1.
*/

SELECT * FROM customer
