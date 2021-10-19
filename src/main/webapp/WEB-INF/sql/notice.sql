-- DDL
DROP TABLE notice;
CREATE TABLE notice(
  noticeno      NUMBER(10)                   NOT NULL ,
  title         VARCHAR2(300)              NOT NULL ,
  content       VARCHAR2(500)                 NOT NULL ,
  wname         VARCHAR2 (20)              NOT NULL ,
  passwd        VARCHAR2 (20)              NULL ,
  cnt           NUMBER(5) DEFAULT '0'              NOT NULL ,
  rdate         TIMESTAMP                  NOT NULL ,
  PRIMARY KEY (noticeno)  
);

-- Generate ID using sequence and trigger
CREATE SEQUENCE Snoticeno START WITH 1 INCREMENT BY 1;
drop SEQUENCE noticeno;
-- 등록
INSERT INTO notice(noticeno,title, content, wname, passwd, cnt, rdate)
VALUES((select nvl(max(noticeno),0)+1 from notice),'spring 시즌 할인 안내 2', '20% 할인 실시!', '아렁이', '1234', 0, SYSTIMESTAMP);

-- 목록
SELECT noticeno, title, content, wname, passwd, cnt, rdate
FROM notice
ORDER BY noticeno DESC;


-- 조회
SELECT noticeno, title, content, wname, passwd, cnt, rdate
FROM notice
WHERE noticeno=1;
-- 조회수증가
UPDATE notice
SET cnt = cnt + 1
WHERE noticeno=1;
-- 수정
UPDATE notice
SET title='추가 공지', content='5% 추가 할인!', wname='아로미'
WHERE noticeno=1;
-- 패스워드 확인
SELECT COUNT(*) AS cnt
FROM notice
WHERE noticeno=1 AND passwd='1234';
-- 삭제
DELETE FROM notice
WHERE noticeno=3;
 
SELECT * FROM notice;