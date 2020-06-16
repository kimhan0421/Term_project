DROP TABLE RESERVATION;
DROP TABLE ROOM;
DROP TABLE US_ER;


CREATE TABLE ROOM (
  Room_No NUMBER NOT NULL PRIMARY KEY,
  Cap NUMBER NOT NULL
);
COMMENT ON COLUMN ROOM.Room_No IS '룸번호';
COMMENT ON COLUMN ROOM.Cap IS '인원수';

CREATE TABLE US_ER (
  User_No NUMBER NOT NULL PRIMARY KEY,
  User_Name VARCHAR(16) NOT NULL,
  Phone VARCHAR(12) NOT NULL
);

COMMENT ON COLUMN US_ER.User_No IS '사용자번호';
COMMENT ON COLUMN US_ER.User_Name IS '이름';
COMMENT ON COLUMN US_ER.Phone IS '휴대폰';

CREATE TABLE RESERVATION (
  Room_No NUMBER NOT NULL,
  User_No NUMBER NOT NULL,
  Reser_Date DATE NOT NULL,
  Start_time NUMBER,
  End_time NUMBER,
  FOREIGN KEY (Room_No) REFERENCES ROOM(Room_No),
  FOREIGN KEY (User_No) REFERENCES US_ER(User_No),
  PRIMARY KEY (Room_No, Reser_Date)
);

COMMENT ON COLUMN RESERVATION.Room_No IS '룸번호';
COMMENT ON COLUMN RESERVATION.User_No IS '예약자';
COMMENT ON COLUMN RESERVATION.Reser_Date IS '예약날짜';
COMMENT ON COLUMN RESERVATION.Start_time IS '시작시간';
COMMENT ON COLUMN RESERVATION.End_time IS '끝시간';

INSERT INTO ROOM VALUES (1, 4);
INSERT INTO ROOM VALUES (2, 4);
INSERT INTO ROOM VALUES (3, 8);
INSERT INTO ROOM VALUES (4, 8);
INSERT INTO ROOM VALUES (5, 4);
INSERT INTO ROOM VALUES (6, 5);
INSERT INTO ROOM VALUES (7, 4);
INSERT INTO ROOM VALUES (8, 6);
INSERT INTO ROOM VALUES (9, 8);
INSERT INTO ROOM VALUES (10, 8);
INSERT INTO ROOM VALUES (11, 4);

INSERT INTO US_ER (User_No,User_Name, Phone) VALUES ('1','김나영', '01011112222');
INSERT INTO US_ER (User_No, User_Name, Phone) VALUES ('2','이민경', '01033334444');
INSERT INTO US_ER (User_No, User_Name, Phone) VALUES ('3','김경원', '01055556666');
INSERT INTO US_ER (User_No,User_Name, Phone) VALUES ('4','우지성', '01077778888');
INSERT INTO US_ER (User_No, User_Name, Phone) VALUES ('5','박정현', '01099991111');
INSERT INTO US_ER (User_No, User_Name, Phone) VALUES ('6','방주혁', '01022223333');
INSERT INTO US_ER (User_No,User_Name, Phone) VALUES ('7','유인후', '010944445555');
INSERT INTO US_ER (User_No, User_Name, Phone) VALUES ('8','진혜인', '01066667777');
INSERT INTO US_ER (User_No, User_Name, Phone) VALUES ('9','한찬우', '01088889999');
INSERT INTO US_ER (User_No, User_Name, Phone) VALUES ('10','장은우', '01033331111');
INSERT INTO US_ER (User_No, User_Name, Phone) VALUES ('11','홍성민', '01055552222');

INSERT INTO RESERVATION VALUES (1, 1, '2020-5-28', 1, 5);
INSERT INTO RESERVATION VALUES (2, 2, '2020-5-28', 7, 11);
INSERT INTO RESERVATION VALUES (3, 3, '2020-5-29', 14, 16);
INSERT INTO RESERVATION VALUES (4, 4, '2020-5-29', 20, 23);
INSERT INTO RESERVATION VALUES (4, 5, '2020-6-1', 16, 20);
INSERT INTO RESERVATION VALUES (3, 6, '2020-6-1', 15, 18);
INSERT INTO RESERVATION VALUES (3, 7, '2020-6-2', 16, 20);
INSERT INTO RESERVATION VALUES (2, 8, '2020-6-3', 21, 25);
INSERT INTO RESERVATION VALUES (1, 9, '2020-6-4', 7, 10);
INSERT INTO RESERVATION VALUES (4, 10, '2020-6-6',15, 18);
INSERT INTO RESERVATION VALUES (5, 11, '2020-6-10', 19, 22);
commit;