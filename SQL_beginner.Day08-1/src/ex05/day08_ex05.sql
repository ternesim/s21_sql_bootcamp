-- Session #1
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- Session #2
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- Session #1
SELECT SUM(rating) FROM pizzeria;
-- Session #2
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
-- Session #2
COMMIT;
-- Session #1
SELECT SUM(rating) FROM pizzeria;
-- Session #1
COMMIT;
-- Session #1
SELECT SUM(rating) FROM pizzeria;
-- Session #2
SELECT SUM(rating) FROM pizzeria;