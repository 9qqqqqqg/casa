drop table notice;
commit;
create table notice(
num number primary key,
subject varchar2(100) NOT NULL,
content varchar2(4000) NOT NULL,
reg_date date default sysdate,
file_content varchar2(500),
readcount number default 0
);
commit;
create sequence notice_seq nocache;
commit;