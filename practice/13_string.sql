-- 13강 문자열 연산
USE sqlstudy;

-- 문자열 붙이기. MySQL은 CONCAT, Oracle이나 PostgreSQL은 ||, SQL Server는 +
SELECT CONCAT(quantity, unit) FROM sample35;  -- '10개', '24캔', '1장'
-- 숫자도 같이 붙일 수 있고 결과는 문자열이 됨

-- SUBSTRING(문자열, 시작위치, 길이)로 일부만 꺼내기
SELECT SUBSTRING('20140125001', 1, 4) AS 연,
       SUBSTRING('20140125001', 5, 2) AS 월,
       SUBSTRING('20140125001', 7, 2) AS 일;
-- '2014', '01', '25'

-- TRIM은 앞뒤 공백만 지움. 중간 공백은 그대로
SELECT CONCAT('[', TRIM('  ABC  '), ']'), CONCAT('[', TRIM('A B C'), ']');

-- CHAR_LENGTH는 문자 수, OCTET_LENGTH는 바이트 수
SELECT CHAR_LENGTH('A는 반각, 한은 전각'), OCTET_LENGTH('A는 반각, 한은 전각');
-- 한 글자가 몇 바이트인지는 문자세트마다 다름. UTF-8은 한글 3바이트
