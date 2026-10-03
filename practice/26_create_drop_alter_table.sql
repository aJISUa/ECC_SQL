-- 26강 테이블 작성, 삭제, 변경
USE sqlstudy;

DROP TABLE IF EXISTS sample62;

CREATE TABLE sample62 (
  no INTEGER NOT NULL,
  a VARCHAR(30),
  b DATE
);
DESC sample62;

-- 데이터만 지우는 방법 두 가지
-- DELETE는 행 단위로 처리해서 행이 많으면 느리지만 WHERE로 고를 수 있음
-- TRUNCATE는 전체 삭제만 되지만 훨씬 빠름
INSERT INTO sample62 VALUES (1, 'a', '2014-01-01'), (2, 'b', '2014-01-02');
DELETE FROM sample62 WHERE no = 1;
TRUNCATE TABLE sample62;
SELECT * FROM sample62;  -- 비어 있음

-- 열 추가
ALTER TABLE sample62 ADD newcol INTEGER;
DESC sample62;
-- 기존 행이 있었다면 추가된 열은 전부 NULL이 됨
-- 그래서 NOT NULL 열을 추가할 때는 기본값도 같이 줘야 함

-- 열 속성 변경. 이름은 못 바꿈
ALTER TABLE sample62 MODIFY newcol VARCHAR(20);
-- 이름 변경은 CHANGE
ALTER TABLE sample62 CHANGE newcol c VARCHAR(20);
-- 열 삭제
ALTER TABLE sample62 DROP c;
DESC sample62;

-- 자주 쓰는 건 최대길이 늘리기
ALTER TABLE sample62 MODIFY a VARCHAR(50);
-- 줄이는 건 드묾. 기존 데이터보다 짧게 잡으면 에러남

DROP TABLE sample62;
-- DROP은 정말 지울 거냐고 묻지 않으니 조심할 것
