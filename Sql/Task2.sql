CREATE TABLE instruments (
 instrument_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 instrument_type VARCHAR(200),
available BOOLEAN NOT NULL
);

ALTER TABLE instruments ADD CONSTRAINT PK_instruments PRIMARY KEY(instrument_id);

CREATE TABLE renting_instruments (
 instrument_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 student_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 price_per_month VARCHAR(200)
);

ALTER TABLE renting_instruments ADD CONSTRAINT PK_renting_instruments PRIMARY KEY(instrument_id,student_id);

CREATE TABLE students (
 student_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 person_number VARCHAR(12) NOT NULL,
 adress VARCHAR(200),
 name VARCHAR(200),
 city VARCHAR(200),
 zip_code VARCHAR(200),
 date_of_birth VARCHAR(200)
);

ALTER TABLE students ADD CONSTRAINT PK_students PRIMARY KEY(student_id);

CREATE TABLE student_mail (
 student_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
s_mail VARCHAR(200) NOT NULL
);

ALTER TABLE student_mail ADD CONSTRAINT PK_student_mail PRIMARY KEY(student_id,s_mail);

CREATE TABLE parent_mail (
 student_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 p_mail VARCHAR(200) NOT NULL
);

ALTER TABLE parent_mail ADD CONSTRAINT PK_parent_mail PRIMARY KEY(student_id,p_mail);

CREATE TABLE student_phone (
 student_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 s_phone_number VARCHAR(200) NOT NULL
);

ALTER TABLE student_phone ADD CONSTRAINT PK_student_phone PRIMARY KEY(student_id,s_phone_number);

CREATE TABLE parent_phone (
 student_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 p_phone_number VARCHAR(200) NOT NULL
);

ALTER TABLE parent_phone ADD CONSTRAINT PK_parent_phone PRIMARY KEY(student_id,p_phone_number);

CREATE TABLE siblings (
 student_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 sibling_pers VARCHAR(12) NOT NULL
);

ALTER TABLE siblings ADD CONSTRAINT PK_siblings PRIMARY KEY(student_id,sibling_pers);

CREATE TABLE student_lesson (
 student_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 lesson_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL
);

ALTER TABLE student_lesson ADD CONSTRAINT PK_student_lesson PRIMARY KEY(student_id,lesson_id);

CREATE TABLE lesson (
 lesson_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 room_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 instructor_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 instrument VARCHAR(200),
 lesson_start VARCHAR(200),
 lesson_end VARCHAR(200),
 gnere VARCHAR(200),
 skill_level VARCHAR(200),
 min_student_amount VARCHAR(200),
 max_student_amount VARCHAR(200),
 price_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY(lesson_id);

CREATE TABLE price_scheme (
 price_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 lesson_type VARCHAR(200) NOT NULL,
 skill_level VARCHAR(200),
 teacher_pay VARCHAR(200),
 sale VARCHAR(200)
);

ALTER TABLE price_scheme ADD CONSTRAINT PK_price_scheme PRIMARY KEY(price_id);

CREATE TABLE classrooms (
 room_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 adress VARCHAR(200),
 zip_code VARCHAR(200)
);

ALTER TABLE classrooms ADD CONSTRAINT PK_classrooms PRIMARY KEY(room_id);

CREATE TABLE instructors (
 instructor_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 person_number VARCHAR(200) NOT NULL,
 adress VARCHAR(200),
 name VARCHAR(200),
 zip_code VARCHAR(200),
 date_of_birth VARCHAR(200)
);

ALTER TABLE instructors ADD CONSTRAINT PK_instructors PRIMARY KEY(instructor_id);

CREATE TABLE instructor_instrument (
 instructor_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 instrument VARCHAR(200)
);

ALTER TABLE instructor_instrument ADD CONSTRAINT PK_instructor_instrument PRIMARY KEY(instructor_id);

CREATE TABLE instructor_mail (
 instructor_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 i_mail VARCHAR(200) NOT NULL
);

ALTER TABLE instructor_mail ADD CONSTRAINT PK_instructor_mail PRIMARY KEY(instructor_id,i_mail);

CREATE TABLE instructor_phone (
 instructor_id INT_GENERATED_ALWAYS_AS_IDENTITY NOT NULL,
 i_phone_number VARCHAR(200) NOT NULL
);

ALTER TABLE instructor_phone ADD CONSTRAINT PK_instructor_phone PRIMARY KEY(instructor_id,i_phone_number);