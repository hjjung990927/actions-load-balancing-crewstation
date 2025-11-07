create table tbl_banner
(
    id               bigint generated always as identity primary key,
    banner_order     int not null,
    created_datetime timestamp default now(),
    updated_datetime timestamp default now()
);

select * from tbl_banner;
select * from tbl_banner_file;
select * from tbl_file;