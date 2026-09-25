-- 3장 복습
USE sqlstudy;

-- 1. 나이가 많은 사람부터 출력
SELECT * FROM sample31 ORDER BY age DESC;

-- 2. a는 오름차순, b는 내림차순으로 정렬
SELECT * FROM sample32 ORDER BY a ASC, b DESC;

-- 3. 큰 번호부터 정렬해서 3건만
SELECT * FROM sample33 ORDER BY no DESC LIMIT 3;  -- 7, 6, 5

-- 4. 4~6번째 행만 (2페이지)
SELECT * FROM sample33 LIMIT 3 OFFSET 3;  -- 4, 5, 6

-- 5. price * quantity를 amount라는 이름으로 같이 출력
SELECT *, price * quantity AS amount FROM sample34;

-- 6. 위 금액이 2000 이상인 행만
SELECT *, price * quantity AS amount FROM sample34
WHERE price * quantity >= 2000;  -- 2번. WHERE에는 별명을 못 씀

-- 7. amount를 10단위에서 반올림
SELECT amount, ROUND(amount, -2) FROM sample341;

-- 8. 수량과 단위를 붙여서 '10개' 형태로
SELECT CONCAT(quantity, unit) FROM sample35;

-- 9. 오늘부터 7일 뒤
SELECT CURRENT_DATE + INTERVAL 7 DAY;

-- 10. a가 1이면 남자, 2면 여자, NULL이면 데이터 없음, 나머지는 미지정
SELECT a, CASE WHEN a = 1 THEN '남자'
               WHEN a = 2 THEN '여자'
               WHEN a IS NULL THEN '데이터 없음'
               ELSE '미지정' END FROM sample37;
