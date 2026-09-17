-- 6강 검색 조건 지정하기
USE sqlstudy;

-- 원하는 열만 조회
SELECT no, name FROM sample21;
SELECT address, name FROM sample21;  -- 순서 바꿔도 됨
SELECT no, no, no FROM sample21;  -- 같은 열 여러 번 써도 됨

-- WHERE로 행 고르기
SELECT * FROM sample21 WHERE no = 2;  -- 2번
SELECT * FROM sample21 WHERE no <> 2;  -- 1, 3번
SELECT no, name FROM sample21 WHERE no <> 2;
-- 순서는 SELECT, FROM, WHERE. 순서 바꾸면 에러

-- 문자열이랑 날짜는 작은따옴표로 감싸기
SELECT * FROM sample21 WHERE name = '박준용';
SELECT * FROM sample21 WHERE birthday = '1976-10-18';

-- NULL 검색
SELECT * FROM sample21 WHERE birthday = NULL;  -- 아무것도 안 나옴
SELECT * FROM sample21 WHERE birthday IS NULL;  -- 2, 3번
SELECT * FROM sample21 WHERE birthday IS NOT NULL;  -- 1번

-- 비교 연산자 = <> > >= < <=
SELECT * FROM sample21 WHERE no > 1;  -- 2, 3번
SELECT * FROM sample21 WHERE no >= 2;  -- 2, 3번
SELECT * FROM sample21 WHERE no < 2;  -- 1번
SELECT * FROM sample21 WHERE no <= 1;  -- 1번
-- => 나 =< 는 안 됨
