create table field (field_name varchar2(100) primary key, field_addr varchar2(100));

insert into field values ('서울홍은초등학교', '서울서대문구홍제3동286-5');
insert into field values ('서울인초등학교', '서울서대문구홍제3동245-1');
insert into field values ('명지대학교', '서울서대문거북골로34');

수정테이블 
create table field 
(num number primary key, 
field_name varchar2(100) not null, 
field_addr varchar2(200) not null, 
field_morning varchar2(200) not null,
field_afternoon varchar2(200) not null,
field_night varchar2(200) not null,
);

create sequence field_seq;

insert into field values (field_seq.nextval, '홍은초등학교', '서울특별시서대문구홍제동286-5', '10시-12시', '1시-3시', '4시-6시'); 
insert into field values (field_seq.nextval, '홍은벽산아파트', '서울특별시서대문구홍은동455', '10시-12시', '1시-3시', '4시-6시'); 


create table field_order (
num number,
field_name varchar2(100) ,
field_m_tname varchar2(100) ,
field_m_phone varchar2(100) ,
field_a_tname varchar2(100) ,
field_a_phone varchar2(100) ,
field_n_tname varchar2(100) ,
field_n_phone varchar2(100) ,
field_date varchar2(100) 
);

create table team (
tname varchar2(100),
tphone varchar2(100)
);

insert into field_order (num, field_name, field_m_tname, field_m_phone, field_n_tname, field_n_phone, field_date) values (
1, '홍은초등학교', '민구팀', '01071203655' '용원팀', '010123456', '2017-2-10'
);

insert into field_order (num, field_name, field_m_tname, field_m_phone, field_a_tname, field_a_phone, field_n_tname, field_n_phone, field_date) values (
2, '홍은벽산아파트', '한별팀', '01012121212', '동원팀', '01009871234', '구라팀', '01033341234', '2017-2-11');



insert into team (tname, tphone) values ('민구팀', '01071203655');
insert into team (tname, tphone) values ('용원팀', '01012333655');
insert into team (tname, tphone) values ('한별팀', '01071201234');
insert into team (tname, tphone) values ('동원팀', '01089003655');
insert into team (tname, tphone) values ('구라팀', '01034521234');














select * from filed_order where ()
