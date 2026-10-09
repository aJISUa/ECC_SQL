-- 7장 복습
USE sqlstudy;

-- 1. sample71_a와 sample71_b를 합집합으로 (중복 제거)
SELECT * FROM sample71_a UNION SELECT * FROM sample71_b;  -- 1, 2, 3, 10, 11

-- 2. 중복을 남기고 합치기
SELECT * FROM sample71_a UNION ALL SELECT * FROM sample71_b;  -- 6행

-- 3. 합집합 결과를 오름차순으로 정렬
SELECT a AS c FROM sample71_a UNION SELECT b AS c FROM sample71_b ORDER BY c;

-- 4. 상품과 재고수를 교차결합하면 몇 행인지
SELECT COUNT(*) FROM 상품, 재고수;  -- 9

-- 5. 상품명과 재고수를 상품코드로 내부결합해서 조회
SELECT 상품.상품명, 재고수.재고수
FROM 상품 INNER JOIN 재고수 ON 상품.상품코드 = 재고수.상품코드;

-- 6. 상품2와 메이커를 결합해 상품명과 메이커명 조회 (별명 사용)
SELECT S.상품명, M.메이커명
FROM 상품2 S INNER JOIN 메이커 M ON S.메이커코드 = M.메이커코드;

-- 7. 재고수가 없는 상품까지 포함해서 조회
SELECT 상품3.상품명, 재고수.재고수
FROM 상품3 LEFT JOIN 재고수 ON 상품3.상품코드 = 재고수.상품코드;  -- 추가상품은 NULL
