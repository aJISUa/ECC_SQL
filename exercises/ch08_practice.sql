-- 8장 복습
-- setup/07_ch08_tables.sql 을 먼저 실행할 것
USE sqlstudy;

-- 1. 정규화된 테이블을 결합해서 주문 내역 보기
SELECT 주문.주문번호, 고객.성명, 상품.상품명, 주문상품.개수
FROM 주문
INNER JOIN 고객 ON 주문.고객번호 = 고객.고객번호
INNER JOIN 주문상품 ON 주문.주문번호 = 주문상품.주문번호
INNER JOIN 상품 ON 주문상품.상품코드 = 상품.상품코드
ORDER BY 주문.주문번호, 주문상품.상품코드;

-- 2. 주문번호별 상품 개수 합계
SELECT 주문번호, SUM(개수) FROM 주문상품 GROUP BY 주문번호;  -- 11, 5, 4

-- 3. 고객별 주문 건수
SELECT 고객.성명, COUNT(*) FROM 주문
INNER JOIN 고객 ON 주문.고객번호 = 고객.고객번호
GROUP BY 고객.성명;  -- 박준용 2, 김재진 1

-- 4. 새 주문번호 만들기 (가장 큰 번호 + 1)
SELECT MAX(주문번호) + 1 FROM 주문;  -- 4

-- 5. 트랜잭션으로 주문 넣고 커밋하기
START TRANSACTION;
INSERT INTO 주문 VALUES (5, '2014-03-05', 2);
INSERT INTO 주문상품 VALUES (5, '0001', 2);
COMMIT;

-- 6. 트랜잭션으로 지웠다가 되돌리기
START TRANSACTION;
DELETE FROM 주문상품 WHERE 주문번호 = 5;
DELETE FROM 주문 WHERE 주문번호 = 5;
ROLLBACK;
SELECT * FROM 주문 WHERE 주문번호 = 5;  -- 그대로 남아 있음
