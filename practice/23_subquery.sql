-- 23강 서브쿼리
USE sqlstudy;

SELECT * FROM sample54;  -- a는 100, 90, 20, 80

-- a가 가장 작은 행을 지우고 싶을 때
SELECT MIN(a) FROM sample54;  -- 20
DELETE FROM sample54 WHERE a = 20;  -- 값을 직접 적은 경우

-- 서브쿼리로 한 번에 쓰면 이렇게 되는데
-- MySQL은 지우려는 테이블을 서브쿼리에서 그대로 못 써서 에러남
-- DELETE FROM sample54 WHERE a = (SELECT MIN(a) FROM sample54);
-- 한 번 더 감싸서 임시 테이블로 만들면 실행됨
-- DELETE FROM sample54 WHERE a = (SELECT a FROM (SELECT MIN(a) AS a FROM sample54) AS x);

-- 스칼라 서브쿼리는 1행 1열만 돌려주는 서브쿼리
-- = 처럼 값 하나를 요구하는 자리에는 스칼라 서브쿼리를 써야 함
SELECT (SELECT COUNT(*) FROM sample51) AS sq1,
       (SELECT COUNT(*) FROM sample54) AS sq2;

-- FROM 구에도 쓸 수 있음. 이때는 별명을 꼭 붙여야 함
SELECT * FROM (SELECT * FROM sample54) sq;
SELECT * FROM (SELECT * FROM (SELECT * FROM sample54) sq1) sq2;  -- 중첩도 가능

-- INSERT의 값 자리에 스칼라 서브쿼리 쓰기
INSERT INTO sample541 VALUES (
  (SELECT COUNT(*) FROM sample51),
  (SELECT COUNT(*) FROM sample54)
);
SELECT * FROM sample541;

-- VALUES 대신 SELECT 결과를 그대로 넣기
INSERT INTO sample541 SELECT 1, 2;
SELECT * FROM sample541;
