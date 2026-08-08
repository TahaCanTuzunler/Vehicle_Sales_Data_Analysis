--- Vehicle table has been created that contains vehicle details.
--- First dimension table of star schema

CREATE TABLE dim_vehicle (
    vehicle_id SERIAL PRIMARY KEY,
    year INT,
    make VARCHAR(50),
    model VARCHAR(50),
    trim VARCHAR(50),
    body VARCHAR(50),
    transmission VARCHAR(50),
    color VARCHAR(50),      
    interior VARCHAR(50)    
);

--- IMPORTING DATA FROM FIRST TABLE
--- I USED 'SELECT DISTINCT' TO IMPORT UNIQUE VALUES ONLY

INSERT INTO dim_vehicle (year, make, model, trim, body, transmission, color, interior)
SELECT DISTINCT year, make, model, trim, body, transmission, color, interior
FROM first_car_sales;


--- SELLER TABLE HAS BEEN CREATED. SECOND DIMENSION TABLE

CREATE TABLE dim_seller (
		seller_id SERIAL PRIMARY KEY,
		seller_name VARCHAR(150)
);


INSERT INTO dim_seller (seller_name)
SELECT DISTINCT seller
FROM first_car_sales;


--- LOCATION TABLE HAS BEEN CREATED. THIRD DIMENSION TABLE

CREATE TABLE dim_location (
		location_id SERIAL PRIMARY KEY,
		state VARCHAR(50)
);

INSERT INTO dim_location (state)
SELECT DISTINCT state
FROM first_car_sales;