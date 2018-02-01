CREATE TABLE reservation_form(
num number primary key,
rUser VARCHAR2(20),
rAddr VARCHAR2(100),
rTime VARCHAR2(100),
phone01 NUMBER,
phone02 NUMBER,
addr1 VARCHAR2(100),
addr2 VARCHAR2(100),
addr3 VARCHAR2(100),
userNumber NUMBER,
orgName VARCHAR2(100),
etc CLOB
);

drop table reservation_form;
CREATE SEQUENCE reservation_form_seq;

alter table reservation_form ADD(num number primary key );

alter table reservation_form ADD(rUser VARCHAR2(50) );

alter table reservation_form DROP(rUser);