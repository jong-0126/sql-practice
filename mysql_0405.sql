SELECT * FROM topic;


SELECT title, id, description
  FROM topic
 WHERE description
  LIKE '%MySQL%';
  

SELECT *
  FROM topic
ORDER BY title DESC;


SELECT *
  FROM topic
 LIMIT 2;
 

SELECT * FROM topic;

UPDATE topic SET description = 'MySQL is' WHERE id = 2;

DELETE FROM topic WHERE id = 4;


CREATE TABLE content (
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    body VARCHAR(255) NOT NULL,
    create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


SELECT * FROM content;

ALTER TABLE content ADD userId INT;


CREATE TABLE MEMBER_PROFILE(
	MEMBER_ID VARCHAR(100) NOT NULL,
    MEMBER_NAME VARCHAR(50) NOT NULL,
    TLNO VARCHAR(50) NULL,
    GENDER VARCHAR(1) NULL,
    DATE_OF_BIRTH DATE NULL
    );
    
SELECT * FROM MEMBER_PROFILE;



INSERT INTO MEMBER_PROFILE(MEMBER_ID, MEMBER_NAME, TLNO, GENDER, DATE_OF_BIRTH) VALUES('jiho92@naver.com', '이지호', '01076432111','W', '1992-02-12');
INSERT INTO MEMBER_PROFILE(MEMBER_ID, MEMBER_NAME, TLNO, GENDER, DATE_OF_BIRTH) VALUES('jiyoon22@hotmail.com', '김지윤', '01032324117','W', '1992-02-22');
INSERT INTO MEMBER_PROFILE(MEMBER_ID, MEMBER_NAME, TLNO, GENDER, DATE_OF_BIRTH) VALUES('jihoon93@hanmail.net', '김지훈', '01023258688','M', '1993-02-23');
INSERT INTO MEMBER_PROFILE(MEMBER_ID, MEMBER_NAME, TLNO, GENDER, DATE_OF_BIRTH) VALUES('seoyeons@naver.com', '박서연', '01076482209','W', '1993-03-16');
INSERT INTO MEMBER_PROFILE(MEMBER_ID, MEMBER_NAME, TLNO, GENDER, DATE_OF_BIRTH) VALUES('yoonsy94@gmail.com', '윤서연', NULL,'W', '1994-03-19');


SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, "%Y-%m-%d")
  FROM MEMBER_PROFILE
 WHERE GENDER = 'W' AND DATE_FORMAT(DATE_OF_BIRTH, "%m") ='03' AND TLNO IS NOT NULL 
ORDER BY MEMBER_ID ASC;

CREATE TABLE member(
	member_id VARCHAR(8) PRIMARY KEY NOT NULL,
    member_name VARCHAR(5) NOT NULL,
    member_addr VARCHAR(20) NULL
);
SELECT * FROM member;

INSERT INTO member(member_id, member_name, member_addr) VALUES('tess','나훈아', '경기 부천시 중동');
INSERT INTO member(member_id, member_name, member_addr) VALUES('hero','임영웅', '서울 은평구 증산동');
INSERT INTO member(member_id, member_name, member_addr) VALUES('iyou','아이유', '인천 남구 주안동');
INSERT INTO member(member_id, member_name, member_addr) VALUES('jyp','박진영', '경기 고양시 장항동');
INSERT INTO member(member_id, member_name, member_addr) VALUES('carry','머라이어', '미국 텍사스 사막');

UPDATE member SET member_addr = '영국 런던 먹자골목' WHERE member_id = 'carry';

DELETE FROM member WHERE member_id = 'carry';





 