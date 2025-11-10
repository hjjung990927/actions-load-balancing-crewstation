create table tbl_country
(
    id           bigint generated always as identity primary key,
    country_name varchar(255)
);

select * from tbl_country where country_name = '일본';
insert into tbl_country(country_name) values ('일본');



