show tables;

create table user (
  idx  int not null auto_increment primary key,
  mid  varchar(20) not null,
  name varchar(20) not null,
  age  int default 20,
  address varchar(50)
);

desc user;

insert into user values (default, 'admin', '관리자', 32, '청주');
insert into user values (default, 'hkd1234', '홍길동', 22, '서울');
insert into user values (default, 'kms1234', '김말숙', 36, '제주');
insert into user values (default, 'lkj1234', '이기자', 18, '울산');
insert into user values (default, 'onr1234', '오나라', 39, '광주');

select * from user;
select * from user order by idx desc;

