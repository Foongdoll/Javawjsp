show tables;
select * from artMember;

create table pds (
	idx 			int not null auto_increment,   /* 자료실 고유번호 */
	mid			  varchar(20) not null,          /* 올린이 아이디 */
	nickName  varchar(20) not null,          /* 올린이 별명 */
	fName		  varchar(200) not null,         /* 업로드 파일 이름 */
	fSName 	  varchar(200) not null,         /* 실제 서버에 저장된 파일 이름 */
	fSize     int not null,                  /* 파일 크기 */
	title			varchar(100) not null,         /* 업로드 파일의 제목 */
	part      varchar(20) not null,          /* 파일 분류 (카테고리 지정) */
	pwd   		varchar(100) not null,         /* 비밀번호 암호화 (SHA-256)*/
	fDate   	datetime default now(), 			 /* 파일 업로드한 날짜 */
	downNum   int default 0, 								 /* 파일 다운로드 횟수*/
	openSw    char(6) default '공개',         /* 파일의 공개 비공개 여부 */
	content 	text,                          /* 업로드 파일의 상세 설명*/
	hostIp    varchar(50) not null,          /* 업로드 PC IP*/
	primary key(idx)                         /* 기본키 : 자료실의 고유번호 */	
);

desc pds;
drop table pds;

select * from pds;

update pds set part = '기타';