--Language
Insert into resource_hopper_language (language_id,language_name)
	values (	1,
				'English');

Insert into resource_hopper_language (language_id,language_name)
	values (	2,
				'Mandarin');

	Insert into resource_hopper_language (language_id,language_name)
	values (	3,
				'Farsi');

Insert into resource_hopper_language (language_id,language_name)
	values (	4,
				'Hindi');

Insert into resource_hopper_language (language_id,language_name)
	values (	5,
				'Arabic');


--TimeZone
Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	1,
				'UTC-12:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	2,
				'UTC-11:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	3,
				'UTC-10:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	4,
				'UTC-09:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	5,
				'UTC-08:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	6,
				'UTC-08:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	7,
				'UTC-06:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	8,
				'UTC-05:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	9,
				'UTC-04:00');


Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	10,
				'UTC-03:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	11,
				'UTC-02:00');


Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	12,
				'UTC-01:00');


Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	13,
				'UTC 00:00');


Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	14,
				'UTC+01:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	15,
				'UTC+02:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	16,
				'UTC+03:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	17,
				'UTC+04:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	18,
				'UTC+05:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	19,
				'UTC+06:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	20,
				'UTC+07:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	21,
				'UTC+08:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	22,
				'UTC+09:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	23,
				'UTC+10:00');

Insert into resource_hopper_timezone (timezone_id, timezone_name)
	values (	24,
				'UTC+11:00');






-- Insert Data in Skill Table

Insert into resource_hopper_skill (skill_id, skill_name, skill_description)
	values (1, 'CS633 - Requirements', 'CS633 - Requirements');

Insert into resource_hopper_skill (skill_id, skill_name, skill_description)
	values (2, 'CS633 - PM', 'CS633 - PM');

Insert into resource_hopper_skill (skill_id, skill_name, skill_description)
	values (3, 'CS633 - Coding', 'CS633 - Coding');

Insert into resource_hopper_skill (skill_id, skill_name, skill_description)
	values (4, 'CS633 - Testing', 'CS633 - Testing');

Insert into resource_hopper_skill (skill_id, skill_name, skill_description)
	values (5, 'CS633 - UX', 'CS633 - UX');




--Insert Data into Manager Table

Insert into resource_hopper_manager (manager_id, manager_fname, manager_lname)
	values (	1,
				'John',
				'Doe');

Insert into resource_hopper_manager(manager_id, manager_fname, manager_lname)
	values (	2,
				'Sally',
				'Smith');

Insert into resource_hopper_manager (manager_id, manager_fname, manager_lname)
	values (	3,
				'Pete',
				'Peterson');

Insert into resource_hopper_manager (manager_id, manager_fname, manager_lname)
	values (	4,
				'Elsa',
				'Frozen');

Insert into resource_hopper_manager (manager_id, manager_fname, manager_lname)
	values (	5,
				'Bruce',
				'Wayne');






-- Insert Data Into Resource Table

Insert into resource_hopper_resource (resource_id, resource_fname, resource_lname,   language_id, timezone_id)
	values (	1,
				'Xiaoqing',
				'Ding',
				
				1,
				24);

Insert into resource_hopper_resource (resource_id, resource_fname, resource_lname,   language_id, timezone_id)
	values (	2,
				'Nishitha',
				'Ballupet',
				
				1,
				5);

Insert into resource_hopper_resource (resource_id, resource_fname, resource_lname,   language_id, timezone_id)
	values (	3,
				'AJ',
				'Shah',
				
				1,
				11);

Insert into resource_hopper_resource (resource_id, resource_fname, resource_lname,   language_id, timezone_id)
	values (	4,
				'Ramya',
				'Bhat',
				
				1,
				20);

Insert into resource_hopper_resource (resource_id, resource_fname, resource_lname,   language_id, timezone_id)
	values (	5,
				'Alvin',
				'Brewster',
				
				1,
				1);

Insert into resource_hopper_resource (resource_id, resource_fname, resource_lname,   language_id, timezone_id)
	values (	6,
				'Joe',
				'Couture',
				
				2,
				6);

-- Insert into resource_hopper_project table

Insert into resource_hopper_project (project_id, manager_id, project_description)
	values (	1,
				5,
				'Team 1');

Insert into resource_hopper_project (project_id, manager_id, project_description)
	values (	2,
				4,
				'Team 2');

Insert into resource_hopper_project (project_id, manager_id, project_description)
	values (	3,
				2,
				'Team 3');

-- Insert Data into Resource_Skill table

Insert into resource_hopper_resourceskill (resource_id, skill_id, Resource_skill_level)
	values (	1,
				1,
				5);

Insert into resource_hopper_resourceskill (resource_id, skill_id, Resource_skill_level)
	values (	3,
				1,
				5);

Insert into resource_hopper_resourceskill (resource_id, skill_id, Resource_skill_level)
	values (	2,
				1,
				5);

Insert into resource_hopper_resourceskill (resource_id, skill_id, Resource_skill_level)
	values (	1,
				2,
				4);

Insert into resource_hopper_resourceskill (resource_id, skill_id, Resource_skill_level)
	values (	3,
				4,
				4);

Insert into resource_hopper_resourceskill (resource_id, skill_id, Resource_skill_level)
	values (	2,
				3,
				4);

Insert into resource_hopper_resourceskill (resource_id, skill_id,Resource_skill_level)
	values (	1,
				4,
				2);

Insert into resource_hopper_resourceskill (resource_id, skill_id, Resource_skill_level)
	values (	3,
				5,
				2);

Insert into resource_hopper_resourceskill (resource_id, skill_id, Resource_skill_level)
	values (	2,
				5,
				3);

Insert into resource_hopper_resourceskill (resource_id, skill_id, Resource_skill_level)
	values (	6,
				1,
				2);

Insert into resource_hopper_resourceskill (resource_id, skill_id, Resource_skill_level)
	values (	6,
				2,
				2);

Insert into resource_hopper_resourceskill (resource_id, skill_id, Resource_skill_level)
	values (	6,
				4,
				1);

Insert into resource_hopper_projectteam (project_id,resource_id)
	values (	1,
				1);

Insert into resource_hopper_projectteam (project_id,resource_id)
	values (	1,
				2);

Insert into resource_hopper_projectteam (project_id,resource_id)
	values (	1,
				3);

Insert into resource_hopper_projectteam (project_id,resource_id)
	values (	2,
				4);

Insert into resource_hopper_projectteam (project_id,resource_id)
	values (	2,
				5);

Insert into resource_hopper_projectteam (project_id,resource_id)
	values (	2,
				6);



