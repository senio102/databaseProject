create table House_Identifier(
	house_id int,
	primary key(house_id)
)

create table House_Price(
	house int,
	price int,
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table Bedroom_Count(
	house int,
	bedroom int,
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table Bathroom_Count(
	house int,
	bathroom int,
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table zip_code(
	house int,
	zip int,
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table city(
	house int,
	city varchar,
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table us_state(
	house int,
	us_state varchar,
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table house_sqft(
	house int,
	sqft int,
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)

create table year_built(
	house int,
	house_year int,
	foreign key(house) references House_Identifier(house_id),
	primary key(house)
)