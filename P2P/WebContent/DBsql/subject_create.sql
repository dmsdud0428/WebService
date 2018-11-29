
create table subject(
	code char(9) primary key,
	name varchar(50),
	score int,
	m tinyint(1) default 0,
	bsm tinyint(1) default 0,
	engineeringMajor tinyint(1) default 0,
	engineeringR tinyint(1) default 0,
	major tinyint(1) default 0,
	majorNecessary tinyint(1) default 0,
	necessaryR tinyint(1) default 0
);
