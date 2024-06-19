Exercise 00: First steps into SQL world
Description: Let’s make our first task. Please make a select statement which returns all person's names and person's ages from the city ‘Kazan’.
Allowed: Language - ANSI SQL

Exercise 01: First steps into SQL world
Description: Please make a select statement which returns names , ages for all women from the city ‘Kazan’. Yep, and please sort result by name.
Allowed: Language - ANSI SQL

Exercise 02: First steps into SQL world
Description: Please make 2 syntax different select statements which return a list of pizzerias (pizzeria name and rating) with rating between 3.5 and 5 points (including limit points) and ordered by pizzeria rating. The 1st select statement must contain comparison signs (<=, >=) and the 2nd select statement must contain BETWEEN keyword.
Allowed: Language - ANSI SQL

Exercise 03: First steps into SQL world
Description: Please make a select statement which returns the person's identifiers (without duplication) who visited pizzerias in a period from 6th of January 2022 to 9th of January 2022 (including all days) or visited pizzeria with identifier 2. Also include ordering clause by person identifier in descending mode.
Allowed: Language - ANSI SQL

Exercise 04: First steps into SQL world
Description: Please make a select statement which returns one calculated field with name ‘person_information’ in one string like described in the next sample: Anna (age:16,gender:'female',address:'Moscow'). Finally, please add the ordering clause by calculated column in ascending mode. Please pay attention to quote symbols in your formula!
Allowed: Language - ANSI SQL

Exercise 05: First steps into SQL world
Description: Please make a select statement which returns person's names (based on internal query in SELECT clause) who made orders for the menu with identifiers 13 , 14 and 18 and date of orders should be equal 7th of January 2022. Be aware with "Denied Section" before your work. Please take a look at the pattern of internal query.
Allowed: Language - ANSI SQL
Denied: SQL Syntax Construction - IN, any types of JOINs

Exercise 06: First steps into SQL world
Description: Please use SQL construction from Exercise 05 and add a new calculated column (use column's name ‘check_name’) with a check statement (a pseudo code for this check is presented below) in the SELECT clause. if (person_name == 'Denis') then return true else return false
Allowed: Language - ANSI SQL
Denied: SQL Syntax Construction - IN, any types of JOINs

Exercise 07: First steps into SQL world
Description: Let’s apply data intervals for the person table. Please make a SQL statement which returns a person's identifiers, person's names and interval of person’s ages (set a name of a new calculated column as ‘interval_info’) based on pseudo code below. if (age >= 10 and age <= 20) then return 'interval #1' else if (age > 20 and age < 24) then return 'interval #2' else return 'interval #3' and yes...please sort a result by ‘interval_info’ column in ascending mode.
Allowed: Language - ANSI SQL

Exercise 08: First steps into SQL world
Description: Please make a SQL statement which returns all columns from the person_order table with rows whose identifier is an even number. The result have to order by returned identifier.
Allowed: Language - ANSI SQL

Exercise 09: First steps into SQL world
Description: Please make a select statement that returns person names and pizzeria names based on the person_visits table with date of visit in a period from 07th of January to 09th of January 2022 (including all days) (based on internal query in FROM clause) . Please add a ordering clause by person name in ascending mode and by pizzeria name in descending mode. Please take a look at the pattern of the final query.
Allowed: Language - ANSI SQL
Denied: SQL Syntax Construction - any types of JOINs