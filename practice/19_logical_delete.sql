-- 19강 물리삭제와 논리삭제
-- 명령이 따로 있는 게 아니라 데이터를 어떻게 지울지 정하는 설계 이야기
USE sqlstudy;

SELECT * FROM sample41_logical;

-- 물리삭제는 DELETE로 행을 실제로 지우는 것
-- DELETE FROM sample41_logical WHERE no = 3;

-- 논리삭제는 삭제플래그만 켜두고 조회할 때 빼는 것
UPDATE sample41_logical SET del_flag = 1 WHERE no = 3;
SELECT * FROM sample41_logical;  -- 데이터는 그대로 있음
SELECT * FROM sample41_logical WHERE del_flag <> 1;  -- 1, 2, 4번만 보임

-- 되살리기도 쉬움
UPDATE sample41_logical SET del_flag = 0 WHERE no = 3;
SELECT * FROM sample41_logical WHERE del_flag <> 1;  -- 3번이 돌아옴

-- 물리삭제는 저장공간이 줄지만 되돌릴 수 없고
-- 논리삭제는 복구가 쉽지만 데이터가 계속 쌓여서 검색이 느려짐
-- 탈퇴처럼 개인정보를 지워야 하면 물리삭제, 주문 취소처럼 기록을 남겨야 하면 논리삭제
