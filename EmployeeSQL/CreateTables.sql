
create table departments (
	dept_no varchar(32) primary key,
	dept_name varchar(32)
);

create table titles (
	title_id varchar(32) primary key,
	title varchar(32)
);

create table employees (
	emp_no varchar(32) primary key,
	emp_title varchar(32),
	foreign key (emp_title) references titles(title_id),
	dob date,
	firstname varchar(32),
	lastname varchar(32),
	sex varchar(32),
	hire_date date
);

create table dept_emp (
	emp_no varchar(32),
	foreign key (emp_no) references employees(emp_no),
	dept_no varchar (32),
	foreign key (dept_no) references departments(dept_no)
);

create table managers (
	dept_no varchar(32),
	foreign key (dept_no) references departments(dept_no),
	man_no varchar(32) primary key
);

create table salaries (
	emp_no varchar(32),
	foreign key (emp_no) references employees(emp_no),
	salary int
);
