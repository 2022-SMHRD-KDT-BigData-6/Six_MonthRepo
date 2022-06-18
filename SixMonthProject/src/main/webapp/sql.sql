 create table s_member(
	id varchar2(20),
	name varchar2(10),
	pw varchar2(20) not null,
	email varchar2(30) not null,
	nick varchar2(10) not null,
	constraint member_id_pk primary key(id) on delete cascade,
	constraint member_email_uk unique (email) on delete cascade,
	constraint member_nick_uk unique (nick) on delete cascade
)

alter table s_member modify nick varchar2(20)

drop table s_member

insert into s_member
values('10', '김재우', '10', '10@naver.com', '10');

insert into s_member
values('jaewoo09', '김재우', '1234', 'kimjaewu@naver.com', '재우');

delete from s_member where id='jaewoo09';

select * from s_member;

create table s_post(
	pnum number(3),
	title varchar2(30) not null,
	content varchar2(1000) not null,
	id varchar2(20) not null,
	nick varchar2(10) not null,
	good number(3) default 0,
	hit number(3) default 0,
	pdate date,
	fileName varchar2(100),
	constraint post_pnum_pk primary key(pnum) on delete cascade,
	constraint post_id_fk foreign key (id) references s_member(id) on delete cascade,
	constraint post_nick_fk foreign key (nick) references s_member(nick) on delete cascade
)

select * from s_post

      select *
      from s_post
      where title like '%검색%'
      order by pdate desc
      
            select *
      from s_post
      where title like '%' || #{title} || '%'
      order by pdate desc

update s_post
set fileName=NULL
where pnum=195

insert into s_post(pnum,title,content,id,nick,pdate,fileName)
values(post_num_seq.nextval, '조회수 되니?', '되니?', 'jaewoo', '재우쓰', sysdate, 'aa');

insert into s_post
values (post_num_seq.nextval, 'ㅎㅇ', '테스트중', 'jaewoo', '재우쓰', 0, 0, sysdate, 'aa');

create sequence post_num_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache

alter table s_post add foreign key (good) references post_mind(good)

create table s_comment(
	cnum number(3),
	pnum number(3),
	comments varchar2(100) not null,
	id varchar2(20) not null,
	nick varchar2(10) not null,
	good number(3) default 0,
	cdate date,
	constraint com_num_pk primary key (cnum),
	constraint member_id_fk foreign key (id) references s_member(id) on delete cascade,
	constraint comment_nick_fk foreign key (nick) references s_member(nick) on delete cascade,
	constraint post_pnum_fk foreign key (pnum) references s_post(pnum) on delete cascade
)

alter table s_comment add anony varchar(25) default 'off'
alter table s_comment drop column anonymous cascade constraint

select * from s_comment

alter table s_comment add(good number(3));

insert into s_comment
values(comment_num_seq.nextval, '30', '댓글내용', 'jaewoo', sysdate);

create sequence comment_num_seq
	


alter table s_comment add foreign key (good) references comment_mind(good)

drop table s_comment
			
create table post_mind(
	pnum number(3),
	id varchar2(20) not null,
	constraint post_mind_id_fk foreign key (id) references s_member(id) on delete cascade,
	constraint post_mind_pnum_fk foreign key (pnum) references s_post(pnum) on delete cascade
)	

select * from post_mind

create table comment_mind(
	id varchar2(20) not null,
	cnum number(3) not null,
	constraint comment_mind_id_fk foreign key (id) references s_member(id),
	constraint comment_mind_cnum_fk foreign key (cnum) references s_comment(cnum)
)									


select * from comment_mind;
									
drop table s_comment cascade constraints

select * 
from (select ROW_NUMBER() OVER(order by pdate desc) as rn, pnum, title, id, content, pdate from s_post) A
where a.rn between 1 and 1+9;




									

insert into s_member
values('나윤2', '나윤2', '123', 'ggumi1031@naver.com', '나윤2');									
									
									

				
select count(*) from s_member where id='jaewoo'				
									
truncate table s_member

select * 
from s_comment
where pnum=149
order by cdate;

select count(*)
from post_mind
where pnum=153 and id='jaewoo09';			

select *
from s_post
where title like '%공감%'
order by pdate desc
														
select * from s_member												
									
delete S_MEMBER where id='나윤3'						
									
delete from CALENDAR where caltitle='test01' and start1='22/06/12' and end1='22/06/15';
							
insert into CALENDAR
values('junseong', 'test10', '22/06/12', '22/06/20', 'white', 'black', 'black', calendar_num_seq.nextval);

select * from all_tables									
									
alter table S_POST add anonymous varchar(25) default 'off'
alter table S_POST drop column anonymous cascade constraint

									
select * from S_POST									
delete from S_POST where anonymous is null								
delete from S_POST where anonymous = 'ㅇㅇ'
									
desc S_POST


insert into s_post(pnum,title,content,id,nick,pdate,fileName,anonymous)
      values(
         post_num_seq.nextval,
         '제목',
         '내용',
         'yurim',
         '유리밍',
         current_date,
         null,
         'on'
      )
      
       select *
      from s_post
      where nick like '%재우킹%'
      order by pdate desc
									
									
select comments from s_comment where id = 'jaewoo'								
 									
									