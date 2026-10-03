-- 20강 행 개수 구하기, COUNT
USE sqlstudy;

SELECT * FROM sample51;  -- 5번 행은 name, quantity가 NULL

-- 집계함수는 여러 행을 계산해서 값 하나를 돌려줌
-- COUNT, SUM, AVG, MIN, MAX 다섯 가지
SELECT COUNT(*) FROM sample51;  -- 5

-- WHERE로 걸러도 결과는 한 행
SELECT COUNT(*) FROM sample51 WHERE name = 'A';  -- 2
-- WHERE가 SELECT보다 먼저 처리돼서 WHERE에는 집계함수를 쓸 수 없음

-- 인수로 열 이름을 주면 그 열의 NULL은 세지 않음
SELECT COUNT(no), COUNT(name) FROM sample51;  -- 5, 4
-- * 를 인수로 쓸 수 있는 집계함수는 COUNT뿐

-- DISTINCT로 중복 빼기
SELECT DISTINCT name FROM sample51;  -- A, B, C, NULL
SELECT COUNT(ALL name) FROM sample51;  -- 4. ALL이 기본값
SELECT COUNT(DISTINCT name) FROM sample51;  -- 3
