## pizzeria table (Dictionary Table with available pizzerias)

| Field        | Description                                     |
|--------------|-------------------------------------------------|
| id           | primary key                                     |
| name         | name of pizzeria                                |
| rating       | average rating of pizzeria (from 0 to 5 points) |

## person table (Dictionary Table with persons who loves pizza)

| Field        | Description                                     |
|--------------|-------------------------------------------------|
| id           | primary key                                     |
| name         | name of person                                   |
| age          | age of person                                    |
| gender       | gender of person                                 |
| address      | address of person                                |

## menu table (Dictionary Table with available menu and price for concrete pizza)

| Field        | Description                                     |
|--------------|-------------------------------------------------|
| id           | primary key                                     |
| pizzeria_id  | foreign key to pizzeria                         |
| pizza_name   | name of pizza in pizzeria                       |
| price        | price of concrete pizza                         |

## person_visits table (Operational Table with information about visits of pizzeria)

| Field        | Description                                     |
|--------------|-------------------------------------------------|
| id           | primary key                                     |
| person_id    | foreign key to person                           |
| pizzeria_id  | foreign key to pizzeria                         |
| visit_date   | date (for example 2022-01-01) of person visit   |

## person_order table (Operational Table with information about persons orders)

| Field        | Description                                     |
|--------------|-------------------------------------------------|
| id           | primary key                                     |
| person_id    | foreign key to person                           |
| menu_id      | foreign key to menu                             |
| order_date   | date (for example 2022-01-01) of person order    |