Exercise 00: Simple aggregated information
Write a SQL statement that returns person identifiers and corresponding number of visits in any pizzerias and sorting by count of visits in descending mode and sorting in person\_id in ascending mode.

Exercise 01: Let’s see real names
Modify the SQL statement from Exercise 00 to return a person name (not identifier). Show only top-4 persons with maximal visits in any pizzerias and sorted by a person name.

Exercise 02: Restaurants statistics
Write a SQL statement to see 3 favorite restaurants by visits and by orders in one list. Add an action\_type column with values ‘order’ or ‘visit’, depending on the data from the corresponding table.

Exercise 03: Restaurants statistics #2
Write a SQL statement to see restaurants grouped by visits and by orders and joined with each other by using restaurant name. Calculate a sum of orders and visits for corresponding pizzeria. Sort results by total\_count column in descending mode and by name in ascending mode.

Exercise 04: Clause for groups
Write a SQL statement that returns the person name and corresponding number of visits in any pizzerias if the person has visited more than 3 times (> 3).

Exercise 05: Person’s uniqueness
Write a simple SQL query that returns a list of unique person names who made orders in any pizzerias. The result should be sorted by person name.

Exercise 06: Restaurant metrics
Write a SQL statement that returns the amount of orders, average of price, maximum and minimum prices for sold pizza by corresponding pizzeria restaurant. The result should be sorted by pizzeria name. Round your average price to 2 floating numbers.

Exercise 07: Average global rating
Write a SQL statement that returns a common average rating (the output attribute name is global\_rating) for all restaurants. Round your average rating to 4 floating numbers.

Exercise 08: Find pizzeria’s restaurant locations
Write a SQL statement that returns address, pizzeria name and amount of persons’ orders. The result should be sorted by address and then by restaurant name.

Exercise 09: Explicit type transformation
Write a SQL statement that returns aggregated information by person’s address, the result of “Maximal Age - (Minimal Age / Maximal Age)” that is presented as a formula column, next one is average age per address and the result of comparison between formula and average columns (other words, if formula is greater than average then True, otherwise False value). The result should be sorted by address column.