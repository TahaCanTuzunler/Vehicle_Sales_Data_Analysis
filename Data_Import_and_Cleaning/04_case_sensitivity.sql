--- Büyük/küçük harf kontrolü (Case-sensitivity Check)

SELECT make, COUNT(*) as count
FROM first_car_sales
GROUP BY make
ORDER BY make;

--- Bazı markalar 2 farklı şekilde yazılmış (örn: BMW, bmw) Hepsini büyük harf standartına getiriyorum. Varsa boşluk siliyorum.
--- Some brands are written in different ways like BMW, bmw. So i apply uppercase standart for all of them and delete if there is any space.

UPDATE first_car_sales
SET 	
	make = TRIM(UPPER(make)),
	model = TRIM(UPPER(model)),
	body = TRIM(UPPER(body)),
	transmission = TRIM(UPPER(transmission)),
	state = TRIM(UPPER(state)),
	color = TRIM(UPPER(color)),
	interior = TRIM(UPPER(interior));
	
	--- Diğer kolonlarda da aynı hata var diye varsaydım ve onları da düzelttim.
    --- I assumed that there is the same error in other columns, so I fixed them too.