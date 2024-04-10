'''Part 4: Final Report
'''Directions: Write a query that returns the following columns:

'''Pokemon Name	Trainer Name	Level	Primary Type	Secondary Type
'''Pokemon's name	Trainer's name	Current Level	Primary Type Name	Secondary Type Name
'''Sort the data by finding out which trainer has the strongest pokemon so that this will act as
'''ranking of strongest to weakest trainer. You may interpret strongest in whatever way you want,
'''but you will have to explain your decision.
'''Once all of that is done, submit your file by saving it in the "answers" directory and committing it to your fork.

SELECT
p.name
AS "Pokemon Name",
tr.trainername
AS "Trainer Name",
pt.pokelevel
AS "Level",
p.primary_type,
p.secondary_type
FROM pokemons p
LEFT OUTER JOIN pokemon_trainer pt
ON p.id = pt.pokemon_id
LEFT OUTER JOIN trainers tr
ON pt.trainerID = tr.trainerID
LEFT OUTER JOIN types
ON p.primary_type = types.id
AND p.secondary_type = types.id
ORDER BY pt.maxhp DESC;

''' EXPLANATION: At the risk of starting a riot amongst Trainers, I personally sort my own team by MaxHP
'''and feed them as much stew as humanly possible.


 '''How many characters are in the string 'Hello World!'
SELECT CHAR_LENGTH('Hello World!')
AS length_of_hello_world;



