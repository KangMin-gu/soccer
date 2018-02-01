create table users 
(id varchar2(100) primary key, 
name varchar2(100), 
pwd varchar2(100), 
email varchar2(200), 
phone varchar2(200), 
addr varchar2(200), 
detailaddr varchar2(200),
findquestion varchar2(200), 
findAnswer varchar2(200), 
regdate date)

create table review 
(num NUMBER PRIMARY KEY,
writer VARCHAR2(50),
title VARCHAR2(50), 
content CLOB,
regdate date,
viewCount NUMBER
);

create sequence review_seq;


create table board_review_comment
(num NUMBER NOT NULL, 
writer VARCHAR2(100),
content VARCHAR2(500),
target_id VARCHAR2(100),
ref_group NUMBER,
content_group NUMBER, 
regdate date
);

create sequence board_review_seq;
