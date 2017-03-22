LOAD DATA LOCAL INFILE 'account_security_position.csv' 
INTO TABLE account_security_position
    FIELDS TERMINATED BY ',' 
           OPTIONALLY ENCLOSED BY '"'
    LINES  TERMINATED BY '\n' -- or \r\n
;
