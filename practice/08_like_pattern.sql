-- 8강 패턴 매칭에 의한 검색
USE sqlstudy;

SELECT * FROM sample25;

-- % : 아무 문자열 (빈 문자열도 포함)
-- _ : 아무 문자 하나

-- SQL로 시작
SELECT * FROM sample25 WHERE text LIKE 'SQL%';  -- 1번

-- SQL 포함
SELECT * FROM sample25 WHERE text LIKE '%SQL%';  -- 1, 3번
-- 1번은 SQL로 시작하는데도 나옴. %가 빈 문자열에도 매치돼서

-- '하나이다.'로 끝남
SELECT * FROM sample25 WHERE text LIKE '%하나이다.';  -- 3번

-- 데이터에 들어 있는 %, _ 를 찾으려면 앞에 \ 붙이기
SELECT * FROM sample25 WHERE text LIKE '%\%%';  -- 2번
SELECT * FROM sample25 WHERE text LIKE '%\_%';  -- 2번
-- \ 없이 쓰면 _ 가 아무 문자 하나로 인식돼서 전부 나옴
SELECT * FROM sample25 WHERE text LIKE '%_%';

-- ESCAPE로 이스케이프 문자 직접 정하는 방법도 있음
SELECT * FROM sample25 WHERE text LIKE '%#%%' ESCAPE '#';  -- 2번

-- 문자열 안에 ' 넣을 때는 '' 로 두 번 쓰기
SELECT 'It''s';
