-- 8장(35~36강) 실습용 테이블
-- 35강 정규화 결과대로 만든 주문 처리 테이블들
USE sqlstudy;

DROP TABLE IF EXISTS 주문;
DROP TABLE IF EXISTS 주문상품;
DROP TABLE IF EXISTS 고객;

CREATE TABLE 고객 (
  고객번호 INT NOT NULL,
  성명 VARCHAR(30),
  연락처 VARCHAR(20),
  PRIMARY KEY (고객번호)
);
INSERT INTO 고객 VALUES (1, '박준용', '010-xxxx'), (2, '김재진', '016-xxxx');

CREATE TABLE 주문 (
  주문번호 INT NOT NULL,
  날짜 DATE,
  고객번호 INT,
  PRIMARY KEY (주문번호)
);
INSERT INTO 주문 VALUES
(1, '2014-01-01', 1),
(2, '2014-02-01', 2),
(3, '2014-02-05', 1);

CREATE TABLE 주문상품 (
  주문번호 INT NOT NULL,
  상품코드 CHAR(4) NOT NULL,
  개수 INT,
  PRIMARY KEY (주문번호, 상품코드)
);
INSERT INTO 주문상품 VALUES
(1, '0001', 1),
(1, '0002', 10),
(2, '0001', 2),
(2, '0002', 3),
(3, '0001', 3),
(3, '0003', 1);

-- 상품명은 7장에서 만든 상품 테이블(상품코드, 상품명)로 결합해서 본다
