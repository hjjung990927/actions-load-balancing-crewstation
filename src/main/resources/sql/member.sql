create table tbl_member
(
    id                  bigint generated always as identity primary key,
    member_name         varchar(255) not null,
    member_phone        varchar(255),
    member_email        varchar(255) unique,
    member_social_url   varchar(255),
    member_birth        varchar(8),
    member_gender       gender          default 'male',
    member_mbti         char(4),
    member_password     varchar(255),
    member_status       status          default 'active',
    member_provider     member_provider default 'crewstation',
    social_img_url       varchar(255),
    member_social_email varchar(255),
    member_description  varchar(255),
    member_role         member_role     default 'member',
    chemistry_score int default 70,
    created_datetime    timestamp       default now(),
    updated_datetime    timestamp       default now()
);

ALTER TABLE tbl_member
    DROP CONSTRAINT tbl_member_member_social_email_key;

select * from tbl_post;

select * from tbl_member_file;
delete from tbl_member where id = 11;
delete from tbl_address where id = 2;

insert into tbl_member(member_name, member_phone, member_email,member_password,member_role)
values ('관리자','01055767406','admin@gmail.com','admin','admin');
