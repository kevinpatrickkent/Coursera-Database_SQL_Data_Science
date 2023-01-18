/* Exercise 3: Scalar and String Functions
Query B1: Enter a function that displays the rounded cost of each rescue.

Query B2: Enter a function that displays the length of each animal name.

Query B3: Enter a function that displays the animal name in each rescue in uppercase.

Query B4: Enter a function that displays the animal name in each rescue in uppercase without duplications.

Query B5: Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. Use cat in lower case in the query.
*/

-- I really think this should be normalized per animal but I don't think they are asking for that

SELECT * FROM PETRESCUE;

-- Answer 1
SELECT ANIMAL, ROUND(COST) AS ROUND_COST FROM PETRESCUE;

-- Answer 2
SELECT ANIMAL, LENGTH(ANIMAL) AS NAME_LENGTH FROM PETRESCUE;

-- Answer 3
SELECT Animal, UPPER(ANIMAL) AS ME_UPPER FROM PETRESCUE;

-- Answer 4
SELECT DISTINCT(Animal) AS UNQ_ANIMAL, UPPER(ANIMAL) AS ME_UPPER FROM PETRESCUE;

-- Answer 5 - made sure that I didn't miss any case differences
SELECT * FROM PETRESCUE WHERE LOWER(ANIMAL) = 'cat';
