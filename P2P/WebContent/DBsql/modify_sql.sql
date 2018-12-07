

ALTER table language drop primary key;
ALTER table license drop primary key;
ALTER table award drop primary key;
ALTER table career drop primary key;
ALTER table service drop primary key;
ALTER table etc drop primary key;

ALTER table language add num int auto_increment PRIMARY KEY;
ALTER table license add num int auto_increment PRIMARY KEY;
ALTER table award add num int auto_increment PRIMARY KEY;
ALTER table career add num int auto_increment PRIMARY KEY;
ALTER table service add num int auto_increment PRIMARY KEY;
ALTER table etc add num int auto_increment PRIMARY KEY;
