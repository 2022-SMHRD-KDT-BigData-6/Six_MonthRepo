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

create table s_post(
	Pnum number(3),
	title varchar2(30) not null,
	contents varchar2(1000) not null,
	id varchar2(20) not null,
	Pdate date not null,
	good number(3),
	constraint post_Pnum_pk primary key(Pnum),
	constraint post_id_fk foreign key (id) references s_member(id)
)

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
									
drop table s_member cascade constraints

select * 
from (select rownum as rn, bnum, title, writer, content, day from jdbc_board order by rownum) A
where a.rn between 1 and 1+9;
									
									
									
									
									
									
									
									
									
									
									

									
									
									
									
									
									
									
									
									
									
									
									
									
									
									

									
									
									
									
									
									
									
									
									
									
									
									
									
									
									

									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
