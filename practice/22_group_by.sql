-- 22강 그룹화, GROUP BY
USE sqlstudy;

-- 값이 같은 행끼리 묶기
SELECT name FROM sample51 GROUP BY name;  -- NULL, A, B, C
-- 결과만 보면 DISTINCT와 비슷한데 목적은 그룹별로 집계하는 것

SELECT name, COUNT(name), SUM(quantity) FROM sample51 GROUP BY name;
-- NULL 그룹은 COUNT가 0, SUM은 NULL
-- A는 2와 3, B는 1과 10, C는 1과 3

-- 집계 결과에 조건을 걸 때는 WHERE가 아니라 HAVING
SELECT name, COUNT(name) FROM sample51 GROUP BY name HAVING COUNT(name) = 1;  -- B, C
-- WHERE는 그룹화 전에 행을 거르고 HAVING은 그룹화 후에 거름
-- 처리 순서는 WHERE, GROUP BY, HAVING, SELECT, ORDER BY

-- 집계 결과 정렬
SELECT name, SUM(quantity) FROM sample51 GROUP BY name ORDER BY SUM(quantity) DESC;

-- GROUP BY를 쓴 SELECT에는 그룹화한 열과 집계함수만 쓰는 게 안전함
-- 그 외의 열은 값이 하나로 정해지지 않아서 제품에 따라 에러가 남
