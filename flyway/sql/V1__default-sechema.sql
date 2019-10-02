create table requirement
(
    id varchar(64) not null primary key,
    name varchar(100) not null,
    registration_nomor varchar(100) not null
)
engine = InnoDB;

create table test_script
(
    id varchar(64) not null primary key,
    file_name varchar(100) not null,
    requirement_id varchar(64) not null
)
engine = InnoDB;

alter table test_script
 add constraint fk_script_requirement_id foreign key (requirement_id)
 REFERENCES requirement(id) on update CASCADE on DELETE CASCADE;

create table design_step
(
    id varchar(64) not null primary key,
    step_name varchar(100) not null,
    test_script_id varchar(64) not null
)
engine = InnoDB;

alter table design_step
 add CONSTRAINT fk_design_script_id FOREIGN key (test_script_id)
 REFERENCES test_script(id) on update CASCADE on DELETE CASCADE;