# ECC_SQL

ECC SQL 스터디 실습 코드 정리

- 교재: SQL 첫걸음 (아사이 아츠시)
- 환경: MySQL 8

## 진행

- [x] 1장 데이터베이스와 SQL (1~3강)
- [x] 2장 테이블에서 데이터 검색 (4~8강)

## 폴더

- `setup` : 실습용 DB, 테이블 만들고 데이터 넣는 파일
- `practice` : 강별 실습 코드
- `exercises` : 장별 연습문제 풀이, 복습

setup 폴더 파일을 00, 01, 02 순서로 실행하고 나서 practice 파일 실행하면 됨.
1~3강은 개념 위주라 코드는 4강부터 있음.

## 정리

- 1~3강: 데이터베이스, DBMS, SQL 개념. RDBMS는 클라이언트/서버 구조고 접속할 때 사용자 인증 필요
- 4강: `SELECT * FROM 테이블명;` 으로 전체 조회
- 5강: `DESC` 로 테이블 구조 확인. 자료형 INTEGER, CHAR, VARCHAR, DATE, TIME
- 6강: SELECT로 열, WHERE로 행 선택. NULL은 `=` 말고 `IS NULL` 로 검색
- 7강: AND, OR, NOT. AND가 OR보다 먼저 계산돼서 괄호 써야 함
- 8강: LIKE로 패턴 검색. `%` 는 아무 문자열, `_` 는 아무 문자 하나
