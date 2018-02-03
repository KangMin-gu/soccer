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

오더테이블 최종
create table field_order (
num number primary key,
field_name varchar2(30),
field_date varchar2(30),
field_m_tname varchar2(50),
field_m_teamNp number,
field_m_phone varchar2(30),
field_m_id varchar2(50),
field_m_etc clob,
field_a_tname varchar2(50),
field_a_teamNp number,
field_a_phone varchar2(30),
field_a_id varchar2(50),
field_a_etc clob,
field_n_tname varchar2(50),
field_n_teamNp number,
field_n_phone varchar2(30),
field_n_id varchar2(50),
field_n_etc clob
)








