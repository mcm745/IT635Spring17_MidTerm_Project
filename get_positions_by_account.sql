-- sample call: call get_positions_by_account ('Eric', 'Clapton');

DELIMITER $$
drop procedure if exists get_positions_by_account;

create procedure get_positions_by_account 
(
IN first_name varchar(50),
IN last_name varchar(50)
)
BEGIN
select fname as First_Name, 
lname as Last_Name,
security_desc as Security,
quantity * average_price as Position
from account a,
security b,
account_security_position c
where a.acct_id = c.acct_id
and b.symbol = c.symbol
and a.fname = first_name
and a.lname = last_name;
END $$
DELIMITER ;
