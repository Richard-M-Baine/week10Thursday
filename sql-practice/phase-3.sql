-- Find Hermione's cats
-- Your code here
SELECT cats.name FROM cats
--- join cats table to cats_owners table
JOIN cat_owners ON cat_id = cats.id
--- join owners table to cats_owners table
JOIN owners ON owners.id = cat_owners.owner_id
WHERE owners.first_name = 'Hermione';

-- Find All the Toys for Hermione's cats
-- Your code here

SELECT toys.name FROM toys
--- join cats table with this toys table
JOIN cats ON toys.cat_id = cats.id
--- join cats with cat_owners table
JOIN cat_owners ON cats.id = cat_owners.cat_id
JOIN owners ON owners.id = cat_owners.owner_id
WHERE owners.first_name = 'Hermione';
