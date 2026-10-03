-- 6장 복습
USE sqlstudy;

DROP TABLE IF EXISTS sample_ex6;

-- 1. no(정수, NOT NULL), name(문자열 30), created(날짜) 테이블 만들기
CREATE TABLE sample_ex6 (
  no INTEGER NOT NULL,
  name VARCHAR(30),
  created DATE
);

-- 2. no를 기본키로 지정하기
ALTER TABLE sample_ex6 ADD CONSTRAINT pkey_sample_ex6 PRIMARY KEY (no);

-- 3. memo 열 추가하기
ALTER TABLE sample_ex6 ADD memo VARCHAR(100);

-- 4. name의 최대길이를 50으로 늘리기
ALTER TABLE sample_ex6 MODIFY name VARCHAR(50);

-- 5. 데이터 넣고 기본키 중복이 막히는지 확인
INSERT INTO sample_ex6 (no, name) VALUES (1, '가'), (2, '나');
-- INSERT INTO sample_ex6 (no, name) VALUES (2, '다');  -- Duplicate entry 에러

-- 6. name에 인덱스 걸고 쓰이는지 확인
CREATE INDEX isample_ex6 ON sample_ex6(name);
EXPLAIN SELECT * FROM sample_ex6 WHERE name = '가';

-- 7. no와 name만 보여주는 뷰 만들기
CREATE VIEW view_ex6 AS SELECT no, name FROM sample_ex6;
SELECT * FROM view_ex6;

-- 정리
DROP VIEW view_ex6;
DROP TABLE sample_ex6;
