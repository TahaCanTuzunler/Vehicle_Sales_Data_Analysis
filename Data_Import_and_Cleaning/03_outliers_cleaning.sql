--- AYKIRI DEGER ARAMA (SEARCHING OUTLIERS)

SELECT make, model, odometer, sellingprice
FROM first_car_sales
WHERE
	sellingprice < 100
	OR sellingprice > 500000
	OR odometer < 100
	OR odometer > 999999
ORDER BY sellingprice ASC; 

--- 1660 satır aykırı değer. Siliyorum cok küçük oldugu icin. (1660 Outliers, very small, so we delete it)

DELETE FROM first_car_sales
WHERE
	sellingprice <100
	OR sellingprice > 500000
	OR odometer < 100
	OR odometer >999999;