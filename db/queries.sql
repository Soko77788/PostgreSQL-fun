SELECT animals.id AS animal_id, name AS animal_name, age, type, owners.name AS owner_name FROM animals
JOIN owners 
ON animals.owner_id = owners.id




SELECT * FROM animals WHERE name = 'Cleo';

