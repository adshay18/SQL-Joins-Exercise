-- write your queries here

/c joins_exercise

-- Make every row and column appear:
SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;

-- Count number of cars for each owner:
SELECT first_name, last_name, COUNT(*) AS count FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.id ORDER BY first_name;

-- Find average price of cars for owners with more than one car:
SELECT first_name, last_name, CAST(SUM(price)/COUNT(*) AS INT) AS average_price, COUNT(*) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.id HAVING COUNT(*) > 1 AND SUM(price)/COUNT(*) > 10000 ORDER BY first_name DESC;