-- 11강 결과 행 제한하기, LIMIT
USE sqlstudy;

SELECT * FROM sample33;  -- no가 1~7

-- LIMIT은 SELECT 맨 뒤에 씀. 표준 SQL은 아니고 MySQL, PostgreSQL에서 됨
SELECT * FROM sample33 LIMIT 3;  -- 1, 2, 3
-- 최대 행수라서 테이블에 행이 더 적으면 있는 만큼만 나옴

-- 처리 순서가 WHERE, ORDER BY, LIMIT이라 정렬한 뒤 상위 몇 건을 뽑을 수 있음
SELECT * FROM sample33 ORDER BY no DESC LIMIT 3;  -- 7, 6, 5

-- OFFSET은 몇 번째 행부터 가져올지. 0부터 셈
SELECT * FROM sample33 LIMIT 3 OFFSET 0;  -- 1, 2, 3
SELECT * FROM sample33 LIMIT 3 OFFSET 3;  -- 4, 5, 6
SELECT * FROM sample33 LIMIT 3 OFFSET 6;  -- 7
-- 게시판 페이지 나누는 게 이 구조
