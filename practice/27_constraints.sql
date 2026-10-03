-- 27강 제약
USE sqlstudy;

DROP TABLE IF EXISTS sample631;
DROP TABLE IF EXISTS sample632;
DROP TABLE IF EXISTS sample634;

-- 열 제약. 열 하나에 거는 제약
CREATE TABLE sample631 (
  a INTEGER NOT NULL,
  b INTEGER NOT NULL UNIQUE,
  c VARCHAR(30)
);

-- 테이블 제약. 여러 열을 묶어서 거는 제약, 이름도 붙일 수 있음
CREATE TABLE sample632 (
  no INTEGER NOT NULL,
  sub_no INTEGER NOT NULL,
  name VARCHAR(30),
  CONSTRAINT pkey_sample PRIMARY KEY (no, sub_no)
);
DESC sample632;

-- 제약 추가와 삭제
ALTER TABLE sample631 MODIFY c VARCHAR(30) NOT NULL;  -- 추가
ALTER TABLE sample631 MODIFY c VARCHAR(30);  -- 삭제
ALTER TABLE sample631 ADD CONSTRAINT pkey_sample631 PRIMARY KEY (a);
ALTER TABLE sample631 DROP PRIMARY KEY;
-- 이미 있는 데이터가 제약을 어기면 추가할 때 에러남

-- 기본키는 행 하나를 특정하는 키
-- NOT NULL이어야 하고 값이 중복되면 안 됨. 테이블에 하나만 지정할 수 있음
CREATE TABLE sample634 (
  p INTEGER NOT NULL,
  a VARCHAR(30),
  CONSTRAINT pkey_sample634 PRIMARY KEY (p)
);
INSERT INTO sample634 VALUES (1, '첫째줄'), (2, '둘째줄'), (3, '셋째줄');

-- 같은 p값을 넣으면 에러 (Duplicate entry '2' for key 'PRIMARY')
-- INSERT INTO sample634 VALUES (2, '넷째줄');
-- UPDATE로 중복을 만들어도 마찬가지로 에러
-- UPDATE sample634 SET p = 2 WHERE p = 3;

SELECT * FROM sample634;
