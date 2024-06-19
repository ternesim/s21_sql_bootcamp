CREATE TABLE EXISTS nodes
(
	point1 CHAR NOT NULL,
	point2 CHAR NOT NULL,
	cost INT NOT NULL
);
INSERT INTO nodes
VALUES ('a', 'b', 10),
	   ('a', 'c', 15),
	   ('a', 'd', 20),
	   ('b', 'a', 10),
	   ('b', 'c', 35),
	   ('b', 'd', 25),
	   ('c', 'a', 15),
	   ('c', 'b', 35),
	   ('c', 'd', 30),
	   ('d', 'a', 20),
	   ('d', 'b', 25),
	   ('d', 'c', 30);

CREATE VIEW v_tsp AS (	
	WITH RECURSIVE tours AS (
		SELECT ('{' || point1) AS path,
				point1,
		   		point2,
		   		cost AS sum_cost
		FROM nodes
		WHERE point1 = 'a'
		UNION
		SELECT (tours.path || ',' || nodes.point1),
		   		nodes.point1,
		   		nodes.point2,
		   		tours.sum_cost + nodes.cost
		FROM nodes JOIN tours ON nodes.point1 = tours.point2
		WHERE path NOT LIKE ('%' || nodes.point1 ||'%')
	)
	SELECT path || ',' || point2 || '}' AS tour,
			point1,
			point2,
			sum_cost AS total_cost
	FROM tours
	WHERE LENGTH(path) = 8 AND point2 = 'a' 
	ORDER BY total_cost, tour
);

SELECT total_cost, tour
FROM v_tsp
WHERE total_cost = (SELECT MIN(total_cost) 
					FROM v_tsp)
ORDER BY total_cost, tour;