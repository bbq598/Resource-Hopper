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






-- Insert Data in Skill Table

Insert into skill (skill_id, skill_name, skill_description)
	values (1, 'CS633 - Requirements', 'CS633 - Requirements');

Insert into skill (skill_id, skill_name, skill_description)
	values (2, 'CS633 - PM', 'CS633 - PM');

Insert into skill (skill_id, skill_name, skill_description)
	values (3, 'CS633 - Coding', 'CS633 - Coding');

Insert into skill (skill_id, skill_name, skill_description)
	values (4, 'CS633 - Testing', 'CS633 - Testing');

Insert into skill (skill_id, skill_name, skill_description)
	values (5, 'CS633 - UX', 'CS633 - UX');



--Insert Data into Manager Table

Insert into manager (manager_id, manager_fname, manager_lname)
	values (	1,
				'John',
				'Doe');

Insert into manager (manager_id, manager_fname, manager_lname)
	values (	2,
				'Sally',
				'Smith');

Insert into manager (manager_id, manager_fname, manager_lname)
	values (	3,
				'Pete',
				'Peterson');

Insert into manager (manager_id, manager_fname, manager_lname)
	values (	4,
				'Elsa',
				'Frozen');

Insert into manager (manager_id, manager_fname, manager_lname)
	values (	5,
				'Bruce',
				'Wayne');

-- Insert Into Recruiter Table


-- Insert Data Into Resource Table

Insert into resource (resource_id, resource_fname, resource_lname,   language_id, timezone_id)
	values (	1,
				'Xiaoqing',
				'Ding',
				
				1,
				2);

Insert into resource (resource_id, resource_fname, resource_lname,   language_id, timezone_id)
	values (	2,
				'Nishitha',
				'Ballupet',
				
				1,
				5);

Insert into resource (resource_id, resource_fname, resource_lname,   language_id, timezone_id)
	values (	3,
				'AJ',
				'Shah',
				
				1,
				11);

Insert into resource (resource_id, resource_fname, resource_lname,   language_id, timezone_id)
	values (	4,
				'Ramya',
				'Bhat',
				
				1,
				28);

Insert into resource (resource_id, resource_fname, resource_lname,   language_id, timezone_id)
	values (	5,
				'Alvin',
				'Brewster',
				
				1,
				1);

Insert into resource (resource_id, resource_fname, resource_lname,   language_id, timezone_id)
	values (	6,
				'Joe',
				'Couture',
				
				2,
				6);

-- Insert into project table

Insert into project (project_id, manager_id, project_description)
	values (	1,
				5,
				'Company webpage');

Insert into project (project_id, manager_id, project_description)
	values (	2,
				4,
				'Class project');

Insert into project (project_id, manager_id, project_description)
	values (	3,
				2,
				'Shopping cart');

-- Insert Data into Resource_Skill table

Insert into Resource_skill (resource_id, skill_id, Resource_skill_level)
	values (	1,
				1,
				5);

Insert into Resource_skill (resource_id, skill_id, Resource_skill_level)
	values (	3,
				1,
				5);

Insert into Resource_skill (resource_id, skill_id, Resource_skill_level)
	values (	2,
				1,
				5);

Insert into Resource_skill (resource_id, skill_id, Resource_skill_level)
	values (	1,
				2,
				4);

Insert into Resource_skill (resource_id, skill_id, Resource_skill_level)
	values (	3,
				4,
				4);

Insert into Resource_skill (resource_id, skill_id, Resource_skill_level)
	values (	2,
				7,
				4);

Insert into Resource_skill (resource_id, skill_id, Resource_skill_level)
	values (	1,
				4,
				2);

Insert into Resource_skill (resource_id, skill_id, Resource_skill_level)
	values (	3,
				5,
				2);

Insert into Resource_skill (resource_id, skill_id, Resource_skill_level)
	values (	2,
				3,
				3);

Insert into Resource_skill (resource_id, skill_id, Resource_skill_level)
	values (	6,
				1,
				2);

Insert into Resource_skill (resource_id, skill_id, Resource_skill_level)
	values (	6,
				2,
				2);

Insert into Resource_skill (resource_id, skill_id, Resource_skill_level)
	values (	6,
				4,
				1);

Insert into project_team (project_id,resource_id)
	values (	1,
				1);

Insert into project_team (project_id,resource_id)
	values (	1,
				2);

Insert into project_team (project_id,resource_id)
	values (	1,
				3);

Insert into project_team (project_id,resource_id)
	values (	2,
				4);

Insert into project_team (project_id,resource_id)
	values (	2,
				5);

Insert into project_team (project_id,resource_id)
	values (	2,
				6);

Insert into language (language_id,language_name)
	values (	1,
				'English');

Insert into language (language_id,language_name)
	values (	2,
				'Mandarin');

	Insert into language (language_id,language_name)
	values (	3,
				'Farsi');

Insert into language (language_id,language_name)
	values (	4,
				'Hindi');

Insert into language (language_id,language_name)
	values (	5,
				'Arabic');

Insert into timezone (timezone_id, timezone_name)
	values (	1,
				'UTC-12:00');

Insert into timezone (timezone_id, timezone_name)
	values (	2,
				'UTC-11:00');

Insert into timezone (timezone_id, timezone_name)
	values (	3,
				'UTC-10:00');

Insert into timezone (timezone_id, timezone_name)
	values (	4,
				'UTC-09:00');

Insert into timezone (timezone_id, timezone_name)
	values (	5,
				'UTC-08:00');

Insert into timezone (timezone_id, timezone_name)
	values (	6,
				'UTC-08:00');

Insert into timezone (timezone_id, timezone_name)
	values (	7,
				'UTC-06:00');

Insert into timezone (timezone_id, timezone_name)
	values (	8,
				'UTC-05:00');

Insert into timezone (timezone_id, timezone_name)
	values (	9,
				'UTC-04:00');


Insert into timezone (timezone_id, timezone_name)
	values (	10,
				'UTC-03:00');

Insert into timezone (timezone_id, timezone_name)
	values (	11,
				'UTC-02:00');


Insert into timezone (timezone_id, timezone_name)
	values (	12,
				'UTC-01:00');


Insert into timezone (timezone_id, timezone_name)
	values (	13,
				'UTC 00:00');


Insert into timezone (timezone_id, timezone_name)
	values (	14,
				'UTC+01:00');

Insert into timezone (timezone_id, timezone_name)
	values (	15,
				'UTC+02:00');

Insert into timezone (timezone_id, timezone_name)
	values (	16,
				'UTC+03:00');

Insert into timezone (timezone_id, timezone_name)
	values (	17,
				'UTC+04:00');

Insert into timezone (timezone_id, timezone_name)
	values (	18,
				'UTC+05:00');

Insert into timezone (timezone_id, timezone_name)
	values (	19,
				'UTC+06:00');

Insert into timezone (timezone_id, timezone_name)
	values (	20,
				'UTC+07:00');

Insert into timezone (timezone_id, timezone_name)
	values (	21,
				'UTC+08:00');

Insert into timezone (timezone_id, timezone_name)
	values (	22,
				'UTC+09:00');

Insert into timezone (timezone_id, timezone_name)
	values (	23,
				'UTC+10:00');

Insert into timezone (timezone_id, timezone_name)
	values (	24,
				'UTC+11:00');































