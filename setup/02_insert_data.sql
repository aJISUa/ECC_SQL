-- 교재 예제 데이터 넣기
USE sqlstudy;

INSERT INTO sample21 VALUES
(1, '박준용', '1976-10-18', '대구광역시 수성구'),
(2, '김재진', NULL, '대구광역시 동구'),
(3, '홍길동', NULL, '서울특별시 마포구');

INSERT INTO sample24 VALUES
(1, 1, 0, 0),
(2, 0, 1, 0),
(3, 0, 0, 1),
(4, 2, 2, 0),
(5, 0, 2, 2);

INSERT INTO sample25 VALUES
(1, 'SQL은 RDBMS를 조작하는 언어이다.'),
(2, 'LIKE에서는 메타문자 %와 _를 사용할 수 있다.'),
(3, 'LIKE는 SQL에서 사용할 수 있는 술어 중 하나이다.');
