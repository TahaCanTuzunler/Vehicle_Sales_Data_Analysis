-- Senaryo: Satis hacmi 500'den buyuk olan (Yuksek Hacimli) markalarin gelir ve fiyat analizi.
-- Scenario: Revenue and average price analysis for high-volume brands (brands with more than 500 total sales).
-- Yetkinlik: JOIN, GROUP BY, HAVING

SELECT 
	make AS "Marka",
	COUNT(f.sale_id) AS "Toplam Satis Adedi",
	SUM(f.sellingprice) AS "Toplam Gelir",
	AVG(f.sellingprice) AS "Ortalama Fiyat"
FROM fact_sales f JOIN dim_vehicle v 
ON v.vehicle_id = f.vehicle_id
GROUP BY v.make
HAVING COUNT(f.sale_id) > 500
ORDER BY "Toplam Gelir" DESC;