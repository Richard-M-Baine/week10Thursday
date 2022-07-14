-- Find the first owner that has a last name containing the lowercase letter "r"
SELECT last_name,first_name FROM owners

where last_name like "%r%"
LIMIT 1;

-- Find the name and birth year of all the cats ordered by descending birth year
-- Your code here
SELECT name,birth_year FROM cats
ORDER BY birth_year DESC;

-- Find the name of the cats who have an owner whose first name begins with an "H"
-- Your code here
SELECT name from cats
JOIN cat_owners ON cats.id = cat_owners.cat_id
JOIN owners ON cat_owners.owner_id = owners.id

where owners.first_name LIKE "H%";


-- Find the first and last names of the owner whose cats are born after the year 2015
-- Your code here
select first_name, last_name FROM owners
JOIN cat_owners on owners.id = cat_owners.owner_id
JOIN cats on cats.id = cat_owners.cat_id

WHERE cats.birth_year > 2015;


-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George Beatty, or just Melynda Abshire

SELECT DISTINCT cats.name from cats
JOIN cat_owners on cats.id = cat_owners.cat_id
JOIN owners on cat_owners.owner_id = owners.id
WHERE owners.first_name IN ("George","Melynda");
