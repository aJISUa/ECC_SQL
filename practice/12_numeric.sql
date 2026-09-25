-- 12강 수치 연산
USE sqlstudy;

-- 산술 연산자 + - * / %
SELECT 1 + 2, 1 - 2, 1 * 2, 1 / 2, 1 % 2;  -- 3, -1, 2, 0.5, 1
SELECT 10 % 3, MOD(10, 3);  -- 둘 다 1. % 연산자와 MOD 함수는 같은 것
SELECT 1 - 2 + 3, 1 + 2 * 3;  -- 2, 7. * / % 가 + - 보다 먼저

-- SELECT 구에 식을 쓸 수 있음
SELECT *, price * quantity FROM sample34;  -- 1000, 5520, 1980

-- AS로 식에 이름 붙이기. AS는 생략 가능
SELECT *, price * quantity AS amount FROM sample34;
SELECT price * quantity amount FROM sample34;
SELECT price * quantity AS "금액" FROM sample34;
-- 문자열 상수는 작은따옴표, 열이나 별명 같은 이름은 큰따옴표

-- 처리 순서가 WHERE, SELECT, ORDER BY 라서
-- WHERE에서는 별명을 못 쓰고 식을 그대로 다시 써야 함
SELECT *, price * quantity AS amount FROM sample34
WHERE price * quantity >= 2000;  -- 2번 행
-- WHERE amount >= 2000 이라고 쓰면 에러

-- ORDER BY는 SELECT 다음이라 별명을 쓸 수 있음
SELECT *, price * quantity AS amount FROM sample34 ORDER BY amount DESC;  -- 2, 3, 1

-- NULL이 들어간 연산은 결과가 전부 NULL. 0으로 치지 않음
SELECT NULL + 1, 1 + NULL, 1 + 2 * NULL, 1 / NULL;
-- 1 / NULL 도 0으로 나눈 게 아니라서 에러가 안 남

-- ROUND(값)은 소수점 첫째 자리에서 반올림, 두 번째 인수로 자릿수 지정
SELECT amount, ROUND(amount) FROM sample341;  -- 5962, 2138, 1080
SELECT amount, ROUND(amount, 1) FROM sample341;  -- 5961.6, 2138.4, 1080.0
SELECT amount, ROUND(amount, -2) FROM sample341;  -- 6000, 2100, 1100
-- 버리는 건 TRUNCATE
