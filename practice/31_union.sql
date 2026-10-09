-- 31강 집합 연산
USE sqlstudy;

SELECT * FROM sample71_a;  -- 1, 2, 3
SELECT * FROM sample71_b;  -- 2, 10, 11

-- UNION은 합집합. 겹치는 2는 하나만 남음
SELECT * FROM sample71_a
UNION
SELECT * FROM sample71_b;  -- 1, 2, 3, 10, 11
-- 두 명령을 하나로 합치는 거라 세미콜론은 맨 끝에 한 번만 붙임
-- 열 개수와 자료형이 맞아야 함. 열 이름은 달라도 됨

-- 세 개 이상도 이어 붙일 수 있음
SELECT a FROM sample71_a
UNION
SELECT b FROM sample71_b
UNION
SELECT age FROM sample31;

-- ORDER BY는 합집합 전체를 정렬하는 거라 마지막 SELECT에만 씀
-- 열 이름이 다르면 별명을 똑같이 붙여서 맞춤
SELECT a AS c FROM sample71_a
UNION
SELECT b AS c FROM sample71_b ORDER BY c;  -- 1, 2, 3, 10, 11

-- UNION ALL은 중복을 남김
SELECT * FROM sample71_a
UNION ALL
SELECT * FROM sample71_b;  -- 1, 2, 3, 2, 10, 11
-- UNION은 중복을 없애려고 정렬을 하기 때문에 UNION ALL이 더 빠름

-- 교집합은 INTERSECT, 차집합은 EXCEPT
-- 교재에서는 MySQL이 지원하지 않는다고 했는데 8.0.31부터 쓸 수 있음
SELECT * FROM sample71_a
INTERSECT
SELECT * FROM sample71_b;  -- 2

SELECT * FROM sample71_a
EXCEPT
SELECT * FROM sample71_b;  -- 1, 3
