-- 3장(9~15강) 실습용 테이블
USE sqlstudy;

DROP TABLE IF EXISTS sample31;
DROP TABLE IF EXISTS sample311;
DROP TABLE IF EXISTS sample32;
DROP TABLE IF EXISTS sample33;
DROP TABLE IF EXISTS sample34;
DROP TABLE IF EXISTS sample341;
DROP TABLE IF EXISTS sample35;
DROP TABLE IF EXISTS sample37;

-- 9강
CREATE TABLE sample31 (name VARCHAR(10), age INT, address VARCHAR(40));
INSERT INTO sample31 VALUES
('A씨', 36, '대구광역시 중구'),
('B씨', 18, '부산광역시 연제구'),
('C씨', 25, '서울특별시 중구');

-- 9강, a는 문자열이고 b는 숫자. 값은 똑같이 1, 2, 10, 11
CREATE TABLE sample311 (a VARCHAR(10), b INT);
INSERT INTO sample311 VALUES ('1', 1), ('2', 2), ('10', 10), ('11', 11);

-- 10강, 순서를 섞어서 넣음
CREATE TABLE sample32 (a INT, b INT);
INSERT INTO sample32 VALUES (1,1), (2,1), (2,2), (1,3), (1,2);

-- 11강
CREATE TABLE sample33 (no INT);
INSERT INTO sample33 VALUES (1),(2),(3),(4),(5),(6),(7);

-- 12강
CREATE TABLE sample34 (no INT, price INT, quantity INT);
INSERT INTO sample34 VALUES (1, 100, 10), (2, 230, 24), (3, 1980, 1);

-- 12강 ROUND용. 소수점을 저장하려면 DECIMAL(정수부, 소수부)
CREATE TABLE sample341 (amount DECIMAL(8,2));
INSERT INTO sample341 VALUES (5961.60), (2138.40), (1080.00);

-- 13강
CREATE TABLE sample35 (no INT, price INT, quantity INT, unit VARCHAR(10));
INSERT INTO sample35 VALUES (1, 100, 10, '개'), (2, 230, 24, '캔'), (3, 1980, 1, '장');

-- 15강
CREATE TABLE sample37 (a INT);
INSERT INTO sample37 VALUES (1), (2), (NULL);
