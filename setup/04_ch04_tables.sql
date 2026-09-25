-- 4장(16~19강) 실습용 테이블
-- 4장은 데이터를 바꾸는 실습이라 이 파일을 다시 실행하면 처음 상태로 돌아감
USE sqlstudy;

DROP TABLE IF EXISTS sample41;
DROP TABLE IF EXISTS sample411;
DROP TABLE IF EXISTS sample41_logical;

-- 16~18강, no에 NOT NULL 제약
CREATE TABLE sample41 (
  no INT NOT NULL,
  a VARCHAR(30),
  b DATE
);

-- 16강 DEFAULT 확인용
CREATE TABLE sample411 (
  no INT NOT NULL,
  d INT DEFAULT 0
);

-- 19강 논리삭제용. del_flag 0이면 살아 있는 행, 1이면 삭제된 걸로 취급
CREATE TABLE sample41_logical (
  no INT NOT NULL,
  a VARCHAR(30),
  del_flag INT DEFAULT 0
);
INSERT INTO sample41_logical (no, a) VALUES (1,'ABC'), (2,'XYZ'), (3,'GHI'), (4,'JKL');
