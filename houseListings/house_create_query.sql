create table House_Identifier(
	house_id int IDENTITY(1,1),
	primary key(house_id)
)

create table House_Price(
	house int(10),
	price int(9),
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table Bedroom_Count(
	house int(10),
	bedroom int(2),
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table Bathroom_Count(
	house int(10),
	bathroom int(2),
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table zip_code(
	house int(10),
	zip int(5),
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table city(
	house int(10),
	city varchar(40),
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table us_state(
	house int(10),
	state varchar(2),
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table house_sqft(
	house int(10),
	sqft int(5),
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table year_built(
	house int(10),
	house_year int(4),
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)