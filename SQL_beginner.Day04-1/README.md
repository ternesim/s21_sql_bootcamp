Exercise 00: Let’s create separated views for persons
Allowed: Language - ANSI SQL
Description: Create 2 Database Views (with similar attributes like the original table) based on simple filtering of gender of persons. Set the corresponding names for the database views: v\_persons\_female and v\_persons\_male.

Exercise 01: From parts to common view
Allowed: Language - ANSI SQL
Description: Use 2 Database Views from Exercise #00 and write SQL to get female and male person names in one list. Please set the order by person name. The sample of data is presented below.

Exercise 02: “Store” generated dates in one place
Allowed: Language - ANSI SQL, SQL Syntax Construction - generate\_series(...)
Description: Create a Database View (with name v\_generated\_dates) which should be “store” generated dates from 1st to 31th of January 2022 in DATE type. Don’t forget about order for the generated\_date column.

Exercise 03: Find missing visit days with Database View
Allowed: Language - ANSI SQL
Description: Write a SQL statement which returns missing days for persons’ visits in January of 2022. Use v\_generated\_dates view for that task and sort the result by missing\_date column. The sample of data is presented below.

Exercise 04: Let’s find something from Set Theory
Allowed: Language - ANSI SQL
Description: Write a SQL statement which satisfies a formula (R - S)∪(S - R) . Where R is the person\_visits table with filter by 2nd of January 2022, S is also person\_visits table but with a different filter by 6th of January 2022. Please make your calculations with sets under the person\_id column and this column will be alone in a result. The result please sort by person\_id column and your final SQL please present in v\_symmetric\_union (\*) database view.

Exercise 05: Let’s calculate a discount price for each person
Allowed: Language - ANSI SQL
Description: Create a Database View v\_price\_with\_discount that returns a person's orders with person names, pizza names, real price and calculated column discount\_price (with applied 10% discount and satisfies formula price - price\*0.1). The result please sort by person name and pizza name and make a round for discount\_price column to integer type. Please take a look at a sample result below.

Exercise 06: Materialization from virtualization
Allowed: Language - ANSI SQL
Description: Create a Materialized View mv\_dmitriy\_visits\_and\_eats (with data included) based on SQL statement that finds the name of pizzeria Dmitriy visited on January 8, 2022 and could eat pizzas for less than 800 rubles (this SQL you can find out at Day #02 Exercise #07).

Exercise 07: Refresh our state
Allowed: Language - ANSI SQL
Denied: SQL Syntax Pattern - Don’t use direct numbers for identifiers of Primary Key, person and pizzeria
Description: Let's refresh data in our Materialized View mv\_dmitriy\_visits\_and\_eats from exercise #06. Before this action, please generate one more Dmitriy visit that satisfies the SQL clause of Materialized View except pizzeria that we can see in a result from exercise #06. After adding a new visit please refresh a state of data for mv\_dmitriy\_visits\_and\_eats.

Exercise 08: Just clear our database
Allowed: Language - ANSI SQL
Description: After all our exercises were born a few Virtual Tables and one Materialized View. Let’s drop them! you know what to do.