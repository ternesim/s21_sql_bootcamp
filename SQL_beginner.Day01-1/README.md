Exercise 00: Let’s make UNION dance
Allowed: Language - ANSI SQL
Description: Write a SQL statement which returns menu’s identifier and pizza names from menu table and person’s identifier and person name from person table in one global list (with column names as presented on a sample below) ordered by object\_id and then by object\_name columns.

Exercise 01: UNION dance with subquery
Allowed: Language - ANSI SQL
Description: Modify a SQL statement from “exercise 00” by removing the object\_id column. Then change ordering by object\_name for part of data from the person table and then from menu table (like presented on a sample below). Please save duplicates!

Exercise 02: Duplicates or not duplicates
Allowed: Language - ANSI SQL
Denied: SQL Syntax Construction - DISTINCT, GROUP BY, HAVING, any type of JOINs
Description: Write a SQL statement which returns unique pizza names from the menu table and orders by pizza\_name column in descending mode. Please pay attention to the Denied section.

Exercise 03: “Hidden” Insights
Allowed: Language - ANSI SQL
Denied: SQL Syntax Construction - any type of JOINs
Description: Write a SQL statement which returns common rows for attributes order\_date, person\_id from person\_order table from one side and visit\_date, person\_id from person\_visits table from the other side (please see a sample below). In other words, let’s find identifiers of persons, who visited and ordered some pizza on the same day. Actually, please add ordering by action\_date in ascending mode and then by person\_id in descending mode.

Exercise 04: Difference? Yep, let's find the difference between multisets.
Allowed: Language - ANSI SQL
Denied: SQL Syntax Construction - any type of JOINs
Description: Write a SQL statement which returns a difference (minus) of person\_id column values with saving duplicates between person\_order table and person\_visits table for order\_date and visit\_date are for 7th of January of 2022.

Exercise 05: Did you hear about Cartesian Product?
Allowed: Language - ANSI SQL
Description: Write a SQL statement which returns all possible combinations between person and pizzeria tables and please set ordering by person identifier and then by pizzeria identifier columns. Please take a look at the result sample below. Please be aware column's names can be different for you.

Exercise 06: Lets see on “Hidden” Insights
Allowed: Language - ANSI SQL
Description: Let's return our mind back to exercise #03 and change our SQL statement to return person names instead of person identifiers and change ordering by action\_date in ascending mode and then by person\_name in descending mode. Please take a look at a data sample below.

Exercise 07: Just make a JOIN
Allowed: Language - ANSI SQL
Description: Write a SQL statement which returns the date of order from the person\_order table and corresponding person name (name and age are formatted as in the data sample below) which made an order from the person table. Add a sort by both columns in ascending mode.

Exercise 08: Migrate JOIN to NATURAL JOIN
Allowed: Language - ANSI SQL
SQL Syntax Construction - NATURAL JOIN
Denied: SQL Syntax Construction - other type of JOINs
Description: Rewrite a SQL statement from exercise #07 by using NATURAL JOIN construction. The result must be the same like for exercise #07.

Exercise 09: IN versus EXISTS
Allowed: Language - ANSI SQL
Description: Write 2 SQL statements which return a list of pizzerias names which have not been visited by persons by using IN for 1st one and EXISTS for the 2nd one.

Exercise 10: Global JOIN
Allowed: Language - ANSI SQL
Description: Write a SQL statement which returns a list of the person names which made an order for pizza in the corresponding pizzeria. The sample re