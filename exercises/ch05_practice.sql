-- 5장 복습
USE sqlstudy;

-- 1. sample51의 전체 행 수와 name이 들어 있는 행 수
SELECT COUNT(*), COUNT(name) FROM sample51;  -- 5, 4

-- 2. name의 종류가 몇 가지인지
SELECT COUNT(DISTINCT name) FROM sample51;  -- 3

-- 3. quantity의 합계, 평균, 최솟값, 최댓값
SELECT SUM(quantity), AVG(quantity), MIN(quantity), MAX(quantity) FROM sample51;

-- 4. name별 개수와 quantity 합계
SELECT name, COUNT(name), SUM(quantity) FROM sample51 GROUP BY name;

-- 5. name별 행이 2개 이상인 그룹만
SELECT name, COUNT(name) FROM sample51 GROUP BY name HAVING COUNT(name) >= 2;  -- A

-- 6. sample54에서 a가 가장 큰 행
SELECT * FROM sample54 WHERE a = (SELECT MAX(a) FROM sample54);  -- 1번, 100

-- 7. sample552에 번호가 있는 sample551 행만 조회
SELECT * FROM sample551 WHERE no IN (SELECT no2 FROM sample552);  -- 3, 5번

-- 8. 같은 것을 EXISTS로
SELECT * FROM sample551 WHERE EXISTS (SELECT * FROM sample552 WHERE no2 = no);
