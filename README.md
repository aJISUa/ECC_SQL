# ECC_SQL

ECC SQL 스터디 실습 코드 정리

- 교재: SQL 첫걸음 (아사이 아츠시)
- 환경: MySQL 8

## 진행

- [x] 1장 데이터베이스와 SQL (1~3강)
- [x] 2장 테이블에서 데이터 검색 (4~8강)
- [x] 3장 정렬과 연산 (9~15강)
- [x] 4장 데이터의 추가, 삭제, 갱신 (16~19강)
- [x] 5장 집계와 서브쿼리 (20~24강)
- [x] 6장 데이터베이스 객체 작성과 삭제 (25~30강)
- [x] 7장 복수의 테이블 다루기 (31~33강)
- [x] 8장 데이터베이스 설계 (34~36강)

## 폴더

- `setup` : 실습용 DB, 테이블 만들고 데이터 넣는 파일
- `practice` : 강별 실습 코드
- `exercises` : 장별 연습문제 풀이, 복습

setup 폴더 파일을 00, 01, 02 순서로 실행하고 나서 practice 파일 실행하면 됨.
3장은 03, 4장은 04, 5장은 05, 7장은 06, 8장은 07을 먼저 실행해야 함.
31강은 3장 테이블도 써서 03도 먼저 실행해야 함.
1~3강, 25강, 28강, 33~34강은 개념 위주라 실습 파일이 없음.

4장은 데이터를 바꾸는 실습이라 꼬이면 04를 다시 실행해서 처음 상태로 되돌리면 됨.

## 정리

- 1~3강: 데이터베이스, DBMS, SQL 개념. RDBMS는 클라이언트/서버 구조고 접속할 때 사용자 인증 필요
- 4강: `SELECT * FROM 테이블명;` 으로 전체 조회
- 5강: `DESC` 로 테이블 구조 확인. 자료형 INTEGER, CHAR, VARCHAR, DATE, TIME
- 6강: SELECT로 열, WHERE로 행 선택. NULL은 `=` 말고 `IS NULL` 로 검색
- 7강: AND, OR, NOT. AND가 OR보다 먼저 계산돼서 괄호 써야 함
- 8강: LIKE로 패턴 검색. `%` 는 아무 문자열, `_` 는 아무 문자 하나
- 9강: `ORDER BY` 로 정렬. 문자열은 사전식이라 '10'이 '2'보다 앞에 옴
- 10강: 열을 여러 개 쓰면 앞의 열이 같을 때 뒤의 열로 정렬. MySQL은 NULL이 제일 작음
- 11강: `LIMIT`, `OFFSET` 으로 행 수 제한. 표준 SQL은 아님
- 12강: 산술 연산과 `AS` 별명. WHERE에서는 별명을 못 쓰고 ORDER BY에서는 쓸 수 있음
- 13강: `CONCAT`, `SUBSTRING`, `TRIM`, `CHAR_LENGTH`
- 14강: `CURRENT_DATE`, `INTERVAL`, `DATEDIFF`, `DATE_FORMAT`
- 15강: `CASE` 로 값 변환. 단순 CASE로는 NULL을 못 잡고, NULL만 바꿀 땐 `COALESCE`
- 16강: `INSERT` 로 행 추가. NOT NULL 제약과 DEFAULT
- 17강: `DELETE` 는 행 단위. WHERE를 빼면 전부 삭제됨
- 18강: `UPDATE` 는 셀 단위. 식으로도 갱신 가능
- 19강: 물리삭제와 논리삭제. 상황에 따라 골라 씀
- 20강: `COUNT`로 행 수 세기. 열을 지정하면 NULL은 빼고 셈
- 21강: `SUM`, `AVG`, `MIN`, `MAX`. AVG는 NULL인 행을 분모에서도 뺌
- 22강: `GROUP BY`로 그룹별 집계. 집계 결과에 거는 조건은 `HAVING`
- 23강: 서브쿼리. 값 하나만 돌려주는 건 스칼라 서브쿼리
- 24강: `EXISTS`와 상관 서브쿼리. 바깥 쿼리의 열을 서브쿼리에서 참조함
- 25강: 데이터베이스 객체와 스키마, 이름 붙이는 규칙
- 26강: `CREATE`, `DROP`, `TRUNCATE`, `ALTER TABLE`
- 27강: 제약. NOT NULL, UNIQUE, 기본키
- 28강: 인덱스 구조. 풀 테이블 스캔과 이진 탐색, 이진 트리
- 29강: `CREATE INDEX`, `DROP INDEX`, `EXPLAIN`으로 확인
- 30강: 뷰. SELECT 명령을 저장해둔 가상 테이블
- 31강: `UNION`, `UNION ALL`. ORDER BY는 마지막 SELECT에만
- 32강: 교차결합, `INNER JOIN`, `LEFT JOIN`과 `RIGHT JOIN`
- 33강: 관계형 모델. 릴레이션은 테이블, 속성은 열, 튜플은 행
- 34강: 테이블 정의서, 물리명과 논리명, ER다이어그램
- 35강: 정규화. 제1, 제2, 제3정규형
- 36강: 트랜잭션. `START TRANSACTION`, `COMMIT`, `ROLLBACK`
