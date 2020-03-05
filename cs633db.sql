-- Create CS633 Tables

create table language(
	language_id int not null,
	language_name varchar(64),

	primary key (language_id));

create table timezone(
	timezone_id int not null,
	timezone_name varchar(64),

	primary key (timezone_id));

create table skill(
	skill_id int not null,
	skill_name varchar(64) not null,
	skill_description varchar(64),

	primary key(skill_id)
	);

create table manager(
	manager_id int not null,
	manager_lname varchar(64),
	manager_fname varchar(64),

	primary key(manager_id)
	);

create table resource(
	resource_id int not null,
	resource_lname varchar(64) not null,
	resource_fname varchar(64) not null,



	timezone_id int,
	language_id int,

	primary key(resource_id),
	foreign key(timezone_id) references timezone(timezone_id),
	foreign key(language_id) references language(language_id)
	);

create table resource_skill(
	resource_id int not null,
	skill_id int not null,
	resource_skill_level int not null,

	foreign key(resource_id) references resource(resource_id),
	foreign key(skill_id) references skill(skill_id),

	primary key(resource_id,skill_id)
	);

create table project(
	project_id int not null,
	manager_id int not null,
	project_description varchar(64),

	primary key(project_id),
	foreign key(manager_id) references manager(manager_id)
	);

create table project_team(
	project_id int not null,
	resource_id int not null,

	primary key(project_id,resource_id),
	foreign key(project_id) references project(project_id),
	foreign key(resource_id) references resource(resource_id)
	);




