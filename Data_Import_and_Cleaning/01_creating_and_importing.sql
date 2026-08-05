--- Verisetini aktarmak için tablo oluşturuldu. (Tables are created)

CREATE TABLE first_car_sales (
		year INT,
		make VARCHAR(50),
		model VARCHAR(50),
		trim VARCHAR(50),
		body VARCHAR(50),
		transmission VARCHAR(50),
		vin VARCHAR(50),
		state VARCHAR(50),
		condition FLOAT,
		odometer FLOAT,
		color VARCHAR(50),
		interior VARCHAR(50),
		seller VARCHAR(255),
		mmr FLOAT,
		sellingprice FLOAT,
		saledate VARCHAR(255)
);

--- Copy komutuyla veriler tabloya aktarıldı. (Data is imported)

COPY first_car_sales
FROM 'C:\Users\can_t\Desktop\car_prices_kaggle.csv' 
DELIMITER ','                       
CSV HEADER;  

--- Veriler doğru aktarıldı mı diye kontrol ediyorum. (Checking for mistakes)

SELECT COUNT(*) FROM first_car_sales; 

SELECT * FROM first_car_sales
LIMIT 10; 
