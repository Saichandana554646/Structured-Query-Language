USE cdg_hyd_jfs_058;
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