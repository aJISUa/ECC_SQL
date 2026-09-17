-- 5강 테이블 구조 참조하기
USE sqlstudy;

-- 테이블 구조 확인
DESC sample21;
-- Field: 열 이름 / Type: 자료형 / Null: NULL 허용 여부 / Key: 키 / Default: 기본값
-- 책에는 int(11)로 나오는데 지금 버전에서는 int로만 나옴

-- 자료형 연습용 테이블
CREATE TABLE sample_types (
  i INTEGER,
  c CHAR(5),
  v VARCHAR(5),
  d DATE,
  t TIME
);

INSERT INTO sample_types VALUES (100, 'ABC', 'ABC', '2013-03-23', '12:30:20');
SELECT * FROM sample_types;
DESC sample_types;

-- CHAR는 고정 길이라 남는 칸을 공백으로 채워서 저장, VARCHAR는 길이만큼만 저장
-- 지정한 길이보다 길게 넣으면 에러남
-- INSERT INTO sample_types (v) VALUES ('ABCDEF');

DROP TABLE sample_types;
