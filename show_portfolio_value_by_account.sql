-- sample call: call show_portfolio_value_by_account ('Ace','Frehley');

DELIMITER $$
drop procedure if exists show_portfolio_value_by_account;

create procedure show_portfolio_value_by_account 
(
IN first_name varchar(50),
IN last_name varchar(50)
)
BEGIN
select a.acct_id as Account_Number,
fname as First_Name, 
lname as Last_Name,
sum(quantity * average_price) as Portfolio_Value
from account a,
account_security_position b
where a.acct_id = b.acct_id
and a.fname = first_name
and a.lname = last_name
group by Account_Number, First_Name, Last_Name;
END $$
DELIMITER ;
