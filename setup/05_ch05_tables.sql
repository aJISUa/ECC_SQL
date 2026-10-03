-- 5장(20~24강) 실습용 테이블
USE sqlstudy;

DROP TABLE IF EXISTS sample51;
DROP TABLE IF EXISTS sample54;
DROP TABLE IF EXISTS sample541;
DROP TABLE IF EXISTS sample551;
DROP TABLE IF EXISTS sample552;

-- 20~22강, name과 quantity에 NULL이 하나씩 있음
CREATE TABLE sample51 (no INT, name VARCHAR(10), quantity INT);
INSERT INTO sample51 VALUES
(1, 'A', 1),
(2, 'A', 2),
(3, 'B', 10),
(4, 'C', 3),
(5, NULL, NULL);

-- 23강
CREATE TABLE sample54 (no INT, a INT);
INSERT INTO sample54 VALUES (1, 100), (2, 90), (3, 20), (4, 80);

-- 23강 INSERT 서브쿼리용. 비어 있는 상태로 시작
CREATE TABLE sample541 (a INT, b INT);

-- 24강 상관 서브쿼리용
CREATE TABLE sample551 (no INT, a VARCHAR(30));
INSERT INTO sample551 VALUES (1, NULL), (2, NULL), (3, NULL), (4, NULL), (5, NULL);

CREATE TABLE sample552 (no2 INT);
INSERT INTO sample552 VALUES (3), (5);
