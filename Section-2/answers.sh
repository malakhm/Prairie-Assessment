CREATE TABLE Mentors (
    SSN Varchar(30) PRIMARY KEY
    f_name VARCHAR(30) NOT NULL
    l_name VARCHAR(30) NOT NULL
    DOB DATE NOT NULL
    s_level VARCHAR(30) NOT NULL
    salary INT 
    office VARCHAR(30)
    topic VARCHAR(30)
)

INSERT INTO Mentors VALUES('M1234','Malak','Hamwi','18/07/2002','senior',3000,'blue office','python')
INSERT INTO Mentors VALUES('M5678','Malak','Hamwi','18/07/2002','senior',3000,'blue office','html')
INSERT INTO Mentors VALUES('M8904','Malak','Hamwi','18/07/2002','senior',3000,'blue office','js')
INSERT INTO Mentors VALUES('M1632','Malak','Hamwi','18/07/2002','senior',3000,'blue office','css')


CREATE TABLE Departements(
    departement_id INT NOT NULL PRIMARY KEY
    name VARCHAR(30) NOT NULL
    office VARCHAR(30) NOT NULL
    topic VARCHAR(30) NOT NULL

)

INSERT INTO Departments VALUES(1,'life SKills','white office','english')
INSERT INTO Departments VALUES(2,'programming','white office','javascript')
INSERT INTO Departments VALUES(3,'tech','white office','css')
INSERT INTO Departments VALUES(4,'design','white office','figma')


CREATE TABLE Cohort(
    Cohort_id INT NOT NULL PRIMARY KEY
    number INT NOT NULL
    start_date DATE NOT NULL
    end_date DATE NOT NULL
)

INSERT INTO Cohort VALUES(11,01,'01/08/2023','01/02/2044')
INSERT INTO Cohort VALUES(12,02,'01/08/2023','01/02/2034')
INSERT INTO Cohort VALUES(13,03,'01/08/2023','01/02/2014')
INSERT INTO Cohort VALUES(14,04,'01/08/2023','01/02/2074')


CREATE TABLE Topics(
    topic_id INT NOT NULL PRIMARY KEY
    title VARCHAR(30) NOT NULL
    description VARCHAR(30) NOT NULL
)

INSERT INTO Topics VALUES(21,'tech101','ALL ABOUT TECH')
INSERT INTO Topics VALUES(31,'tech101','ALL ABOUT TECH')
INSERT INTO Topics VALUES(41,'READ101','ALL ABOUT reading')
INSERT INTO Topics VALUES(51,'ENG01','ALL ABOUT ENGlISH')


CREATE TABLE Students(
    ssn VARCHAR(30) NOT NULL PRIMARY KEY
    student_no INT NOT NULL
    f_name VARCHAR(30) NOT NULL
    l_name VARCHAR(30) NOT NULL
    DOB DATE 
    skills VARCHAR(255)
)

INSERT INTO Students VALUES ('S3321',109,'Badih','Bahij','18/07/2002','writing', 'fast learner')
INSERT INTO Students VALUES ('S8321',108,'ewv','Bahij','18/07/2002','writing', 'fast learner')
INSERT INTO Students VALUES ('S6721',106,'Badih','koussa','18/07/2002','writing', 'fast learner')
INSERT INTO Students VALUES ('S9391',104,'rebih','Bahij','18/07/2002','writing', 'fast learner')

# ===============================================================================================================
#  Find the first name, last name, and rank for all mentors at Codi
SELECT f_name, l_name, s_level 
FROM Mentors

# Find all instructors at office ‘333’
SELECT *
FROM Mentors
WHERE office == '333'

# Find all instructors who earn greater than $1000
SELECT * 
FROM Mentors
WHERE salary > 1000

#  Find the first and last name of all instructors for the department named “English & Life Skills”

SELECT f_name, l_name
FROM Mentors 
OUTER JOIN Department
ON Department.name == “English & Life Skills”


# Find the student number of all students having the “Development” skill 

SELECT student_no
FROM Students
WHERE skills == 'Development'


# Find the student SSN of all students having the “Development” skill
SELECT ssn 
FROM Students
WHERE skills == 'Development'