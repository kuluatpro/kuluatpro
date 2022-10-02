create table users (
user_id varchar(10) not null,
rights varchar(100) not null,
primary key (user_id)
);

create table task (
task_id varchar(10) not null,
pver_name varchar(50) not null,
oem varchar(10) not null,
primary key (task_id)
);

create table warnings (
defect_id int not null,
code_line varchar(100) not null,
line_in_source int not null,
function_name varchar(100) not null,
warning_prio varchar(10) not null,
user_id varchar(10) not null,
task_id varchar(10) not null,
primary key (defect_id),
foreign key (user_id) references users (user_id),
foreign key (task_id) references task (task_id)
);




--alter table warnings add assessor varchar(10);

insert into warnings (defect_id, code_line, line_in_source, function_name, warning_prio, user_id, task_id) values (2, 'wwwwwwwwwwwwwww', 533, 'dabong', 'low', 'tlr6hc', 'A000');
insert into task(task_id, pver_name, oem) values ('A0000', 'wwwwwwwwwwwwwww', 'Audi');
insert into users(user_id, rights) values ('tlr6hc', 'write');
