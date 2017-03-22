LOAD DATA LOCAL INFILE 'security_history_20170321.csv' 
INTO TABLE security_history  
    FIELDS TERMINATED BY ',' 
           OPTIONALLY ENCLOSED BY '"'
    LINES  TERMINATED BY '\n' -- or \r\n
(symbol,@trade_date,open,high,low,close,volume) 
SET trade_date = STR_TO_DATE(@trade_date,'%m/%d/%Y')
;
