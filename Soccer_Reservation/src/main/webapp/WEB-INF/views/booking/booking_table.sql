



--시퀀스
CREATE SEQUENCE order_data_seq;

CREATE SEQUENCE order_etc_seq;



--테이블01(운동장,시간,날짜  DB)
CREATE TABLE order_data(
num NUMBER PRIMARY KEY, -- 리스트번호
playgroundname VARCHAR2(200),-- 운동장 이름
field_m_tname VARCHAR2(200), -- 오전 타임
field_a_tname VARCHAR2(200), -- 점심 타임
field_n_tname VARCHAR2(200), -- 저녁타임
rv_date VARCHAR2(200) -- 원하는 시간 
);


--테이블02 (예약자(로그인회원)의 DB )
CREATE TABLE order_etc(
num NUMBER PRIMARY KEY,
teamname VARCHAR2(200), -- 팀명
teamnumber VARCHAR2(50), -- 팀인원
phone VARCHAR2(20), -- 전화번호
etc VARCHAR2(200) -- 기타입력사항
);
