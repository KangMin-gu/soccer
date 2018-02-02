



--시퀀스
CREATE SEQUENCE order_data_seq;



CREATE TABLE order_data(
num NUMBER PRIMARY KEY, -- 리스트번호
playgroundname VARCHAR2(200),-- 운동장 이름
field_rent VARCHAR2(200), -- 예약날짜
rv_date VARCHAR2(200), -- 예약시간 
teamname VARCHAR2(200), -- 팀명
teamnumber VARCHAR2(50), -- 팀인원
phone VARCHAR2(20), -- 전화번호
etc VARCHAR2(200) -- 기타입력사항
);



