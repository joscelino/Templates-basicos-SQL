LOAD DATA INFILE 'D:\Python/Historical Product Demand.csv' 
INTO TABLE forecast
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;