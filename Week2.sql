select e.first_name, e.last_name, t.title from employees e
inner join titles t on t.emp_no = e.emp_no limit 50;

select * from departments d;

select t.title, count(t.title) from titles t 
inner join employees e using (emp_no)
where e.birth_date > '1965-01-01'
group by t.title;


select t.title, cast(avg(s.salary) as decimal (10,2)) as "Average Salary" from titles t
inner join salaries s using (emp_no)
group by t.title;


select sum(s.salary) as "Total Marketing Budget" from salaries s
inner join dept_emp de using (emp_no)
inner join departments d using (dept_no)
where dept_name = 'Marketing' and s.from_date > '1989-12-31' and s.to_date < '1993-01-01';