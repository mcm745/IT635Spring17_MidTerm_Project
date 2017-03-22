-- sample calls: 
-- call show_historical_prices ('AXP','2016-03-01','2017-03-01');
-- call show_historical_prices ('AXP','2017-03-01',null);
-- call show_historical_prices ('AXP',null,'2008-03-01');

DELIMITER $$
drop procedure if exists show_historical_prices;

create procedure show_historical_prices
(
IN search_symbol varchar(20),
IN start_date datetime,
IN end_date datetime 
)
BEGIN

declare sdate datetime;
declare edate datetime;
if start_date is null then
   set sdate = '1900-01-01';
else
   set sdate = start_date;
end if;

if end_date is null then
   set edate = '9999-12-31';
else
   set edate = end_date;
end if;

select a.symbol as Symbol,
security_desc as Security,
trade_date as Trade_Date, 
close as Closing_Price
from security a,
security_history b
where a.symbol = b.symbol
and a.symbol = search_symbol
and b.trade_date between sdate and edate;
END $$
DELIMITER ;

