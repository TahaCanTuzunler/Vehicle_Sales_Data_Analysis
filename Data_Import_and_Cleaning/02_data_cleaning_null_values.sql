--- Eksik veri analizi ve temizleme (Missing value analyzing and cleaning)

SELECT
	COUNT(*) AS total_rows,
	SUM(CASE WHEN make IS NULL THEN 1 ELSE 0 END) AS missing_make,
	SUM(CASE WHEN model IS NULL THEN 1 ELSE 0 END) AS missing_model,
	SUM(CASE WHEN odometer IS NULL THEN 1 ELSE 0 END) AS missing_odometer,
	SUM(CASE WHEN mmr IS NULL THEN 1 ELSE 0 END) AS missing_market_value,
	SUM(CASE WHEN sellingprice IS NULL THEN 1 ELSE 0 END) AS missing_price
FROM first_car_sales;

--- OUTPUT 

"total_rows"  |	"missing_make"	|  "missing_model"	|  "missing_odometer"	|  "missing_market_value"	|  "missing_price"

 	558837	  | 	 10301	    |  10399		    |    94			        |           38		    	|      12

--- Marka ve model NULL değerlerini sayı olmadığı için ortalama değer ile dolduramayız. Ayrıca toplam verinin %2'sinden de az olduğu için siliyoruz. (NULL values for brand and model, can not enter mean value, also it is less than %2, so we delete it.)

DELETE FROM first_car_sales
WHERE
	make IS NULL
	OR model IS NULL
	OR odometer IS NULL
	OR mmr IS NULL
	OR sellingprice IS NULL;