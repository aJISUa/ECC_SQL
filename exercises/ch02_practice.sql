-- 2장 복습
USE sqlstudy;

-- 1. name, address 열만 조회
SELECT name, address FROM sample21;

-- 2. 주소가 '대구광역시 동구'인 사람 이름
SELECT name FROM sample21 WHERE address = '대구광역시 동구';

-- 3. 생일이 입력 안 된 사람
SELECT * FROM sample21 WHERE birthday IS NULL;

-- 4. a가 0이 아니고 c가 0인 행
SELECT * FROM sample24 WHERE a <> 0 AND c = 0;  -- 1, 4번

-- 5. b가 1 또는 2인 행
SELECT * FROM sample24 WHERE b = 1 OR b = 2;  -- 2, 4, 5번

-- 6. 'LIKE'로 시작하는 행
SELECT * FROM sample25 WHERE text LIKE 'LIKE%';  -- 2, 3번

-- 7. _ 문자가 들어 있는 행
SELECT * FROM sample25 WHERE text LIKE '%\_%';  -- 2번
