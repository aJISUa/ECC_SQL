-- 16강 행 추가하기, INSERT
-- setup/04_ch04_tables.sql 을 먼저 실행할 것
USE sqlstudy;

SELECT * FROM sample41;  -- 처음엔 비어 있음
DESC sample41;  -- no는 Null이 NO. NOT NULL 제약이 걸려 있음
-- INSERT, UPDATE, DELETE는 결과 표가 안 나옴. SELECT만 결과를 돌려줌

-- 기본형. 값은 열 자료형에 맞게 쓰고 문자열과 날짜는 작은따옴표
INSERT INTO sample41 VALUES (1, 'ABC', '2014-01-25');
SELECT * FROM sample41;

-- 열을 지정하면 순서를 바꿔 써도 되고, 안 쓴 열에는 기본값이 들어감
INSERT INTO sample41 (a, no) VALUES ('XYZ', 2);
SELECT * FROM sample41;  -- 2번 행의 b는 NULL

-- no에 NULL을 넣으면 에러남 (Column 'no' cannot be null)
-- INSERT INTO sample41 (no, a, b) VALUES (NULL, NULL, NULL);
INSERT INTO sample41 (no, a, b) VALUES (3, NULL, NULL);  -- no만 있으면 됨
-- 이렇게 저장할 데이터를 제한하는 설정을 제약이라고 함

-- DEFAULT는 값을 안 넣었을 때 들어가는 초깃값
DESC sample411;  -- d의 Default가 0
INSERT INTO sample411 (no, d) VALUES (1, 1);  -- 직접 지정
INSERT INTO sample411 (no, d) VALUES (2, DEFAULT);  -- DEFAULT라고 써서 지정
INSERT INTO sample411 (no) VALUES (3);  -- 열 자체를 생략
SELECT * FROM sample411;  -- d는 1, 0, 0
