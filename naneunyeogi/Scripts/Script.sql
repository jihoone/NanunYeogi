CREATE TABLE COVID19(
   COVID_NUM INT NOT NULL,
   COVID_ORDER INT NOT NULL,
   COVID_NAME VARCHAR2(200) NOT NULL,
   COVID_LATITUDE NUMBER(12,9),
   COVID_LONGTITUDE NUMBER(12,9),
   COVID_DESCRIPTION CLOB,
   CONSTRAINT COVID_PK PRIMARY KEY (COVID_NUM,COVID_ORDER)
);
CREATE TABLE NANEUN_USER(
   USER_NUM INT NOT NULL,
   USER_ORDER INT NOT NULL,
   USER_NAME VARCHAR2(200) NOT NULL,
   USER_LATITUDE NUMBER(12,9),
   USER_LONGTITUDE NUMBER(12,9),
   USER_DESCRIPTION CLOB,
   CONSTRAINT NANEUN_USER_PK PRIMARY KEY (USER_NUM,USER_ORDER)
);
CREATE TABLE COVID_DANGER(
	USER_NUM INT NOT NULL,
	USER_ORDER INT NOT NULL,
	COVID_NUM INT NOT NULL,
	COVID_ORDER INT NOT NULL,
	CONSTRAINT DANGER_FK1 FOREIGN KEY (USER_NUM,USER_ORDER) REFERENCES NANEUN_USER,
	CONSTRAINT DANGER_FK2 FOREIGN KEY (COVID_NUM,COVID_ORDER) REFERENCES COVID19,
	CONSTRAINT DANGER_PK PRIMARY KEY (USER_NUM,USER_ORDER,COVID_NUM,COVID_ORDER)
);

SELECT COUNT(USER_ORDER) FROM NANEUN_USER WHERE USER_NUM=1;


INSERT INTO HR.COVID19
(COVID_NUM, COVID_ORDER, COVID_NAME, COVID_LATITUDE, COVID_LONGTITUDE, COVID_DESCRIPTION)
VALUES(1, 1, '1번확진자', 37.497908, 127.027613, '1번 대구 확진자');

INSERT INTO HR.NANEUN_USER
(USER_NUM, USER_ORDER, USER_NAME, USER_LATITUDE, USER_LONGTITUDE, USER_DESCRIPTION)
VALUES(1, 1, '이병건', 37.49814794950352, 127.02787811220668, '');
INSERT INTO HR.NANEUN_USER
(USER_NUM, USER_ORDER, USER_NAME, USER_LATITUDE, USER_LONGTITUDE, USER_DESCRIPTION)
VALUES(1, 2, '이병건', 37.49804419386845, 127.02739008778799, '');
INSERT INTO HR.NANEUN_USER
(USER_NUM, USER_ORDER, USER_NAME, USER_LATITUDE, USER_LONGTITUDE, USER_DESCRIPTION)
VALUES(1, 3, '이병건',37.4977430486478, 127.02778561084627 , '');
INSERT INTO HR.NANEUN_USER
(USER_NUM, USER_ORDER, USER_NAME, USER_LATITUDE, USER_LONGTITUDE, USER_DESCRIPTION)
VALUES(1, 4, '이병건',37.498132765761035, 127.02707430728178 , '');
INSERT INTO HR.NANEUN_USER
(USER_NUM, USER_ORDER, USER_NAME, USER_LATITUDE, USER_LONGTITUDE, USER_DESCRIPTION)
VALUES(1, 5, '이병건',37.498264358093195, 127.02835337781706 , '');
INSERT INTO HR.NANEUN_USER
(USER_NUM, USER_ORDER, USER_NAME, USER_LATITUDE, USER_LONGTITUDE, USER_DESCRIPTION)
VALUES(1, 6, '이병건',37.49876541908152, 127.02524341828612 , '');
INSERT INTO HR.NANEUN_USER
(USER_NUM, USER_ORDER, USER_NAME, USER_LATITUDE, USER_LONGTITUDE, USER_DESCRIPTION)
VALUES(1, 7, '이병건',37.497219204908205, 127.02761336693378 , '');
INSERT INTO HR.NANEUN_USER
(USER_NUM, USER_ORDER, USER_NAME, USER_LATITUDE, USER_LONGTITUDE, USER_DESCRIPTION)
VALUES(1, 8, '이병건',37.498469337994806, 127.0279131989296 , '');
INSERT INTO HR.NANEUN_USER
(USER_NUM, USER_ORDER, USER_NAME, USER_LATITUDE, USER_LONGTITUDE, USER_DESCRIPTION)
VALUES(1, 9, '이병건',37.497474800621866, 127.0250998816924 , '');
INSERT INTO HR.NANEUN_USER
(USER_NUM, USER_ORDER, USER_NAME, USER_LATITUDE, USER_LONGTITUDE, USER_DESCRIPTION)
VALUES(1, 10, '이병건',37.49763676180938, 127.02720189536508 , '');

SELECT USER_ORDER FROM NANEUN_USER WHERE USER_NUM=1 ;

DELETE FROM HR.COVID_DANGER;
