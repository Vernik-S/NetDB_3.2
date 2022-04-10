create table if not exists	Divisions(
	id serial primary key,
	name varchar(20) not null
);

create table if not exists	Workers(
	id serial primary key,
	name varchar(20) not null,
	boss_id integer not null references Workers (id),
	division_id integer not null references Divisions (id)
);