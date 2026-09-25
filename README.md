# ECC_SQL

ECC SQL 스터디 실습 코드 정리

- 교재: SQL 첫걸음 (아사이 아츠시)
- 환경: MySQL 8

## 진행

- [x] 1장 데이터베이스와 SQL (1~3강)
- [x] 2장 테이블에서 데이터 검색 (4~8강)
- [x] 3장 정렬과 연산 (9~15강)
- [x] 4장 데이터의 추가, 삭제, 갱신 (16~19강)

## 폴더

- `setup` : 실습용 DB, 테이블 만들고 데이터 넣는 파일
- `practice` : 강별 실습 코드
- `exercises` : 장별 연습문제 풀이, 복습

setup 폴더 파일을 00, 01, 02 순서로 실행하고 나서 practice 파일 실행하면 됨.
3장은 03, 4장은 04를 먼저 실행해야 함.
1~3강은 개념 위주라 코드는 4강부터 있음.

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
