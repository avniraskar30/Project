/*drop table medicines;*/
drop table medical__records;
/*drop table appointment1;
drop table doctor1;*/
drop table patients;
drop table admins;


create table admins(ad_id int primary key,ad_name varchar(20),ad_pass text);

create table patients(pa_name varchar(20),pa_add text,pa_cno text primary key,pa_em text,pa_pass text);

/*create table doctor1(dr_id int primary key,dr_name varchar(20),dr_loc text,dr_time text,dr_sex varchar(20),dr_cno text, dr_em text,dr_fees int,dr_spec varchar(20),pa_id int references patients(pa_id)on delete cascade);


create table appointment1(ap_id int primary key,ap_day varchar(20),ap_time text,pa_id int references patients(pa_id)on delete cascade,dr_id int references doctor1(dr_id)on delete cascade);*/



create table medical__records(record_id int primary key,record_date date NOT NULL default current_date,record_time text,pa_cno text references patients(pa_cno) on delete cascade); 
/*create table medicines(mdcn_id int primary key,mdcn_type text,pa_id int references patients(pa_id) on delete cascade,dr_id int references doctor1(dr_id) on delete cascade);*/






INSERT INTO admins values(1,'alia','bhatt');
select* from admins; 


INSERT INTO patients values('Rohini Naik','Mumbai','9090003355','rohini@gmail.com','rohini23');
INSERT INTO patients values('Priyanka Mehta','Pune','9090451463','priya@gmail.com','priya12');
INSERT INTO patients values('Sonam kapor','MP','9090099876','sonak@gmail.com','sonam14');
/*INSERT INTO patients values(14,'Rakhi Kulkarni',34,'AB','2023/4/5','Mumbai','9090550023','rkularni@gmail.com','rakhi14','rakhi90');
INSERT INTO patients values(15,'Anita Sawant',30,'O','2023/11/2','Mumbai','9099333321','anst@gmail.com','anita30','anita56');*/

select* from patients;


/*INSERT INTO doctor1 values(101,'DR.Piya Sharma','Pune09','10AM to 6PM','Female','9087870102','piya@gmail.com',3000,'obstetrician',11);
INSERT INTO doctor1 values(102,'DR.Rahul kulkarni','Mumbai04','10AM to 6PM','Male','9092839802','raahul@gmail.com',2500,'gynecologists',12);
INSERT INTO doctor1 values(103,'DR.Roshan Pahuja','Pune14','10AM to 6PM','Male','9787362332','roshanp@gmail.com',3000,'obstetrician',13);
INSERT INTO doctor1 values(104,'DR.Muskan shinde','Chinchwad07','10AM to 6PM','Female','8182187633','muski@gmail.com',3000,'obstetrician',14);
INSERT INTO doctor1 values(105,'DR.Kirti Dhule','Pimpri17','10AM-7PM','Female','9808988002','kirti@gmail.com',3000,'obstetrician',15);

select* from doctor1;


INSERT INTO medical__records values(111,'2023/2/12','11AM',15,102);
INSERT INTO medical__records values(112,'2023/1/23','1PM',13,104);
INSERT INTO medical__records values(113,'2023/5/20','12AM',14,101);
INSERT INTO medical__records values(114,'2023/6/3','10AM',12,103);
INSERT INTO medical__records values(115,'2023/1/18','6PM',11,105);
select *from medical__records;


INSERT INTO medicines values(1020,'Vitamins Tablet',15,102);
INSERT INTO medicines values(1102,'Antacids',13,103);
INSERT INTO medicines values(1130,'Antihistamines',14,101);
INSERT INTO medicines values(1142,'Vitamin tablet',12,104);
INSERT INTO medicines values(1215,'Rantac Mg10',11,105);
select *from medicines;


INSERT INTO appointment1 values(1001,'25/3/23 Tuesday','11:45 AM',12,102);
INSERT INTO appointment1 values(1002,'2/5/23 wednesday','1:40 AM',14,104);
INSERT INTO appointment1 values(1003,'21/1/23 Thursday','12:06 PM',11,103);
INSERT INTO appointment1 values(1004,'1/7/23 Tuesday','2:45 PM',13,101);
INSERT INTO appointment1 values(1005,'29/3/23 Tuesday','9:45 AM',11,105);
select *from appointment1; */





