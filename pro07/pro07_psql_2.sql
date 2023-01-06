create table free(
    fno int primary key,
    title varchar(100) not null,
    content varchar(1000) not null,
    regdate timestamp(0) default now(),
    id varchar(20),
    visited int default 0
);

commit;

select * from sample;

insert into sample values ('asfsadfewkrljlasfd', '3204124912');

