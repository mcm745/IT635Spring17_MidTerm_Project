LOAD DATA LOCAL INFILE 'account.csv' 
INTO TABLE account  
    FIELDS TERMINATED BY ',' 
           OPTIONALLY ENCLOSED BY '"'
    LINES  TERMINATED BY '\n' -- or \r\n
(fname, lname, address_line_1, address_line_2, city, state, country)
;
