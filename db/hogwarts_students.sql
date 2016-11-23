DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE houses (
  id SERIAL8 primary key,
  name VARCHAR(255),
  logo VARCHAR(255)
);

CREATE TABLE students (
  id SERIAL8 primary key,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  age INT2,
  house_id INT8 references houses(id)
);

