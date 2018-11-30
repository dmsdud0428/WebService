
create table language (
	id char(9) primary key,
	title varchar(100),
	rating varchar(1),
	score double,
	day date
);

create table license (
	id char(9) primary key,
	title varchar(100),
	organization varchar(100),
	rating varchar(1),
	day date
);

create table award (
	id char(9) primary key,
	title varchar(100),
	organization varchar(100),
	rating varchar(1),
	day date
);

create table career (
	id char(9) primary key,
	kind varchar(100),
	compandy varchar(100),
	business varchar(100),
	s_day date,
	e_day date
);

create table service (
	id char(9) primary key,
	title varchar(100),
	organization varchar(100),
	kind varchar(100),
	s_day date,
	e_day date
);

create table etc (
	id char(9) primary key,
	title varchar(100),
	organization varchar(100),
	s_day date,
	e_day date
);

create table introduction (
	num int auto_increment primary key,
	id char(9),
	state tinyint(1) default 0,
	day date,
	company varchar(100),
	business varchar(100),
	kind varchar(10),
	question_1 varchar(500),
	answer_1 varchar(3000),
	question_2 varchar(500),
	answer_2 varchar(3000),
	question_3 varchar(500),
	answer_3 varchar(3000),
	question_4 varchar(500),
	answer_4 varchar(3000),
	question_5 varchar(500),
	answer_5 varchar(3000)
);

create table interview (
	num int auto_increment primary key,
	id char(9),
	year char(4),
	company varchar(100),
	spec varchar(100),
	review varchar(5000)
);