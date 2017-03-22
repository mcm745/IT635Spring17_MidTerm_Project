-- create Client Profile Database tables

DROP TABLE if exists account;
create table account 
(
acct_id int not null AUTO_INCREMENT,
fname varchar(50),
lname varchar(50),
address_line_1 varchar(50),
address_line_2 varchar(50),
city varchar(30),
state varchar(2),
country varchar(5),
primary key(acct_id)
);


DROP TABLE if exists security;
create table security
(
symbol varchar(20) primary key,
cusip varchar(20),
security_desc varchar(50),
currency varchar(10) null,
exchange varchar(20) null,
market_cap numeric(20,2) null,
shares_outstanding numeric(18,0) null,
shares_short numeric(18,0) null,
p_e_ratio numeric(18,2) null,
ex_dividend date null,
dividend_pay_date date null,
dividend numeric(18,2) null,
dividend_yield numeric(18,2) null,
options varchar(5) null
);


DROP TABLE if exists security_history;
create table security_history
(
symbol varchar(20) not null,
trade_date date not null,
open numeric(20,4) null,
high numeric(20,4) null,	
low numeric(20,4) null,
close numeric(20,4) null,
volume numeric (18,0) null,
index(symbol, trade_date),
primary key (trade_date, symbol)
);


DROP TABLE if exists account_security_position;
create table account_security_position
(
acct_id numeric (10,0) not null,
symbol varchar(20) not null,
quantity numeric (20,4) null,
average_price numeric(28,10) null,
primary key (acct_id, symbol)
);


DROP TABLE if exists activity;
create table activity
(
trade_id int not null AUTO_INCREMENT,
acct_id numeric(10,0) not null,
buy_sell_ind varchar(5) not null,
trade_date datetime not null,
symbol varchar(20) not null,
quantity numeric(18,2) not null,
price numeric(28,10) not null,
primary key(trade_id, acct_id)
);
