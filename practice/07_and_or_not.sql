-- 7강 조건 조합하기
USE sqlstudy;

SELECT * FROM sample24;

-- AND: 둘 다 만족
SELECT * FROM sample24 WHERE a <> 0 AND b <> 0;  -- 4번

-- OR: 하나라도 만족
SELECT * FROM sample24 WHERE a <> 0 OR b <> 0;  -- 1, 2, 4, 5번

-- no가 1 또는 2인 행
SELECT * FROM sample24 WHERE no = 1 OR no = 2;  -- 1, 2번
-- no = 1 OR 2 로 쓰면 2가 항상 참이라 전체 행이 나옴. 에러는 안 남
SELECT * FROM sample24 WHERE no = 1 OR 2;

-- AND가 OR보다 먼저 계산됨
SELECT * FROM sample24 WHERE a = 1 OR a = 2 AND b = 1 OR b = 2;
-- 1, 4, 5번. a = 1 OR (a = 2 AND b = 1) OR b = 2 로 계산된 것
SELECT * FROM sample24 WHERE (a = 1 OR a = 2) AND (b = 1 OR b = 2);
-- 4번. 원래 원하던 건 이거라서 괄호로 묶어야 함

-- NOT
SELECT * FROM sample24 WHERE NOT (a <> 0 OR b <> 0);  -- 3번
