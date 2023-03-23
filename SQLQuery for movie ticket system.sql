use [Movie Ticket Reserve System];
create table theatre(
theatre_id int not null identity(1,1) primary key,
Name varchar(30) not null,
address varchar(80) not null,
phone_number bigint check(len(phone_number)=10) not null,
number_of_screen smallint not null
);

create table screen(
screen_id int not null identity(1,1) primary key,
screen_number int,
screen_size varchar(30),
theatre_id int foreign key (theatre_id) references theatre(theatre_id)
)

create table movie(
movie_id int identity(1,1) not null primary key,
title varchar(30) not null,
director varchar(30),
movie_cast varchar(90),
duration varchar(30) not null,
genre varchar(20)
);

create table customer(
customer_id int not null identity(1,1) primary key,
customer_name varchar(30) not null,
customer_address varchar(80),
customer_email varchar(30),
customer_number bigint check(len(customer_number)=10) not null,
created_by varchar(20) not null default system_user,
created_date date not null default getdate(),
modified_by varchar(20) not null default system_user,
modified_date date not null default getdate(),
deleted_by varchar(20) not null default system_user,
deleted_date date not null default getdate(),
);
drop table customer;

create table customer(
customer_id int not null identity(1,1) primary key,
customer_name varchar(30) not null,
customer_address varchar(80),
customer_email varchar(30),
customer_number bigint check(len(customer_number)=10) not null,
created_by varchar(20) not null default system_user,
created_date date not null default getdate(),
modified_by varchar(20),
modified_date date,
deleted_by varchar(20),
deleted_date date,
);

create table showtime(
showtime_id int not null identity(1,1) primary key,
start_time varchar(30) not null,
end_time varchar(30) not null,
ticket_price_rs int,
screen_id int foreign key(screen_id) references screen(screen_id),
movie_id int foreign key(movie_id) references movie(movie_id)
)

create table seat(
seat_id int not null identity(1,1) primary key,
seat_number int not null,
seat_row_number int not null,
seat_type varchar(20),
availablity varchar(10),
screen_id int foreign key(screen_id) references screen(screen_id)
)

create table payment(
payment_id int not null identity(1,1) primary key,
payment_type varchar(40) not null,
amount_rs int not null,
payment_datetime date default getdate(),
booking_id int foreign key(booking_id) references booking(booking_id)
)

create table cancellation(
cancellation_id int not null identity(1,1) primary key,
cancellation_datetime date default getdate(),
booking_id int foreign key(booking_id) references booking(booking_id),
payment_id int foreign key(payment_id) references payment(payment_id)
)

create table refund(
refund_id int not null identity(1,1) primary key,
amount_rs int not null,
refund_datetime date default getdate(),
created_by varchar(20) not null default system_user,
created_date date not null default getdate(),
modified_by varchar(20),
modified_date date,
deleted_by varchar(20),
deleted_date date,
cancellation_id int foreign key(cancellation_id) references cancellation(cancellation_id)
)


alter table screen
alter column theatre_id int not null

alter table showtime
alter column screen_id int not null

alter table showtime
alter column movie_id int not null

alter table seat
alter column screen_id int not null

alter table booking
alter column showtime_id int not null

alter table booking
alter column seat_id int not null

alter table booking
alter column customer_id int not null

alter table payment
alter column booking_id int not null

alter table cancellation
alter column payment_id int not null

alter table cancellation
alter column booking_id int not null

alter table refund
alter column cancellation_id int not null