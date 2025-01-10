drop table medical__records12;
drop table patients13;
drop table admins1;

create table admins1(ad_id int primary key,ad_name varchar(20),ad_pass text);

create table patients13(pa_name varchar(20),pa_cno text primary key,pa_em text,pa_add text,pa_pass text);

create table medical__records12(record_id int primary key,record_date date NOT NULL default current_date,record_time text,pa_cno text references patients13(pa_cno) on delete cascade);

INSERT INTO admins1 values(1,'alia','bhatt');
select* from admins1;

INSERT INTO patients13 values('Rohini Naik','9090003355','rohini@gmail.com','Mumbai','rohini23');
INSERT INTO patients13 values('Priyanka Mehta','9090451463','priya@gmail.com','Pune','priya12');
INSERT INTO patients13 values('Sonam kapor','9090099876','sonak@gmail.com','MP','sonam14');
select* from patients13;


