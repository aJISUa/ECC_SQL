-- 29강 인덱스 작성과 삭제
USE sqlstudy;

DROP TABLE IF EXISTS sample62;
CREATE TABLE sample62 (no INTEGER NOT NULL, a VARCHAR(30));
INSERT INTO sample62 VALUES (1, 'a'), (2, 'b'), (3, 'c');

-- 인덱스 만들기
CREATE INDEX isample62 ON sample62(a);

-- 인덱스를 실제로 쓰는지는 EXPLAIN으로 확인. 명령을 실행하지 않고 실행계획만 보여줌
EXPLAIN SELECT * FROM sample62 WHERE a = 'a';
-- possible_keys와 key에 isample62가 나옴

EXPLAIN SELECT * FROM sample62 WHERE no > 1;
-- no에는 인덱스가 없어서 둘 다 NULL

-- 인덱스 삭제. MySQL은 테이블 안의 객체라 테이블 이름을 같이 씀
DROP INDEX isample62 ON sample62;
-- Oracle이나 DB2는 DROP INDEX 인덱스명; 으로 씀

-- 인덱스가 있으면 SELECT는 빨라지지만 INSERT는 조금 느려짐
-- 값의 종류가 적은 열(예, 아니오 같은 열)은 인덱스 효율이 떨어짐

DROP TABLE sample62;
