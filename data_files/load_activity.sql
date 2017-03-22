LOAD DATA LOCAL INFILE 'activity.csv' 
INTO TABLE activity  
    FIELDS TERMINATED BY ',' 
           OPTIONALLY ENCLOSED BY '"'
    LINES  TERMINATED BY '\n' -- or \r\n
(acct_id,buy_sell_ind,trade_date,symbol,quantity,price)
;
