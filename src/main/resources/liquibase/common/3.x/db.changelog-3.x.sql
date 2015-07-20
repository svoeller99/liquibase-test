--liquibase formatted sql

--changeset svoell:1
create table test2 (
    id int primary key,
    name varchar(255)
);
--rollback drop table test2;

--changeset svoell:2
insert into test2 (id, name) values (1, 'name 1');
insert into test2 (id, name) values (2, 'name 2');
--rollback delete test2 where id in (1,2);