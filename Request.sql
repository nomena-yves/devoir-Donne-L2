1-
Select e.id_employee,e.first_name,e.last_name from employee e left join Team t on e.id_Team=t.id_Team where e.id_Team is null;

2-
select e.id,e.first_name,e.last_name from employee e left join Leave l on e.id_employee = l.id_employee where id_leave is null;

3-
select e.first_name,e.last_name,l.id_leave,l.start_date,l.end_date,t.name from employee e inner join Leave l
on e.id_employee=l.id_employee inner join Team t on e.id_Team=t.id_Team

4-