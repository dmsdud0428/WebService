create table member (
	id char(9) primary key,
	name varchar(10)
);

create table year16 (
	id char(9) primary key,
	total int,
	major int,
	culture int,
	major_e int,
	culture_e int,
	msc int,
	design int,
	culture_p int,
	FOREIGN KEY(id) REFERENCES member(id) ON UPDATE CASCADE ON DELETE CASCADE
);

create table temp (
	num int auto_increment primary key,
	id char(9),
	subject varchar(100),
	kind varchar(10),
	grade int,
	design int,
	FOREIGN KEY(id) REFERENCES member(id) ON UPDATE CASCADE ON DELETE CASCADE
);

create table language (
	id char(9) primary key,
	title varchar(100),
	rating varchar(1),
	score double,
	day date,
	FOREIGN KEY(id) REFERENCES member(id) ON UPDATE CASCADE ON DELETE CASCADE
);

create table license (
	id char(9) primary key,
	title varchar(100),
	organization varchar(100),
	rating varchar(1),
	day date,
	FOREIGN KEY(id) REFERENCES member(id) ON UPDATE CASCADE ON DELETE CASCADE
);

create table award (
	id char(9) primary key,
	title varchar(100),
	organization varchar(100),
	rating varchar(1),
	day date,
	FOREIGN KEY(id) REFERENCES member(id) ON UPDATE CASCADE ON DELETE CASCADE
);

create table career (
	id char(9) primary key,
	kind varchar(100),
	compandy varchar(100),
	business varchar(100),
	s_day date,
	e_day date,
	FOREIGN KEY(id) REFERENCES member(id) ON UPDATE CASCADE ON DELETE CASCADE
);

create table service (
	id char(9) primary key,
	title varchar(100),
	organization varchar(100),
	kind varchar(100),
	s_day date,
	e_day date,
	FOREIGN KEY(id) REFERENCES member(id) ON UPDATE CASCADE ON DELETE CASCADE
);

create table etc (
	id char(9) primary key,
	title varchar(100),
	organization varchar(100),
	s_day date,
	e_day date,
	FOREIGN KEY(id) REFERENCES member(id) ON UPDATE CASCADE ON DELETE CASCADE
);

create table grade (
	id char(9) primary key,
	one_f double,
	one_s double,
	two_f double,
	two_s double,
	three_f double,
	three_s double,
	four_f double,
	four_s double,
	FOREIGN KEY(id) REFERENCES member(id) ON UPDATE CASCADE ON DELETE CASCADE
);

create table introduction (
	id char(9) primary key,
	state varchar(10),
	day date,
	company varchar(100),
	business varchar(100),
	kind varchar(10),
	question_1 varchar(500),
	answer_1 varchar(5000),
	question_2 varchar(500),
	answer_2 varchar(5000),
	question_3 varchar(500),
	answer_3 varchar(5000),
	question_4 varchar(500),
	answer_4 varchar(5000),
	question_5 varchar(500),
	answer_5 varchar(5000),
	FOREIGN KEY(id) REFERENCES member(id) ON UPDATE CASCADE ON DELETE CASCADE
);

create table interview (
	id char(9) primary key,
	year char(4),
	company varchar(100),
	spec varchar(100),
	review varchar(5000),
	FOREIGN KEY(id) REFERENCES member(id) ON UPDATE CASCADE ON DELETE CASCADE
);