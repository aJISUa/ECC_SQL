-- 4장 복습
-- 데이터를 바꾸는 명령이라 실습용 sqlstudy에서만 실행할 것
-- setup/04_ch04_tables.sql 을 다시 실행하면 처음 상태로 돌아감
USE sqlstudy;

-- 1. (1, 'ABC', 2014-01-25) 행 추가
INSERT INTO sample41 VALUES (1, 'ABC', '2014-01-25');

-- 2. no와 a만 지정해서 추가. 안 쓴 b에는 NULL이 들어감
INSERT INTO sample41 (no, a) VALUES (2, 'XYZ');

-- 3. no에 NULL을 넣으면 NOT NULL 제약 때문에 에러
-- INSERT INTO sample41 (no, a, b) VALUES (NULL, NULL, NULL);

-- 4. d 값 없이 추가하면 DEFAULT인 0이 들어감
INSERT INTO sample411 (no) VALUES (5);
SELECT * FROM sample411;

-- 5. no가 2인 행의 b 바꾸기
UPDATE sample41 SET b = '2014-09-07' WHERE no = 2;

-- 6. 모든 행의 no를 1씩 증가
UPDATE sample41 SET no = no + 1;

-- 7. no가 3인 행의 a와 b를 한 번에 바꾸기
UPDATE sample41 SET a = 'xxx', b = '2014-01-01' WHERE no = 3;

-- 8. 모든 행의 a를 NULL로
UPDATE sample41 SET a = NULL;

-- 9. no가 3인 행 삭제
DELETE FROM sample41 WHERE no = 3;

-- 10. no가 2인 행을 논리삭제하고 살아 있는 행만 조회
UPDATE sample41_logical SET del_flag = 1 WHERE no = 2;
SELECT * FROM sample41_logical WHERE del_flag <> 1;

-- 11. 방금 논리삭제한 행 되살리기
UPDATE sample41_logical SET del_flag = 0 WHERE no = 2;
