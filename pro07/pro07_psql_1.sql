create table member (
	id varchar(20) primary key,		--아이디
	pw varchar(200) not null,		--비밀번호(암호화)
	name varchar(10) not null,		--이름
	email varchar(30) not null,		--이메일
	tel varchar(20) not null,		--전화번호
	birth date not null,			--생년월일(mapper에서 형변환)
	addr1 varchar(100) not null,	--기본주소
	addr2 varchar(100) not null,	--상세주소
	postcode varchar(30) not null,	--우편번호
	regdate date default now()		--가입일
);
