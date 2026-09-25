-- 10강 복수의 열을 지정해 정렬하기
USE sqlstudy;

SELECT * FROM sample32;
-- ORDER BY 없이 조회하면 순서가 보장되지 않음

-- a로만 정렬하면 a가 같은 행끼리의 순서는 알 수 없음
SELECT * FROM sample32 ORDER BY a;

-- 콤마로 열을 여러 개 쓰면 앞의 열이 같을 때 뒤의 열로 정렬
SELECT * FROM sample32 ORDER BY a, b;  -- (1,1) (1,2) (1,3) (2,1) (2,2)
SELECT * FROM sample32 ORDER BY b, a;  -- (1,1) (2,1) (1,2) (2,2) (1,3)

-- 열마다 ASC, DESC를 따로 정할 수 있음
SELECT * FROM sample32 ORDER BY a ASC, b DESC;  -- (1,3) (1,2) (1,1) (2,2) (2,1)
-- 뒤쪽 정렬 방법을 생략하면 제품마다 기본값이 다를 수 있어서 다 써주는 게 나음

-- NULL은 대소 비교가 안 돼서 맨 앞이나 맨 뒤로 몰림
-- 표준에 정해진 게 없어서 제품마다 다른데 MySQL은 NULL을 제일 작은 값으로 봄
SELECT * FROM sample37 ORDER BY a ASC;  -- NULL, 1, 2
SELECT * FROM sample37 ORDER BY a DESC;  -- 2, 1, NULL
