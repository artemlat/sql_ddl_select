/*1*/
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
); 
 
/*2*/
insert into employees(employee_name)
values  ('Artiom_L'),
	    ('Savenko_M'),
	    ('Burchenov_V'),
        ('Matveev_A'),
        ('Doroshenko_O'),
		('Soloniy_G'),
		('Riabchuk_M'),
		('Troyan_C'),
		('Gavrilova_Y'),
		('Poseidon_B'),
		('Melko_A'),
		('Vadov_M'),
		('Sarafan_U'),
		('Znamenova_I'),
		('Yurchenko_L'),
		('Passan_Y'),
		('Zaborof_M'),
		('Vesemirov_G'),
		('Veselui_T'),
		('Shabenko_Y'),
		('Novak_T'),
		('Lukash_L'),
		('Samson_V'),
		('Yankov_S'),
		('Garova_Y'),
		('Yarovoy_U'),
		('Zaretskiy_D'),
		('Lebed_V'),
		('Solonova_V'),
		('Umatov_B'),
		('Zaza_L'),
		('Lobzik_N'),
		('Nifatov_Y'),
		('Rubenko_T'),
		('Sokur_R'),
		('Nadgornyi_V'),
		('Dubak_N'),
		('Lutskaya_C'),
		('Sevas_B'),
		('Tarasov_C'),
		('Rovnyi_M'),
		('Romanova_Z'),
		('Totol_N'),
		('Average_T'),
		('Zapot_V'),
		('Rogach_T'),
		('Lola_B'),
		('Super_E'),
		('Maslov_X'),
		('Zorya_A'),
		('Emelov_V'),
		('Bushlat_O'),
		('Gerasimov_B'),
		('Nachal_C'),
		('Nepochatiy_R'),
		('Faza_P'),
		('Loyal_T'),
		('Love_L'),
		('Dropov_P'),
		('Baulov_E'),
		('Sarayeva_V'),
		('Sapova_Y'),
		('Gorchan_E'),
		('Gonchar_P'),
		('Allow_E'),
		('Faust_M'),
		('Gaus_P'),
		('Seryi_S'),
		('Pre_Y'),
		('Last_E');
		
/*3*/
create table salary(
	id serial primary key,
	monthly_salary int not null
);

/*4*/
insert into salary(monthly_salary)
values
	   (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	  
/*5*/
create table employee_salary (
	id serial primary key, 
	employee_id int not null unique,
	salary_id int not null
);

/*6*/
insert into employee_salary (employee_id, salary_id)
values
	   (1, 2),
	   (2, 2),
	   (3, 3),
	   (4, 3),
	   (5, 3),
	   (6, 4),
	   (7, 4),
	   (8, 3),
	   (9, 3),
	   (10, 4),
	   (11, 4),
	   (12, 5),
	   (13, 6),
	   (14, 6),
	   (15, 7),
	   (16, 7),
	   (17, 7),
	   (18, 8),
	   (19, 8),
	   (20, 1),
	   (21, 1),
	   (22, 1),
	   (23, 6),
	   (24, 9),
	   (25, 10),
	   (26, 11),
	   (27, 12),
	   (28, 13),
	   (29, 14),
	   (30, 14),
	   (71, 14),
	   (72, 14),
	   (73, 14),
	   (74, 15),
	   (75, 15),
	   (76, 15),
	   (77, 15),
	   (78, 16),
	   (79, 16),
	   (80, 16);
	  
/*7*/
create table roles(
	id serial primary key,
	role_name int not null unique
);

/*8*/
alter table roles 
alter column role_name type varchar(30);

/*9*/
insert into roles(role_name)
values
	   ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
	  
/*10*/
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
		references employees(id),
	foreign key(role_id)
		references roles(id)
);

/*11*/
insert into roles_employee (employee_id, role_id)
values
	   (1, 1),
	   (2, 1),
	   (3, 2),
	   (4, 2),
	   (5, 2),
	   (6, 3),
	   (7, 3),
	   (8, 4),
	   (9, 4),
	   (10, 5),
	   (11, 5),
	   (12, 6),
	   (13, 7),
	   (14, 7),
	   (15, 8),
	   (16, 8),
	   (17, 8),
	   (18, 9),
	   (19, 9),
	   (20, 10),
	   (21, 10),
	   (22, 10),
	   (23, 11),
	   (24, 12),
	   (25, 13),
	   (26, 14),
	   (27, 15),
	   (28, 16),
	   (29, 17),
	   (30, 18),
	   (31, 18),
	   (32, 18),
	   (33, 18),
	   (34, 19),
	   (35, 19),
	   (36, 19),
	   (37, 19),
	   (38, 20),
	   (39, 20),
	   (40, 20);
	  
/*1*/
select employee_name, monthly_salary from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id;	  
	
/*2*/
select employee_name, monthly_salary from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

/*3*/
select employee_name, monthly_salary from employee_salary
left join employees on employee_salary.employee_id = employees.id 
left join salary on employee_salary.salary_id = salary.id
where employee_name is null;

/*4*/
select employee_name, monthly_salary from employee_salary
left join employees on employee_salary.employee_id = employees.id 
left join salary on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < 2000;


/*5*/
select employee_name, monthly_salary from employee_salary
full join employees on employee_salary.employee_id = employees.id 
full join salary on employee_salary.salary_id = salary.id
where monthly_salary is null;

/*6*/
select employee_name, role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
order by role_name;

/*7*/
select employee_name, role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name in ('Junior Java developer', 'Middle Java developer', 'Senior Java developer')

/*8*/
select employee_name, role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name in ('Junior Python developer', 'Middle Python developer', 'Senior Python developer');

/*9*/
select employee_name, role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like ('%QA%')
order by role_name;

/*10*/
select employee_name, role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name in ('Junior Manual QA engineer', 'Middle Manual QA engineer', 'Senior Manual QA engineer')
order by role_name;

/*11*/
select employee_name, role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name in ('Junior Automation QA engineer', 'Middle Automation QA engineer', 'Senior Automation QA engineer')
order by role_name;

/*12*/
select employee_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

/*13*/
select employee_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

/*14*/
select employee_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%';

/*15*/
select monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Java developer%';

/*16*/
select monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Python developer%';

/*17*/
select employee_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior Python%';

/*18*/
select employee_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name = 'Middle Java developer';

/*19*/
select employee_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name = 'Senior Java developer';

/*20*/
select monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like 'Junior%engineer';

/*21*/
select sum(monthly_salary)/count(role_name) average_jun_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%'
;

/*22*/
select sum(monthly_salary) sum_salary_JS_dev from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript developer';

/*23*/
select min(monthly_salary) min_salary_QA from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%engineer';

/*24*/
select max(monthly_salary) max_salary_QA from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%engineer';

/*25*/
select count(employee_name) amount_QA from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%engineer';

/*26*/
select count(employee_name) amount_middle from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

/*27*/
select count(employee_name) amount_dev from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

/*28*/
select sum(monthly_salary) sum_salary_dev from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

/*29*/
select employee_name, role_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
order by monthly_salary asc;

/*30*/
select employee_name, role_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

/*31*/
select employee_name, role_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2300
order by monthly_salary asc;

/*32*/
select employee_name, role_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;







