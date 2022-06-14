 create table s_member(
	id varchar2(20),
	name varchar2(10),
	pw varchar2(20) not null,
	email varchar2(30) not null,
	nick varchar2(10) not null,
	constraint member_id_pk primary key(id),
	constraint member_email_uk unique (email),
	constraint member_nick_uk unique (nick)
)

drop table s_member

insert into s_member
values('jaewoo', '김재우', '1234', 'kimjaewu09@naver.com', '재우쓰');

insert into s_member
values('jaewoo09', '김재우', '1234', 'kimjaewu@naver.com', '재우');

select * from s_member;

create table s_post(
	pnum number(3),
	title varchar2(30) not null,
	content varchar2(1000) not null,
	id varchar2(20) not null,
	nick varchar2(10) not null,
	pdate date,
	fileName varchar2(100),
	/* good number(3), */
	constraint post_pnum_pk primary key(pnum),
	constraint post_id_fk foreign key (id) references s_member(id),
	constraint post_nick_fk foreign key (nick) references s_member(nick)
)

select * from s_post

insert into s_post
values (post_num_seq.nextval, 'ㅎㅇ', '테스트중', 'jaewoo', '재우쓰', sysdate, 'aa');

insert into s_post
values (post_num_seq.nextval, 'hello', '테스트중ddd', 'jaewoo', '재우쓰', sysdate, 'bb');

create sequence post_num_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache

alter table s_post add foreign key(good) references post_mind(good)

create table s_comment(
	cnum number(3),
	pnum number(3),
	comments varchar2(100) not null,
	id varchar2(20) not null,
	nick varchar2(10) not null,
	cdate date,
	/* good number(3), */
	constraint com_num_pk primary key (cnum),
	constraint member_id_fk foreign key (id) references s_member(id),
	constraint comment_nick_fk foreign key (nick) references s_member(nick),
	constraint post_pnum_fk foreign key (pnum) references s_post(pnum)
)		

select * from s_comment

insert into s_comment
values(comment_num_seq.nextval, '30', '댓글내용', 'jaewoo', sysdate);

create sequence comment_num_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache

alter table s_comment add foreign key (good) references comment_mind(good)
drop table s_comment
			
create table post_mind(
	good number(3),
	id varchar2(20) not null,
	Pnum number(3) not null,
	constraint post_mind_good_pk primary key(good),
	constraint post_mind_id_fk foreign key (id) references s_member(id),
	constraint post_mind_Pnum_fk foreign key (Pnum) references s_post(Pnum)
)	
		
create table comment_mind(
	good number(3),
	id varchar2(20) not null,
	Cnum number(3) not null,
	constraint comment_mind_good_pk primary key(good),
	constraint comment_mind_id_fk foreign key (id) references s_member(id),
	constraint comment_mind_Cnum_fk foreign key (Cnum) references s_comment(Cnum)
)									


select * from s_post;
									
drop table s_comment cascade constraints

select * 
from (select rownum as rn, pnum, title, id, content, pdate from s_post order by pnum desc) A
where a.rn between 1 and 1+9;
				
select count(*) from s_member where id='jaewoo'				
									
truncate table s_member

select * from S_MEMBER									
									
									
									
									
									
									

									
									
									
									
									
									
									
									
									
									
									
									
									
									
									

									
									
									
									
									
									
									
									
									
									
									
									
									
									
									

									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
