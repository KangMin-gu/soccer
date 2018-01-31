create table field (field_name varchar2(100) primary key, field_addr varchar2(100));

insert into field values ('서울홍은초등학교', '서울서대문구홍제3동286-5');
insert into field values ('서울인초등학교', '서울서대문구홍제3동245-1');
insert into field values ('명지대학교', '서울서대문거북골로34');

수정테이블 
create table field 
(num number primary key, 
field_name varchar2(100), 
field_addr varchar2(200), 
field_morning varchar2(200),
field_afternoon varchar2(200),
field_night varchar2(200)
);

create sequence field_seq;

insert into field values (field_seq.nextval, '홍은초등학교', '서울특별시서대문구홍제동286-5', '10시-12시', '1시-3시', '4시-6시'); 
insert into field values (field_seq.nextval, '홍은벽산아파트', '서울특별시서대문구홍은동455', '10시-12시', '1시-3시', '4시-6시'); 