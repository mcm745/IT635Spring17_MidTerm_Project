-- sample call: call show_position_history_by_symbol ('AXP');

DELIMITER $$
drop procedure if exists show_position_history_by_symbol;

create procedure show_position_history_by_symbol
(
IN search_symbol varchar(20)
)
BEGIN
select a.symbol as Symbol,
security_desc as Security,
trade_date as Trade_Date,
buy_sell_ind as Buy_Sell,
price as Purchase_Price,
fname as First_Name, 
lname as Last_Name
from security a,
activity b,
account c
where a.symbol = b.symbol
and b.acct_id = c.acct_id
and a.symbol = search_symbol;
END $$
DELIMITER ;
