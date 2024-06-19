Exercise 00: Audit of incoming inserts

To create an audit feature for incoming INSERT changes, we need to create a table named `person_audit` with the same structure as the `person` table, along with some additional changes. The additional columns are `created`, `type_event`, and `row_id`.

The `created` column will store the timestamp when a new event has been created, with a default value of the current timestamp and is NOT NULL. The `type_event` column will store the type of event (I for insert, D for delete, U for update) with a default value of ‘I’ and is NOT NULL. The `row_id` column will store the copy of `person.id`.

We will create a database trigger function named `fnc_trg_person_insert_audit` that will process all INSERT DML traffic and make a copy of the new row to the `person_audit` table.

To implement the PostgreSQL trigger, we need to create two objects: a database trigger function and a database trigger. We will define a database trigger named `trg_person_insert_audit` with the options “FOR EACH ROW”, “AFTER INSERT”, and calling the `fnc_trg_person_insert_audit` trigger function.

Once the trigger objects are ready, we can make an INSERT statement into the `person` table.

Exercise 01: Audit of incoming updates

To implement the audit feature for incoming UPDATE changes, we need to create a trigger named `trg_person_update_audit` and a corresponding trigger function named `fnc_trg_person_update_audit` to handle all UPDATE traffic on the `person` table. We will save the OLD states of all attribute values.

Exercise 02: Audit of incoming deletes

To implement the audit feature for incoming DELETE changes, we need to create a trigger named `trg_person_delete_audit` and a corresponding trigger function named `fnc_trg_person_delete_audit` to handle all DELETE traffic on the `person` table. We will save the OLD states of all attribute values.

Exercise 03: Generic Audit

To merge all the audit logic into one, we need to create a trigger named `trg_person_audit` and a corresponding trigger function named `fnc_trg_person_audit`. All DML traffic (INSERT, UPDATE, DELETE) will be handled in one functional block with separate IF-ELSE blocks for each event (I, U, D).

We need to drop the three old triggers from the `person` table, drop the three old trigger functions, and make a TRUNCATE (or DELETE) of all rows in the `person_audit` table.

Exercise 04: Database View VS Database Function

We need to create two SQL-functions named `fnc_persons_female` and `fnc_persons_male` to separate data from the `person` table by the `gender` attribute. To check the functions, we can call them like virtual tables.

Exercise 05: Parameterized Database Function

We need to create a common SQL-function named `fnc_persons` with an IN parameter `pgender` with a default value of ‘female’. This function will work like a virtual table but with more flexibility.

Exercise 06: Function like a function-wrapper

We need to create a pl/pgsql function named `fnc_person_visits_and_eats_on_date` based on an SQL statement that finds the names of pizzerias which a person visited and in which he could buy pizza for less than the given sum in rubles on a specific date. The function will have three IN parameters: `pperson`, `pprice`, and `pdate`, with default values of ‘Dmitriy’, 500, and 8th of January 2022, respectively.

Exercise 07: Different view to find a Minimum

We need to create a SQL or pl/pgsql function named `func_minimum` that has an input parameter of an array of numbers and returns the minimum value.

Exercise 08: Fibonacci algorithm is in a function

We need to create a SQL or pl/pgsql function named `fnc_fibonacci` that has an input parameter `pstop` with a type of integer (by default is 10) and returns a table with all Fibonacci numbers less than `pstop`.