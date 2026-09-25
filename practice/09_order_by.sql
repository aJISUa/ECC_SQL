-- 9강 정렬, ORDER BY
USE sqlstudy;

-- ORDER BY는 WHERE 뒤에 씀. WHERE가 없으면 FROM 뒤
SELECT * FROM sample31 ORDER BY age;
-- B씨(18), C씨(25), A씨(36). 안 적으면 오름차순

SELECT * FROM sample31 ORDER BY address;
-- 대구, 부산, 서울 순. 문자열은 사전식으로 정렬됨

-- 내림차순은 DESC, 오름차순은 ASC
SELECT * FROM sample31 ORDER BY age DESC;  -- 36, 25, 18
SELECT * FROM sample31 ORDER BY age ASC;  -- 18, 25, 36

-- 문자열과 숫자는 대소 비교하는 방법이 다름
SELECT * FROM sample311 ORDER BY a;  -- '1', '10', '11', '2'
SELECT * FROM sample311 ORDER BY b;  -- 1, 2, 10, 11
-- a는 VARCHAR라 사전식으로 비교해서 10, 11이 2보다 앞에 옴

-- ORDER BY는 결과 순서만 바꾸고 테이블 자체는 안 바뀜
SELECT * FROM sample311 ORDER BY a DESC;
SELECT * FROM sample311;  -- 원래 순서 그대로
