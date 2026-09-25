-- 14강 날짜 연산
USE sqlstudy;

-- 시스템 날짜. 괄호 없이 쓰는 함수
SELECT CURRENT_TIMESTAMP;  -- 날짜와 시각
SELECT CURRENT_DATE;  -- 날짜만
-- FROM을 생략했는데 Oracle에서는 FROM DUAL을 붙여야 함

-- 날짜에 기간을 더하고 빼기
SELECT CURRENT_DATE + INTERVAL 1 DAY AS 내일,
       CURRENT_DATE - INTERVAL 1 DAY AS 어제,
       CURRENT_DATE + INTERVAL 1 MONTH AS 한달뒤;
-- 기간 쓰는 방법은 제품마다 조금씩 다름

-- 날짜끼리 빼서 며칠 차이인지 구하기
SELECT DATEDIFF('2014-02-28', '2014-01-01');  -- 58

-- 날짜 서식 바꾸기
SELECT DATE_FORMAT(CURRENT_DATE, '%Y/%m/%d');

-- 테이블의 날짜 열에도 똑같이 쓸 수 있음
SELECT name, birthday, birthday + INTERVAL 1 YEAR FROM sample21
WHERE birthday IS NOT NULL;
