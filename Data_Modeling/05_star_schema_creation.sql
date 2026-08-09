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

---FACT TABLE CREATION

--- saledate COLUMN FROM first_car_sales DATA TYPE CHANGED TO "DATE" 
--- DELETED THE HOUR INFORMATIONS
--- TO MAKE IT SIMPLE AND FASTER

ALTER TABLE first_car_sales
ALTER COLUMN saledate TYPE DATE
USING TO_DATE(SUBSTRING(saledate, 1, 24), 'Dy Mon DD YYYY HH24:MI:SS');

--- FACT TABLE CREATED

CREATE TABLE fact_sales (
	sale_id SERIAL PRIMARY KEY,
	vin VARCHAR(100),
	vehicle_id INT REFERENCES dim_vehicle(vehicle_id),
	seller_id INT REFERENCES dim_seller(seller_id),
	location_id INT REFERENCES dim_location(location_id),
	condition INT,
	odometer INT,
	mmr INT,
	sellingprice INT,
	saledate DATE
);


--- DATA IMPORTED FROM first_car_sales, dim_vehicle, dim_seller, dim_location TO fact_sales TABLE
--- f: first_car_sales / v: dim_vehicle / l: dim_location / s: dim_seller

INSERT INTO fact_sales (vin, vehicle_id, seller_id, location_id, condition, odometer, mmr, sellingprice, saledate)
SELECT 
	f.vin,
	v.vehicle_id,
	s.seller_id,
	l.location_id,
	f.condition,
	f.odometer,
	f.mmr,
	f.sellingprice,
	f.saledate
FROM first_car_sales f
JOIN dim_vehicle v ON
	f.year = v.year AND
	f.make = v.make AND
	f.model = v.model AND
	f.trim = v.trim AND
	f.body = v.body AND
	f.transmission = v.transmission AND
	f.color = v.color AND
	f.interior = v.interior
JOIN dim_seller s ON f.seller = s.seller_name
JOIN dim_location l ON f.state = l.state;
