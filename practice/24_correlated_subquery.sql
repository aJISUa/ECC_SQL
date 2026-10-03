-- 24강 상관 서브쿼리
USE sqlstudy;

SELECT * FROM sample551;  -- no는 1~5, a는 전부 NULL
SELECT * FROM sample552;  -- no2는 3, 5

-- EXISTS는 서브쿼리가 행을 돌려주는지만 봄
-- sample552에 같은 번호가 있는 행만 '있음'으로 바꾸기
UPDATE sample551 SET a = '있음'
WHERE EXISTS (SELECT * FROM sample552 WHERE no2 = no);
SELECT * FROM sample551;  -- 3번, 5번만 '있음'

-- 반대로 없는 행은 NOT EXISTS
UPDATE sample551 SET a = '없음'
WHERE NOT EXISTS (SELECT * FROM sample552 WHERE no2 = no);
SELECT * FROM sample551;  -- 1, 2, 4번은 '없음'

-- 서브쿼리 안에서 바깥 쿼리의 열(no)을 참조하는 게 상관 서브쿼리
-- 바깥 쿼리의 행마다 서브쿼리가 한 번씩 실행됨
-- 열 이름이 겹치면 테이블명을 붙여서 구분함
SELECT * FROM sample551
WHERE EXISTS (SELECT * FROM sample552 WHERE sample552.no2 = sample551.no);

-- IN은 집합 안에 값이 있는지 보는 술어
SELECT * FROM sample551 WHERE no IN (3, 5);
SELECT * FROM sample551 WHERE no IN (SELECT no2 FROM sample552);  -- 결과 같음
