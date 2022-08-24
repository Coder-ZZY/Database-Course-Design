/**
*@DatabaseName stuinfosystem.schema
*@Author ZZY
*@Date 2022/7/10
**/

-- 创建数据库
CREATE DATABASE IF NOT EXISTS stuinfosystem;
ALTER DATABASE stuinfosystem
  DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
use stuinfosystem;
/*admin的表结构
其中admin_id是主键*/
DROP TABLE IF EXISTS admin;
CREATE TABLE admin (
  admin_id varchar(6) not null,
  admin_name varchar(5) not null,
  admin_pass varchar(18) not null,
  PRIMARY KEY (admin_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*class表结构
其中class_id是主键*/
DROP TABLE IF EXISTS class;
CREATE TABLE class
(
  class_id varchar(6) not null,
  class_name varchar(25) not null,
  PRIMARY KEY(class_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*student表结构
其中stu_id是主键，stu_class_id是外码*/
DROP TABLE IF EXISTS student;
CREATE TABLE student(
  stu_id varchar(12) not null,
  stu_name varchar(5) not null,
  stu_pass varchar(18) not null DEFAULT '123456',
  stu_class_id varchar(6),
  stu_sex varchar(1)
    check(stu_sex in ('男','女')),
  stu_tel varchar(11) DEFAULT NULL,
  PRIMARY KEY (stu_id),
  foreign key(stu_class_id) references class(class_id)
    on delete set null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*teacher表结构
其中tea_id是主码*/
DROP TABLE IF EXISTS teacher;
CREATE TABLE teacher(
  tea_id varchar(12) not null,
  tea_name varchar(5) not null,
  tea_pass varchar(18) not null DEFAULT '123456',
  tea_sex varchar(1) 
      check(tea_sex in ('男','女')),
  tea_tel varchar(11) DEFAULT NULL,
  PRIMARY KEY (tea_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*course表结构
其中course_id是主键*/
DROP TABLE IF EXISTS course;
CREATE TABLE course(
  course_id varchar(6) not null,
  teacher_id varchar(12),
  course_name varchar(25) not null,
  course_term varchar(18) not null,
  PRIMARY KEY (course_id),
  foreign key(teacher_id) references teacher(tea_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*unqualified_stu表结构
其中unqualified_id是主键*/
DROP TABLE IF EXISTS unqualified_stu;
CREATE TABLE unqualified_stu(
  unqualified_id int UNSIGNED not null AUTO_INCREMENT,
  stu_id varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci not null,
  course_id varchar(6) not null,
  grade int(11) default 0
    check( grade >= 0 and grade <= 100 ),
  UNIQUE(stu_id,course_id),
  PRIMARY KEY(unqualified_id),
  foreign key(stu_id) references student(stu_id)
            on delete cascade,
  foreign key(course_id) references course(course_id)
            on delete cascade
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*takes表结构
    其中takes_id、stu_id和course_id作为候选码
    选用了takes_id作为了主码,stu_id和course_id为外码 */
DROP TABLE IF EXISTS takes;
CREATE TABLE takes(
  takes_id int UNSIGNED not null AUTO_INCREMENT,
  stu_id varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci not null,
  course_id varchar(6) not null,
  grade int(11) default 0
      check ( grade >=0 and grade <= 100 ),
  UNIQUE(stu_id,course_id),
  PRIMARY KEY (takes_id),
  foreign key(stu_id) references student(stu_id)
                on delete cascade,
  foreign key(course_id) references course(course_id)
                  on delete cascade
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------------------------------------- --
--                                    华丽的分割线                                          --
-- --------------------------------------------------------------------------------------- --
-- 视图定义
CREATE VIEW  stu_class AS(select `student`.`stu_id` AS `stu_id`,
                        `student`.`stu_name` AS `stu_name`,
                        `student`.`stu_pass` AS `stu_pass`,
                        `student`.`stu_class_id` AS `stu_class_id`,
                        `student`.`stu_sex` AS `stu_sex`,
                        `student`.`stu_tel` AS `stu_tel`,
                        `class`.`class_id` AS `class_id`,
                        `class`.`class_name` AS `class_name` 
                        from (`student` join `class`) where (`student`.`stu_class_id` = `class`.`class_id`));
CREATE VIEW tea_course AS(select 
                          `course`.`course_id` AS `course_id`,
                          `course`.`teacher_id` AS `teacher_id`,
                          `course`.`course_name` AS `course_name`,
                          `course`.`course_term` AS `course_term`,
                          `teacher`.`tea_id` AS `tea_id`,
                          `teacher`.`tea_name` AS `tea_name`,
                          `teacher`.`tea_pass` AS `tea_pass`,
                          `teacher`.`tea_sex` AS `tea_sex`,
                          `teacher`.`tea_tel` AS `tea_tel` 
                          from (`course` join `teacher`) where (`teacher`.`tea_id` = `course`.`teacher_id`));
CREATE VIEW takes_stu_course AS(SELECT
	                                student.stu_id AS stu_id, 
	                                student.stu_name AS stu_name, 
	                                tea_course.course_name AS course_name, 
	                                tea_course.course_term AS course_term, 
	                                tea_course.tea_name AS tea_name, 
	                                takes.grade AS grade
                                FROM
	                              (
	                              	(
	                              		student
	                              		join
	                              		takes
	                              		ON 
	                              			(
	                              				(
	                              					student.stu_id = takes.stu_id
	                              				)
	                              			)
	                              	)
	                              	join
	                              	tea_course
	                              	ON 
	                              		(
	                              			(
	                              				tea_course.course_id = takes.course_id
	                              			)
	                              		)
	                              ));
-- --------------------------------------------------------------------------------------- --
--                                    华丽的分割线                                          --
-- --------------------------------------------------------------------------------------- --
-- 使用触发器添加不及格学生至unqualified_stu表中
create trigger addunqualified_stu after insert 
on takes for each row
begin
  if(new.grade<60) then
  INSERT into unqualified_stu(stu_id,course_id,grade)
      values(new.stu_id,new.course_id,new.grade);
  end if;
end;

create trigger updateunqualified_stu after update 
on takes for each row
begin
  if(new.grade<60) then
    if exists(select * from unqualified_stu ustu where ustu.stu_id = new.stu_id and ustu.course_id = new.course_id)  then
      update unqualified_stu ustu set ustu.grade = new.grade where ustu.stu_id = new.stu_id and ustu.course_id = new.course_id;
    else
        INSERT into unqualified_stu(stu_id,course_id,grade)
          values(new.stu_id,new.course_id,new.grade);
    end if;
  else if(new.grade >= 60 && old.grade < 60) then 
			delete from unqualified_stu where unqualified_stu.stu_id = new.stu_id and unqualified_stu.course_id = new.course_id;
			end if;
  end if;
end;
-- --------------------------------------------------------------------------------------- --
--                                    华丽的分割线                                          --
-- --------------------------------------------------------------------------------------- --
CREATE UNIQUE INDEX admin_index ON admin(admin_id);
CREATE UNIQUE INDEX class_index ON class(class_id);
CREATE UNIQUE INDEX stu_index ON student(stu_id);
CREATE INDEX class_id_index ON student(stu_class_id);
CREATE UNIQUE INDEX tea_index ON teacher(tea_id);
CREATE UNIQUE INDEX course_index ON course(course_id);
CREATE INDEX tea_id_index ON course(teacher_id);
CREATE UNIQUE INDEX takes_index ON takes(takes_id);
CREATE INDEX course_index ON takes(course_id);
CREATE UNIQUE INDEX stu_course ON takes(stu_id,course_id);
CREATE UNIQUE INDEX ustu_index ON unqualified_stu(unqualified_id);
CREATE INDEX ucourse_index ON unqualified_stu(course_id);
CREATE UNIQUE INDEX stu_course ON unqualified_stu(stu_id,course_id);