--DB
--MEMBER
DROP TABLE MEMBER;
DROP SEQUENCE MEMBER_SEQ;

CREATE SEQUENCE MEMBER_SEQ;

CREATE TABLE MEMBER(
MEMBER_NO NUMBER NOT NULL,
MEMBER_ID VARCHAR2(500) NOT NULL,
MEMBER_PW VARCHAR2(500) NOT NULL,
MEMBER_NAME VARCHAR2(1000),
MEMBER_EMAIL VARCHAR2(100),
MEMBER_PHONE VARCHAR2(100),
MEMBER_ENABLED VARCHAR2(2) NOT NULL,
MEMBER_ROLE VARCHAR2(20) NOT NULL,

CONSTRAINT MEMBER_PK PRIMARY KEY(MEMBER_NO),
CONSTRAINT MEMBER_UQ UNIQUE(MEMBER_ID, MEMBER_EMAIL, MEMBER_PHONE),
CONSTRAINT MEMBER_ENABLED_CHK CHECK(MEMBER_ENABLED IN ('Y','N')),
CONSTRAINT MEMBER_ROLE_CHK CHECK(MEMBER_ROLE IN ('ADMIN','USER'))
);

SELECT * FROM MEMBER;

INSERT INTO MEMBER VALUES(
MEMBER_SEQ.NEXTVAL,'id','pw','name','email@naver.com','010-000-0000','Y','ADMIN'
);

INSERT INTO MEMBER VALUES(
MEMBER_SEQ.NEXTVAL,'id1','pw1','name1','email1@naver.com','010-000-0001','Y','ADMIN'
);

INSERT INTO MEMBER VALUES(
MEMBER_SEQ.NEXTVAL,'id2','pw2','name2','email2@naver.com','010-000-0002','Y','USER'
);


