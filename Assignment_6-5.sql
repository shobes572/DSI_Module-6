-- How many records are in the vehicles table? Provide the query you’d use to determine this as well as the answer to the question.
SELECT COUNT(*) FROM vehicles;
-- ANSWER: 33442


-- Write a query that returns all the records in the vehicles table.
SELECT * FROM vehicles;


-- Write a query that returns the id, make, and model fields for all the records for 2010 vehicles.
SELECT vehicles.id, make, model FROM vehicles
WHERE vehicles.year = 2010;


-- Write a query that returns the count of vehicles from 2010. Also provide the answer.
SELECT COUNT(*) FROM vehicles
WHERE vehicles.year = 2010;
-- ANSWER: 1109


-- Write a query that returns the count of vehicles in the vehicles table between the years 2010 and 2015, inclusive. Provide the query as well as the answer.
SELECT COUNT(*) FROM vehicles
WHERE vehicles.year BETWEEN 2010 AND 2015;
-- ANSWER: 5995


-- Write a query that returns the count of vehicles from the years 1990, 2000, and 2010. Provide the query and the result.
SELECT COUNT(*) FROM vehicles
WHERE vehicles.year IN (1990, 2000, 2010);
-- ANSWER: 3026


-- Write a query that returns the count of all records between 1987 and 2005, exclusive of the years 1990 and 2000.
SELECT COUNT(*) FROM vehicles
WHERE (vehicles.year BETWEEN 1987 AND 2005) AND (vehicles.year NOT IN (1990, 2000)); 
-- ANSWER 17235


-- Write a query that returns the year, make, model, and a field called average_mpg that calculates the average highway/city fuel consumption. 
SELECT vehicles.year, make, model,(hwy + cty) / 2 AS average_mpg FROM vehicles;


-- Write a query that returns the year, make, model, and a text field displaying “X highway; Y city.”
SELECT vehicles.year, make, model, CONCAT(hwy, ' highway; ', cty, ' city') AS hwy_cty FROM vehicles;


-- Write a query that returns the id, make, model, and year for all records that have NULL for either the cyl or displ fields.
SELECT vehicles.id, make, model, vehicles.year FROM vehicles
WHERE cyl IS NULL OR displ IS NULL;


-- Write a query that returns all fields for records with rear-wheel drive and diesel vehicles since 2000, inclusive. Also sort by year and highway mileage, both descending.
SELECT * FROM vehicles
WHERE LEFT(drive, 1) = 'R' AND fuel = 'Diesel' AND vehicles.year >= 2000
ORDER BY vehicles.year desc, hwy desc;


-- Write a query that counts the number of vehicles that are either Fords or Chevrolets and either compact cars or 2-seaters. Provide the query and the answer.
SELECT COUNT(*) FROM vehicles
WHERE make IN ('Ford', 'Chevrolet') AND vehicles.class IN ('Compact Cars', 'Two Seaters');
-- ANSWER: 612


-- Write a query that returns the records for 10 vehicles with the highest highway fuel mileage.
SELECT * FROM vehicles
ORDER BY hwy desc
LIMIT 10;


-- Write a query that returns all the records of vehicles since the year 2000 whose model name starts with a capital X. Sort the list A through Z by make. What happens when you use a lowercase “x” instead?
SELECT * FROM vehicles
WHERE vehicles.year >= 2000 AND LEFT(model, 1) = 'X'
ORDER BY make asc
-- ANSWER: Since the query is case-sensitive, using a lowercase 'x' returns a different list of vehicles


-- Write a query that returns the count of records where the “cyl” field is NULL. Provide the query as well as the answer.
SELECT COUNT(*) FROM vehicles
WHERE cyl IS NULL;
-- ANSWER: 58


-- Write a query that returns the count of all records before the year 2000 that got more than 20 mpg hwy and had greater than 3 liters displacement (“displ” field). Provide the query as well as the answer.
SELECT COUNT(*) FROM vehicles
WHERE vehicles.year < 2000 AND hwy >= 20 AND displ >= 3;
-- ANSWER: 3705


-- Write a query that returns all records whose model name has a (capital) X in its 3rd position.
SELECT * FROM vehicles
WHERE model LIKE '__X%';

