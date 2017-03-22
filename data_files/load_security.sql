LOAD DATA LOCAL INFILE 'security.csv' 
INTO TABLE security  
    FIELDS TERMINATED BY ',' 
           OPTIONALLY ENCLOSED BY '"'
    LINES  TERMINATED BY '\n' -- or \r\n
;
