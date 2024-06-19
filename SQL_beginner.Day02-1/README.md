Exercise 00: Move to the LEFT, move to the RIGHT
Allowed: Language - ANSI SQL
Denied: SQL Syntax Construction - NOT IN, IN, NOT EXISTS, EXISTS, UNION, EXCEPT, INTERSECT
Description: Write a SQL statement which returns a list of pizzerias names with corresponding rating value which have not been visited by persons.

Exercise 01: Find data gaps
Allowed: Language - ANSI SQL, SQL Syntax Construction - generate\_series(...)
Denied: SQL Syntax Construction - NOT IN, IN, NOT EXISTS, EXISTS, UNION, EXCEPT, INTERSECT
Description: Write a SQL statement which returns the missing days from 1st to 10th of January 2022 (including all days) for visits of persons with identifiers 1 or 2 (it means days missed by both). Please order by visiting days in ascending mode. The sample of data with column name is presented below.

Exercise 02: FULL means ‘completely filled’
Allowed: Language - ANSI SQL
Denied: SQL Syntax Construction - NOT IN, IN, NOT EXISTS, EXISTS, UNION, EXCEPT, INTERSECT
Description: Write a SQL statement that returns a whole list of person names visited (or not visited) pizzerias during the period from 1st to 3rd of January 2022 from one side and the whole list of pizzeria names which have been visited (or not visited) from the other side. The data sample with needed column names is presented below. Please pay attention to the substitution value ‘-’ for NULL values in person\_name and pizzeria\_name columns. Please also add ordering for all 3 columns.

Exercise 03: Reformat to CTE
Allowed: Language - ANSI SQL, SQL Syntax Construction - generate\_series(...)
Denied: SQL Syntax Construction - NOT IN, IN, NOT EXISTS, EXISTS, UNION, EXCEPT, INTERSECT
Description: Let’s return back to Exercise #01, please rewrite your SQL by using the CTE (Common Table Expression) pattern. Please move into the CTE part of your "day generator". The result should be similar like in Exercise #01

Exercise 04: Find favourite pizzas
Allowed: Language - ANSI SQL
Description: Find full information about all possible pizzeria names and prices to get mushroom or pepperoni pizzas. Please sort the result by pizza name and pizzeria name then. The result of sample data is below (please use the same column names in your SQL statement).

Exercise 05: Investigate Person Data
Allowed: Language - ANSI SQL
Description: Find names of all female persons older than 25 and order the result by name. The sample of output is presented below.

Exercise 06: favourite pizzas for Denis and Anna
Allowed: Language - ANSI SQL
Description: Please find all pizza names (and corresponding pizzeria names using menu table) that Denis or Anna ordered. Sort a result by both columns. The sample of output is presented below.

Exercise 07: Cheapest pizzeria for Dmitriy
Allowed: Language - ANSI SQL
Description: Please find the name of pizzeria Dmitriy visited on January 8, 2022 and could eat pizza for less than 800 rubles.

Exercise 08: Continuing to research data
Allowed: Language - ANSI SQL
Description: Please find the names of all males from Moscow or Samara cities who orders either pepperoni or mushroom pizzas (or both) . Please order the result by person name in descending mode. The sample of output is presented below.

Exercise 09: Who loves cheese and pepperoni?
Allowed: Language - ANSI SQL
Description: Please find the names of all females who ordered both pepperoni and cheese pizzas (at any time and in any pizzerias). Make sure that the result is ordered by person name. The sample of data is presented below.

Exercise 10: Find persons from one city
Allowed: Language - ANSI SQL
Description: Please find the names of persons who live on the same address. Make sure that the result is ordered by 1st person, 2nd person's name and common address. The data sample is presented below. Please make sure your column names are corresponding column names below.