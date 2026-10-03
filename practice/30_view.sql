-- 30강 뷰 작성과 삭제
USE sqlstudy;

DROP VIEW IF EXISTS sample_view_67;
DROP VIEW IF EXISTS sample_view_672;

-- FROM 구의 서브쿼리에 이름을 붙여 객체로 만든 것이 뷰
SELECT * FROM (SELECT * FROM sample54) sq;  -- 서브쿼리
CREATE VIEW sample_view_67 AS SELECT * FROM sample54;  -- 같은 걸 뷰로
SELECT * FROM sample_view_67;
-- CREATE VIEW의 AS는 생략할 수 없음

-- 열 이름을 따로 지정할 수도 있음. SELECT 구의 열보다 우선함
CREATE VIEW sample_view_672(n, v, v2) AS SELECT no, a, a * 2 FROM sample54;
SELECT * FROM sample_view_672;

-- 저장되는 건 SELECT 명령뿐이라 저장공간은 거의 안 쓰지만
-- 참조할 때마다 SELECT가 실행돼서 원본이 크면 느려짐
-- 실체가 없어서 가상 테이블이라고도 하고, SELECT로만 쓰는 게 좋음

DROP VIEW sample_view_67;
DROP VIEW sample_view_672;

-- 결과를 저장해두는 머티리얼라이즈드 뷰도 있는데 MySQL은 지원하지 않음
