-- 15강 CASE 문으로 데이터 변환하기
USE sqlstudy;

SELECT * FROM sample37;  -- a는 1, 2, NULL

-- 검색 CASE. WHEN 뒤에 조건식을 씀
SELECT a, CASE WHEN a IS NULL THEN 0 ELSE a END FROM sample37;  -- 1, 2, 0

-- NULL만 바꾸는 거면 COALESCE가 더 간단함. 인수 중 NULL이 아닌 첫 값을 돌려줌
SELECT a, COALESCE(a, 0) FROM sample37;

-- 코드를 문자열로 바꾸기
SELECT a, CASE WHEN a = 1 THEN '남자'
               WHEN a = 2 THEN '여자'
               ELSE '미지정' END FROM sample37;

-- 단순 CASE. CASE 뒤에 대상을 쓰고 WHEN 뒤에는 값만 씀
SELECT a, CASE a WHEN 1 THEN '남자'
                 WHEN 2 THEN '여자'
                 ELSE '미지정' END FROM sample37;

-- 단순 CASE로는 NULL을 못 잡음. 안에서 = 로 비교해서 a = NULL이 참이 될 수 없음
SELECT a, CASE a WHEN 1 THEN '남자'
                 WHEN 2 THEN '여자'
                 WHEN NULL THEN '데이터 없음'
                 ELSE '미지정' END FROM sample37;
-- NULL인 행은 '데이터 없음'이 아니라 '미지정'으로 나옴

-- NULL을 잡으려면 검색 CASE에 IS NULL을 써야 함
SELECT a, CASE WHEN a = 1 THEN '남자'
               WHEN a = 2 THEN '여자'
               WHEN a IS NULL THEN '데이터 없음'
               ELSE '미지정' END FROM sample37;

-- ELSE를 빼면 ELSE NULL이 됨
SELECT a, CASE WHEN a = 1 THEN '남자' END FROM sample37;  -- 1이 아닌 행은 NULL

-- CASE는 SELECT 말고 다른 구에서도 쓸 수 있음
SELECT * FROM sample37 ORDER BY CASE WHEN a IS NULL THEN 1 ELSE 0 END, a;
-- NULL을 항상 마지막으로 보내는 정렬
