/*
===============================================================================
Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose: 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the "LOAD DATA LOCAL INFILE"  command to load data from csv Files to bronze tables.
    - The start_time and end_time functions provide the total time taken to load the files.
===============================================================================
*/

SET @start_time = NOW();

    TRUNCATE TABLE bronze.crm_cust_info;
    LOAD DATA LOCAL INFILE 'your-filepath'
    INTO TABLE bronze.crm_cust_info
    CHARACTER SET utf8mb4
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

    TRUNCATE TABLE bronze.crm_prd_info;
    LOAD DATA LOCAL INFILE 'your-filepath'
    INTO TABLE bronze.crm_prd_info
    CHARACTER SET utf8mb4
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

    TRUNCATE TABLE bronze.crm_sales_details;
    LOAD DATA LOCAL INFILE 'your-filepath'
    INTO TABLE bronze.crm_sales_details
    CHARACTER SET utf8mb4
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

    TRUNCATE TABLE bronze.erp_loc_a101;
    LOAD DATA LOCAL INFILE 'your-filepath'
    INTO TABLE bronze.erp_loc_a101
    CHARACTER SET utf8mb4
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

    TRUNCATE TABLE bronze.erp_px_cat_g1v2;
    LOAD DATA LOCAL INFILE 'your-filepath'
    INTO TABLE bronze.erp_px_cat_g1v2
    CHARACTER SET utf8mb4
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

    TRUNCATE TABLE bronze.erp_cust_az12;
    LOAD DATA LOCAL INFILE 'your-filepath'
    INTO TABLE bronze.erp_cust_az12
    CHARACTER SET utf8mb4
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;
    
SET @end_time = NOW();

SELECT CONCAT('Total load duration: ', TIMESTAMPDIFF(SECOND, @start_time, @end_time), ' seconds') AS load_summary;
