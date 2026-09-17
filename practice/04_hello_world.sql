-- 4강 Hello World 실행하기
USE sqlstudy;

-- 테이블 전체 조회 (* 는 모든 열)
SELECT * FROM sample21;
-- 3행 나옴. 2번, 3번은 birthday가 NULL

-- 예약어, 테이블 이름은 대소문자 구분 안 해서 셋 다 결과 같음
select * from sample21;
Select * From Sample21;
SELECT * FROM SAMPLE21;
-- 윈도우에서는 됨. 리눅스 MySQL은 테이블 이름 대소문자를 구분할 수도 있다고 함

-- SELECT*FROMsample21; 처럼 띄어쓰기 없이 쓰면 에러
-- 끝에 ; 안 붙이면 명령이 안 끝난 걸로 보고 계속 입력받음
