-- 21강 COUNT 이외의 집계함수
USE sqlstudy;

-- SUM은 합계. 수치형 열에만 쓸 수 있고 NULL은 빼고 더함
SELECT SUM(quantity) FROM sample51;  -- 16

-- AVG는 평균. NULL인 행은 분모에서도 빠짐
SELECT AVG(quantity) FROM sample51;  -- 4.0000 (16 / 4)
SELECT SUM(quantity) / COUNT(quantity) FROM sample51;  -- 같은 값

-- NULL을 0으로 치고 평균을 내려면 CASE로 바꿔서 계산
SELECT AVG(CASE WHEN quantity IS NULL THEN 0 ELSE quantity END) FROM sample51;
-- 3.2000 (16 / 5)

-- MIN, MAX는 최솟값과 최댓값. 문자열이나 날짜에도 쓸 수 있음
SELECT MIN(quantity), MAX(quantity) FROM sample51;  -- 1, 10
SELECT MIN(name), MAX(name) FROM sample51;  -- A, C
