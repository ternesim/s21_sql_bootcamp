Exercise 00: Discounts, discounts, everyone loves discounts
Create a new relational table called `person_discounts` with the following rules:

* Set `id` attribute as a Primary Key with the same data type as the `id` column in existing tables.
* Set `person_id` and `pizzeria_id` attributes as foreign keys for corresponding tables with the same data type as the `id` columns in corresponding parent tables. Explicitly name foreign key constraints using the pattern `fk_{table_name}_{column_name}`.
* Add a `discount` attribute to store a value of discount in percent using a numeric data type.

Exercise 01: Let’s set personal discounts
Write a DML statement (INSERT INTO ... SELECT ...) that inserts new records into the `person_discounts` table based on the following rules:

* Take an aggregated state by `person_id` and `pizzeria_id` columns.
* Calculate personal discount value using the following pseudo code:
if “amount of orders” = 1 then “discount” = 10.5 else if “amount of orders” = 2 then “discount” = 22 else “discount” = 30
* Generate a primary key for the `person_discounts` table using the SQL construction `ROW_NUMBER() OVER () AS id`.

Exercise 02: Let’s recalculate a history of orders
Write a SQL statement that returns orders with actual price and price with applied discount for each person in the corresponding pizzeria restaurant and sort by person name and pizza name.

Exercise 03: Improvements are in a way
Create a multicolumn unique index called `idx_person_discounts_unique` that prevents duplicates of pair values person and pizzeria identifiers. After creating the index, provide any simple SQL statement that shows proof of index usage using `EXPLAIN ANALYZE`.

Exercise 04: We need more Data Consistency
Add the following constraint rules for existing columns of the `person_discounts` table:

* `person_id` column should not be NULL (use constraint name `ch_nn_person_id`)
* `pizzeria_id` column should not be NULL (use constraint name `ch_nn_pizzeria_id`)
* `discount` column should not be NULL (use constraint name `ch_nn_discount`)
* `discount` column should be 0 percent by default
* `discount` column should be in a range values from 0 to 100 (use constraint name `ch_range_discount`)

Exercise 05: Data Governance Rules
Add comments for the `person_discounts` table and its columns that explain what is a business goal of the table and all included attributes.

Exercise 06: Let’s automate Primary Key generation
Create a Database Sequence with the name `seq_person_discounts` (starting from 1 value) and set a default value for the `id` attribute of the `person_discounts` table to take a value from `seq_person_discounts` each time automatically. Set an actual value for the database sequence based on the formula “amount of rows in `person_discounts` table” + 1 to avoid Primary Key violation constraint errors.

Denied:
SQL Syntax Pattern: Don’t use hard-coded value for amount of rows to set a right value for sequence.