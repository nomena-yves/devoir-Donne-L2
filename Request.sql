create table Team(
    id_Team  serial primary key,
    name varchar (20)
);
create table employee(
    id_employee serial primary key,
    last_name varchar (150) not null ,
    first_name varchar (150),
    contract_type varchar (250),
    salary int not null,
    id_leave int not null ,
    constraint fk_Team foreign key id_Team references Team (id_Team)
);
create table Leave(
    id_leave serial primary key,
    start_date timestamp,
    end_date timestamp
    id_employee int,
    constraint  fk_employee foreign key id_employee references employee(id_employee)
)



1-
Select e.id_employee,e.first_name,e.last_name from employee e left join Team t on e.id_Team=t.id_Team where e.id_Team is null;

2-
select e.id,e.first_name,e.last_name from employee e left join Leave l on e.id_employee = l.id_employee where id_leave is null;

3-
select e.first_name,e.last_name,l.id_leave,l.start_date,l.end_date,t.name from employee e inner join Leave l
on e.id_employee=l.id_employee inner join Team t on e.id_Team=t.id_Team;

4-
select contract_type,count(*) from employee group by contract_type;

5-
select count(*) from emplooyee inner join Leave on CURRENT_DATE between start_date and end_date

6-
SELECT e.id, e.first_name, e.last_name, t.name from employee e inner join Team t ON e.id_Team = t.id_Team inner join leave l on l.id_employee = e.id
where CURRENT_DATE between l.start_date and l.end_date;
