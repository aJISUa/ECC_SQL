-- 17강 삭제하기, DELETE
-- 16강까지 실습해서 sample41에 3개 행이 있는 상태에서 시작
USE sqlstudy;

SELECT * FROM sample41;

-- 기본형
DELETE FROM sample41 WHERE no = 3;
SELECT * FROM sample41;  -- 1, 2번만 남음

-- WHERE를 빼면 모든 행이 지워짐
-- DELETE FROM sample41;
-- SELECT도 WHERE를 빼면 전체가 대상인 건 같지만 DELETE는 되돌릴 수 없음

-- 삭제는 행 단위라 열만 지우는 건 안 됨
-- DELETE no FROM sample41;
-- 특정 열만 비우고 싶으면 UPDATE로 NULL을 넣으면 됨

-- 지우기 전에 같은 조건으로 SELECT 해보고 지우는 게 안전함
SELECT * FROM sample41 WHERE no = 1 OR no = 2;
DELETE FROM sample41 WHERE no = 1 OR no = 2;
SELECT * FROM sample41;  -- 비어 있음

-- 표준 SQL의 DELETE에는 ORDER BY가 없는데 MySQL은 ORDER BY와 LIMIT을 지원함
INSERT INTO sample41 VALUES (1,'ABC','2014-01-25'), (2,'XYZ',NULL), (3,NULL,NULL);
DELETE FROM sample41 ORDER BY no DESC LIMIT 1;  -- no가 제일 큰 행 하나 삭제
SELECT * FROM sample41;
