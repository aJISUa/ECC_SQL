-- 18강 데이터 갱신하기, UPDATE
USE sqlstudy;

DELETE FROM sample41;
INSERT INTO sample41 VALUES (1, 'ABC', '2014-01-25'), (2, 'XYZ', NULL);

-- 기본형. DELETE는 행 단위인데 UPDATE는 셀 단위로 값을 바꿈
UPDATE sample41 SET b = '2014-09-07' WHERE no = 2;
SELECT * FROM sample41;
-- SET의 = 는 비교가 아니라 대입
-- WHERE를 빼면 모든 행이 바뀜

-- 값 자리에 열이 들어간 식을 쓸 수 있음
UPDATE sample41 SET no = no + 1;  -- 모든 행의 no에 1씩 더하기
SELECT * FROM sample41;

-- 콤마로 여러 열을 한 번에 갱신
UPDATE sample41 SET a = 'xxx', b = '2014-01-01' WHERE no = 3;
SELECT * FROM sample41;

-- SET을 처리하는 순서는 제품마다 다름
-- MySQL은 적은 순서대로 처리해서 뒤 식에서 앞에서 바뀐 값을 참조함
DELETE FROM sample41;
INSERT INTO sample41 VALUES (1,'ABC','2014-01-25'), (2,'XYZ','2014-09-07');
UPDATE sample41 SET no = no + 1, a = no;
SELECT no, a FROM sample41;  -- MySQL은 (2,2) (3,3), Oracle은 (2,1) (3,2)

DELETE FROM sample41;
INSERT INTO sample41 VALUES (1,'ABC','2014-01-25'), (2,'XYZ','2014-09-07');
UPDATE sample41 SET a = no, no = no + 1;
SELECT no, a FROM sample41;  -- 이 순서로 쓰면 둘 다 (2,1) (3,2)

-- NULL로 되돌리기
UPDATE sample41 SET a = NULL;
SELECT * FROM sample41;
-- UPDATE sample41 SET no = NULL;
-- no에는 NOT NULL 제약이 있어서 에러. 제약은 UPDATE에도 적용됨
