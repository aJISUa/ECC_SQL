-- 7장(31~32강) 실습용 테이블
USE sqlstudy;

DROP TABLE IF EXISTS sample71_a;
DROP TABLE IF EXISTS sample71_b;
DROP TABLE IF EXISTS 상품;
DROP TABLE IF EXISTS 상품2;
DROP TABLE IF EXISTS 상품3;
DROP TABLE IF EXISTS 재고수;
DROP TABLE IF EXISTS 메이커;

-- 31강 집합 연산용. 양쪽에 2가 겹쳐 있음
CREATE TABLE sample71_a (a INT);
INSERT INTO sample71_a VALUES (1), (2), (3);

CREATE TABLE sample71_b (b INT);
INSERT INTO sample71_b VALUES (2), (10), (11);

-- 32강 결합용
CREATE TABLE 상품 (
  상품코드 CHAR(4) NOT NULL,
  상품명 VARCHAR(30),
  메이커명 VARCHAR(30),
  가격 INT,
  상품분류 VARCHAR(30),
  PRIMARY KEY (상품코드)
);
INSERT INTO 상품 VALUES
('0001', '상품○○', '○○메이커', 100, '식료품'),
('0002', '상품××', '○○메이커', 200, '식료품'),
('0003', '상품△△', '△△메이커', 1980, '생활용품');

CREATE TABLE 재고수 (
  상품코드 CHAR(4),
  입고날짜 DATE,
  재고수 INT
);
INSERT INTO 재고수 VALUES
('0001', '2014-01-03', 200),
('0002', '2014-02-10', 500),
('0003', '2014-02-14', 10);

CREATE TABLE 메이커 (
  메이커코드 CHAR(4) NOT NULL,
  메이커명 VARCHAR(30),
  PRIMARY KEY (메이커코드)
);
INSERT INTO 메이커 VALUES ('M001', '○○메이커'), ('M002', '△△메이커');

-- 상품 테이블의 메이커명을 메이커코드로 바꾼 것
CREATE TABLE 상품2 (
  상품코드 CHAR(4) NOT NULL,
  상품명 VARCHAR(30),
  메이커코드 CHAR(4),
  가격 INT,
  상품분류 VARCHAR(30),
  PRIMARY KEY (상품코드)
);
INSERT INTO 상품2 VALUES
('0001', '상품○○', 'M001', 100, '식료품'),
('0002', '상품××', 'M001', 200, '식료품'),
('0003', '상품△△', 'M002', 1980, '생활용품');

-- 외부결합용. 재고수에 없는 0009가 하나 더 있음
CREATE TABLE 상품3 (
  상품코드 CHAR(4) NOT NULL,
  상품명 VARCHAR(30),
  메이커코드 CHAR(4),
  가격 INT,
  상품분류 VARCHAR(30),
  PRIMARY KEY (상품코드)
);
INSERT INTO 상품3 VALUES
('0001', '상품○○', 'M001', 100, '식료품'),
('0002', '상품××', 'M001', 200, '식료품'),
('0003', '상품△△', 'M002', 1980, '생활용품'),
('0009', '추가상품', 'M001', 300, '식료품');
