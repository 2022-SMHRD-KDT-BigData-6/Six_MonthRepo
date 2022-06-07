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

insert into s_member
values('jaewoo', '김재우', '1234', 'kimjaewu09@naver.com', '재우쓰');

create table s_post(
	Pnum number(3),
	title varchar2(30) not null,
	content varchar2(1000) not null,
	id varchar2(20) not null,
	Pdate date not null,
	fileName varchar2(100),
	/* good number(3), */
	constraint post_Pnum_pk primary key(Pnum),
	constraint post_id_fk foreign key (id) references s_member(id)
)

select * from S_POST

insert into s_post
values (post_num_seq.nextval, 'ㅎㅇ', '테스트중', 'jaewoo', sysdate, 'aa');

insert into s_post
values (post_num_seq.nextval, 'hello', '테스트중ddd', 'jaewoo', sysdate, 'bb');

create sequence post_num_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache

alter table s_post add foreign key(good) references post_mind(good)
drop table s_post

create table s_comment(
	Cnum number(3),
	Pnum number(3) not null,
	comments varchar2(100) not null,
	id varchar2(20) not null,
	Cdate date not null,
	good number(3),
	constraint com_num_pk primary key (Cnum),
	constraint member_id_fk foreign key (id) references s_member(id),
	constraint post_Pnum_fk foreign key (Pnum) references s_post(Pnum)
)									


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
									
drop table s_post cascade constraints


									
									
									
									
									
									
									
									
									
									
									

									
									
									
									
									
									
									
									
									
									
									
									
									
									
									

									
									
									
									
									
									
									
									
									
									
									
									
									
									
									

									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
