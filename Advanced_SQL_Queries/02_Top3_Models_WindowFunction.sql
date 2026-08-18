-- Senaryo: Her markanin kendi icinde en cok gelir getiren ilk 3 modelini siralama.
-- Scenario: Ranking the top 3 highest-revenue generating models within each brand.
-- Yetkinlik: CTE (WITH), Window Functions (RANK, PARTITION BY)

WITH MarkaModelSiralama AS (
	SELECT 
		v.make AS "Marka",
		v.model AS "Model",
		RANK() OVER (PARTITION BY v.make ORDER BY SUM(f.sellingprice) DESC) AS siralama,
		SUM(f.sellingprice) AS "Toplam Gelir"
	FROM fact_sales f JOIN dim_vehicle v
	ON v.vehicle_id = f.vehicle_id
	GROUP BY v.make, v.model
)

SELECT 
	"Marka",
	"Model",
	"Toplam Gelir",
	siralama AS "Model Sırası"
FROM MarkaModelSiralama
WHERE siralama <= 3
ORDER BY "Marka" ASC;