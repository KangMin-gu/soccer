--기본 폼 
CREATE TABLE reservation_form(
rUser VARCHAR2(20) PRIMARY KEY,
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

CREATE SEQUENCE reservation_form_seq;