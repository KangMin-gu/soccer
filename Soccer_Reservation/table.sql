create table users 
(id varchar2(100) primary key, 
name varchar2(100), 
pwd varchar2(100), 
email varchar2(200), 
phone varchar2(200), 
addr varchar2(200), 
findquestion varchar2(200), 
findAnswer varchar2(200), 
regdate date)

CREATE TABLE rev_list (field_name varchar2(50), date1 varchar2(50), date2 varchar2(50), date3 varchar2(50));

insert into rev_list VALUES ('공릉축구장', '10시~12시', '14시~16시', '18시~20시');