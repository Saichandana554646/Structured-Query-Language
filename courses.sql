USE cdg_hyd_jfs_058;
DROP TABLE COURSES;
CREATE TABLE COURSES(
    course_id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    course_code VARCHAR(15) NOT NULL,
    course_title VARCHAR(150) NOT NULL,
    category VARCHAR(60) NOT NULL,
    duration_hours DECIMAL(5, 1) NOT NULL,
    fee DECIMAL(10, 2) DEFAULT 0.00 NOT NULL,
    delivery_mode VARCHAR(20) DEFAULT 'ONLINE' NOT NULL,
    course_status VARCHAR(20) DEFAULT 'DRAFT' NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,

    CONSTRAINT `pk_COURSES_course_id` PRIMARY KEY (course_id),
    CONSTRAINT `uq_course_code` UNIQUE (course_code),
    CONSTRAINT `chk_courses_duration` CHECK (duration_hours > 0),
    CONSTRAINT `chk_courses_fee` CHECK (fee >= 0),
    CONSTRAINT `chk_courses_delivery_mode` CHECK (delivery_mode IN ('ONLINE', 'CLASSROOM', 'HYBRID')),
    CONSTRAINT `chk_courses_status` CHECK (course_status IN ('DRAFT', 'ACTIVE', 'INACTIVE', 'ARCHIVED'))
);

SELECT * FROM COURSES;

INSERT INTO COURSES (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status) VALUES('CRS-JAVA-101', 'Java Fundamentals', 'Programming', 40.0, 6000.00, 'CLASSROOM', 'ACTIVE');

INSERT INTO COURSES (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status) VALUES('CRS-SQL-102', 'MySQL Essentials', 'Database', 32.0, 4500.00, 'ONLINE', 'ACTIVE');

INSERT INTO COURSES (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status) VALUES('CRS-WEB-103', 'Responsive Web Design', 'Web Development', 28.0, 0.00, 'ONLINE', 'DRAFT');

INSERT INTO COURSES (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status) VALUES('CRS-TST-104', 'Software Testing Basics', 'Testing', 24.0, 3500.00, 'HYBRID', 'ACTIVE');

INSERT INTO COURSES (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status) VALUES('CRS-OLD-105', 'Legacy Systems Overview', 'Technology', 12.0, 2000.00, 'ONLINE', 'ARCHIVED');

SELECT * FROM COURSES;


