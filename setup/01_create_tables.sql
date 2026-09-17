-- 실습용 테이블 만들기
USE sqlstudy;

DROP TABLE IF EXISTS sample21;
DROP TABLE IF EXISTS sample24;
DROP TABLE IF EXISTS sample25;

-- 4~6강
CREATE TABLE sample21 (
  no INT,
  name VARCHAR(20),
  birthday DATE,
  address VARCHAR(40)
);

-- 7강
CREATE TABLE sample24 (
  no INT,
  a INT,
  b INT,
  c INT
);

-- 8강
CREATE TABLE sample25 (
  no INT,
  text VARCHAR(100)
);
