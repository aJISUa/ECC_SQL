-- 36강 트랜잭션
USE sqlstudy;

-- 주문이 들어오면 주문 테이블에 한 번, 주문상품 테이블에 상품 수만큼 INSERT를 해야 함
-- 중간에 에러가 나면 앞에서 들어간 행을 일일이 DELETE해야 해서 번거로움
-- 이럴 때 여러 명령을 한 세트로 묶는 게 트랜잭션

-- mysql 클라이언트는 기본이 자동커밋이라 명령마다 바로 확정됨
-- START TRANSACTION으로 시작해야 자동커밋이 꺼짐

START TRANSACTION;
INSERT INTO 주문 VALUES (4, '2014-03-01', 1);
INSERT INTO 주문상품 VALUES (4, '0003', 1);
INSERT INTO 주문상품 VALUES (4, '0004', 2);
COMMIT;  -- 변경을 적용하고 종료

SELECT * FROM 주문;  -- 4번 주문이 들어가 있음

-- ROLLBACK을 하면 트랜잭션 안에서 한 일이 전부 취소됨
START TRANSACTION;
DELETE FROM 주문상품 WHERE 주문번호 = 4;
DELETE FROM 주문 WHERE 주문번호 = 4;
SELECT * FROM 주문;  -- 이 시점에는 4번이 지워진 것처럼 보임
ROLLBACK;

SELECT * FROM 주문;  -- 4번이 그대로 남아 있음
-- 트랜잭션 안의 명령은 임시 데이터 영역에서 처리되다가
-- COMMIT하면 정식 영역으로 반영되고 ROLLBACK하면 버려짐

-- DELETE는 실행 전에 확인을 묻지 않지만 트랜잭션 안이면 ROLLBACK으로 취소할 수 있음
-- 자동커밋 상태에서 지운 건 되돌릴 수 없으니 주의

-- 트랜잭션 시작 명령은 제품마다 다름
-- MySQL은 START TRANSACTION(BEGIN도 됨), SQL Server와 PostgreSQL은 BEGIN TRANSACTION
-- Oracle과 DB2는 시작 명령이 따로 없음
