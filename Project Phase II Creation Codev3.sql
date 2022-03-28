CREATE TABLE DEPARTMENT(
Dep_id number(10) CONSTRAINT Dep_id_pk PRIMARY KEY,
Department_name varchar(30),
Supervisor_name varchar(30)
);
INSERT ALL 
INTO DEPARTMENT(Dep_id, Department_name, Supervisor_name) VALUES ('5000','PR','Mark Johnson')
INTO DEPARTMENT(Dep_id, Department_name, Supervisor_name) VALUES ('5001','Marketing','Cheryl Dickenson')
INTO DEPARTMENT(Dep_id, Department_name, Supervisor_name) VALUES ('5002','IT','Lisa Clements')
INTO DEPARTMENT(Dep_id, Department_name, Supervisor_name) VALUES ('5003','Human Resources','Joey Parker')
INTO DEPARTMENT(Dep_id, Department_name, Supervisor_name) VALUES ('5004','Operations','Ted Mosby')
INTO DEPARTMENT(Dep_id, Department_name, Supervisor_name) VALUES ('5005','Sales','Dwight Shrute')
INTO DEPARTMENT(Dep_id, Department_name, Supervisor_name) VALUES ('5006','Customer Service','Pamela Brown')
INTO DEPARTMENT(Dep_id, Department_name, Supervisor_name) VALUES ('5007','Legal','Jill Bonora')
INTO DEPARTMENT(Dep_id, Department_name, Supervisor_name) VALUES ('5008','Billing','John Smith')
INTO DEPARTMENT(Dep_id, Department_name, Supervisor_name) VALUES ('5009','Product Development','Lily Appleseed')
select * from dual;

CREATE TABLE CONTAINS(
Cont_id number(10) CONSTRAINT Cont_id_pk PRIMARY KEY,
Dep_id number(10),
Position_id number(10),
Creation_date DATE,
Available varchar(10)
);
INSERT ALL
INTO CONTAINS (Cont_id, Dep_id, Position_id, Creation_date, Available) VALUES ('12', '5000', '101', TO_DATE('2020-06-23', 'YYYY-MM-DD'), 'Open')
INTO CONTAINS (Cont_id, Dep_id, Position_id, Creation_date, Available) VALUES ('13', '5001', '102', TO_DATE('2019-09-12', 'YYYY-MM-DD'), 'Closed')
INTO CONTAINS (Cont_id, Dep_id, Position_id, Creation_date, Available) VALUES ('14', '5002', '103', TO_DATE('2020-01-16', 'YYYY-MM-DD'), 'Open')
INTO CONTAINS (Cont_id, Dep_id, Position_id, Creation_date, Available) VALUES ('15', '5003', '104', TO_DATE('2021-02-07', 'YYYY-MM-DD'), 'Open')
INTO CONTAINS (Cont_id, Dep_id, Position_id, Creation_date, Available) VALUES ('16', '5004', '105', TO_DATE('2021-03-15', 'YYYY-MM-DD'), 'Open')
INTO CONTAINS (Cont_id, Dep_id, Position_id, Creation_date, Available) VALUES ('17', '5005', '106', TO_DATE('2020-08-12', 'YYYY-MM-DD'), 'Closed')
INTO CONTAINS (Cont_id, Dep_id, Position_id, Creation_date, Available) VALUES ('18', '5006', '107', TO_DATE('2020-04-13', 'YYYY-MM-DD'), 'Closed')
INTO CONTAINS (Cont_id, Dep_id, Position_id, Creation_date, Available) VALUES ('19', '5007', '108', TO_DATE('2020-08-24', 'YYYY-MM-DD'), 'Closed')
INTO CONTAINS (Cont_id, Dep_id, Position_id, Creation_date, Available) VALUES ('20', '5008', '109', TO_DATE('2021-08-02', 'YYYY-MM-DD'), 'Open')
INTO CONTAINS (Cont_id, Dep_id, Position_id, Creation_date, Available) VALUES ('21', '5009', '110', TO_DATE('2021-05-28', 'YYYY-MM-DD'), 'Open')
select * from dual;

CREATE TABLE POSITION(
Position_id number(10) CONSTRAINT Position_id_pk PRIMARY KEY,
Position_name varchar(40),
Position_Description varchar(50)
);

INSERT ALL
INTO POSITION (Position_id, Position_name, Position_Description ) VALUES ('101', 'Communications Manager', 'Creation and development of advertising')
INTO POSITION (Position_id, Position_name, Position_Description) VALUES ('102', 'Social Media Coordinator', 'Planning and implementing Media strategy')
INTO POSITION (Position_id, Position_name, Position_Description) VALUES ('103', 'IT Technician I', 'Fix, and maintain the hardware and software')
INTO POSITION (Position_id, Position_name, Position_Description) VALUES ('104', 'Operations Analyst', 'review policies & procedures to find areas of improvement')
INTO POSITION (Position_id, Position_name, Position_Description) VALUES ('105', 'Sales Associate', 'Focus on selling product')
INTO POSITION (Position_id, Position_name, Position_Description) VALUES ('106', 'Communications Manager', 'Creation and development of advertising')
INTO POSITION (Position_id, Position_name, Position_Description) VALUES ('107', 'Customer Service Rep', 'Support customers with issues')
INTO POSITION (Position_id, Position_name, Position_Description) VALUES ('108', 'Internal Counsel', 'Execute agreements and contracts on our behalf')
INTO POSITION (Position_id, Position_name, Position_Description) VALUES ('109', 'Accountant I', 'Monitoring spending and budgets')
INTO POSITION (Position_id, Position_name, Position_Description) VALUES ('110', 'Product Development Associate', 'Researching new products') 
select * from dual;

CREATE TABLE REQUIRES(
PosReq_id number(10) CONSTRAINT PosReq_id_pk PRIMARY KEY,
Position_id number(10),
Skill_id number(10),
Required_or_Preferred varchar(10)
);
INSERT ALL
INTO  REQUIRES(PosReq_id, Position_id, Skill_id, Required_or_Preferred) VALUES ('311', '101', '411', 'Required')
INTO  REQUIRES(PosReq_id, Position_id, Skill_id, Required_or_Preferred) VALUES ('312', '102', '412', 'Preferred')
INTO  REQUIRES(PosReq_id, Position_id, Skill_id, Required_or_Preferred) VALUES ('313', '103', '413', 'Preferred')
INTO  REQUIRES(PosReq_id, Position_id, Skill_id, Required_or_Preferred) VALUES ('314', '104', '414', 'Required')
INTO  REQUIRES(PosReq_id, Position_id, Skill_id, Required_or_Preferred) VALUES ('315', '105', '415', 'Required')
INTO  REQUIRES(PosReq_id, Position_id, Skill_id, Required_or_Preferred) VALUES ('316', '106', '416', 'Preferred')
INTO  REQUIRES(PosReq_id, Position_id, Skill_id, Required_or_Preferred) VALUES ('317', '107', '417', 'Required')
INTO  REQUIRES(PosReq_id, Position_id, Skill_id, Required_or_Preferred) VALUES ('318', '108', '418', 'Preferred')
INTO  REQUIRES(PosReq_id, Position_id, Skill_id, Required_or_Preferred) VALUES ('319', '109', '419', 'Required')
INTO  REQUIRES(PosReq_id, Position_id, Skill_id, Required_or_Preferred) VALUES ('320', '110', '420', 'Preferred')
select * from dual;

CREATE TABLE SKILLS(
Skill_id number(10) CONSTRAINT Skill_id_pk PRIMARY KEY,
Skill_name varchar(30),
Skill_description varchar(40)
);
INSERT ALL
INTO SKILLS (Skill_id, Skill_name, Skill_description) VALUES ('411', 'Interpersonal Skills', 'Written and Verbal Communication Skills')
INTO SKILLS (Skill_id, Skill_name, Skill_description) VALUES ('412', 'Marketing Skills', 'Experience with social media platforms')
INTO SKILLS (Skill_id, Skill_name, Skill_description) VALUES ('413', 'Problem-Solving Skills', 'Experience with Statistics')
INTO SKILLS (Skill_id, Skill_name, Skill_description) VALUES ('414', 'Management Skills', 'Experience with the managing workers')  
INTO SKILLS (Skill_id, Skill_name, Skill_description) VALUES ('415', 'Management Skills', 'Experience with coding SQL')
INTO SKILLS (Skill_id, Skill_name, Skill_description) VALUES ('416', 'Interpersonal Skills', 'Written and Verbal Communication Skills')
INTO SKILLS (Skill_id, Skill_name, Skill_description) VALUES ('417', 'Interpersonal Skills', 'Written and Verbal Communication Skills')
INTO SKILLS (Skill_id, Skill_name, Skill_description) VALUES ('418', 'Interpersonal Skills', 'Written and Verbal Communication Skills')
INTO SKILLS (Skill_id, Skill_name, Skill_description) VALUES ('419', 'Problem-Solving Skills', 'Experience with Microsoft Excel')
INTO SKILLS (Skill_id, Skill_name, Skill_description) VALUES ('420', 'Problem-Solving Skills', 'Experience with product development') 
select * from dual;

CREATE TABLE POSSESSES(
Possession_id number(10) CONSTRAINT Possession_id_pk PRIMARY KEY,
Skill_id number(10),
Applicant_id number(10),
Possession_Date Date
);
INSERT ALL
INTO POSSESSES (Possession_id, Skill_id, Applicant_id, Possession_Date) VALUES ('501','411','020', TO_DATE('2021-07-08' ,'YYYY-MM-DD'))
INTO POSSESSES (Possession_id, Skill_id, Applicant_id, Possession_Date) VALUES ('502','412','776', TO_DATE('2020-04-12' ,'YYYY-MM-DD'))
INTO POSSESSES (Possession_id, Skill_id, Applicant_id, Possession_Date) VALUES ('503','413','180', TO_DATE('2020-10-04' ,'YYYY-MM-DD'))
INTO POSSESSES (Possession_id, Skill_id, Applicant_id, Possession_Date) VALUES ('504','414','879', TO_DATE('2021-09-05' ,'YYYY-MM-DD'))
INTO POSSESSES (Possession_id, Skill_id, Applicant_id, Possession_Date) VALUES ('505','415','094', TO_DATE('2020-12-12' ,'YYYY-MM-DD'))
INTO POSSESSES (Possession_id, Skill_id, Applicant_id, Possession_Date) VALUES ('506','416','248', TO_DATE('2021-02-14' ,'YYYY-MM-DD'))
INTO POSSESSES (Possession_id, Skill_id, Applicant_id, Possession_Date) VALUES ('507','417','080', TO_DATE('2020-06-08' ,'YYYY-MM-DD'))
INTO POSSESSES (Possession_id, Skill_id, Applicant_id, Possession_Date) VALUES ('508','418','544', TO_DATE('2020-01-17' ,'YYYY-MM-DD'))
INTO POSSESSES (Possession_id, Skill_id, Applicant_id, Possession_Date) VALUES ('509','419','994', TO_DATE('2021-03-25' ,'YYYY-MM-DD'))
INTO POSSESSES (Possession_id, Skill_id, Applicant_id, Possession_Date) VALUES ('510','420','126', TO_DATE('2021-05-05' ,'YYYY-MM-DD'))
select * from dual;

CREATE TABLE APPLICANT(
Applicant_id number(10) CONSTRAINT Applicant_id_pk PRIMARY KEY,
Application_id number(10),
First_Name varchar(30),
Last_Name varchar(30),
SSN varchar(11),
Email varchar(30),
Date_of_Birth DATE,
Status varchar(12)
);
INSERT ALL
INTO APPLICANT (Applicant_id, Application_id, First_Name, Last_Name, SSN, Email, Date_of_Birth, Status) VALUES('020','1001','Jason','Ruiz','662-60-9402', 'jruiz@gmail.com', TO_DATE('1997-01-12', 'YYYY-MM-DD'),'In Progress')
INTO APPLICANT (Applicant_id, Application_id, First_Name, Last_Name, SSN, Email, Date_of_Birth, Status) VALUES('776','1002','Bobby','Richards','992-86-2806', 'brichards@yahoo.com', TO_DATE('1994-04-04', 'YYYY-MM-DD'),'In Progress')
INTO APPLICANT (Applicant_id, Application_id, First_Name, Last_Name, SSN, Email, Date_of_Birth, Status) VALUES('180','1003','Emily','Brookes','141-20-5470', 'e_brookes@aol.com', TO_DATE('1996-04-17', 'YYYY-MM-DD'),'In Progress')
INTO APPLICANT (Applicant_id, Application_id, First_Name, Last_Name, SSN, Email, Date_of_Birth, Status) VALUES('879','1004','Jennifer','Walters','661-45-9482', 'j.walters@gmail.com', TO_DATE('1997-10-29', 'YYYY-MM-DD'),'Denied')
INTO APPLICANT (Applicant_id, Application_id, First_Name, Last_Name, SSN, Email, Date_of_Birth, Status) VALUES('094','1005','Daniel','McDonald','900-23-3561', 'danmacdonald@gmail.com', TO_DATE('1990-02-25', 'YYYY-MM-DD'),'In Progress')
INTO APPLICANT (Applicant_id, Application_id, First_Name, Last_Name, SSN, Email, Date_of_Birth, Status) VALUES('248','1006','Brittany','Olivers','781-99-0231', 'bolivers@ymail.com', TO_DATE('1995-09-19', 'YYYY-MM-DD'),'In Progress')
INTO APPLICANT (Applicant_id, Application_id, First_Name, Last_Name, SSN, Email, Date_of_Birth, Status) VALUES('080','1007','Michael','Starke','301-73-9466', 'mstarke@gmail.com', TO_DATE('1997-08-26', 'YYYY-MM-DD'),'Hired')
INTO APPLICANT (Applicant_id, Application_id, First_Name, Last_Name, SSN, Email, Date_of_Birth, Status) VALUES('544','1008','Cindy','Restrepo','702-42-5454', 'cindyrestrepo@hotmail.com', TO_DATE('1986-12-06', 'YYYY-MM-DD'),'Hired')
INTO APPLICANT (Applicant_id, Application_id, First_Name, Last_Name, SSN, Email, Date_of_Birth, Status) VALUES('994','1009','Joseph','Franco','553-01-7824', 'jfranco@gmail.com', TO_DATE('1998-09-25', 'YYYY-MM-DD'),'Denied')
INTO APPLICANT (Applicant_id, Application_id, First_Name, Last_Name, SSN, Email, Date_of_Birth, Status) VALUES('126','1010','Alexis','Reeds','871-00-2399', 'alexis_reeds@yahoo.com', TO_DATE('1995-05-23', 'YYYY-MM-DD'),'Hired')
select * from dual;

CREATE TABLE OFFER(
Offer_id number(10) CONSTRAINT Offer_id_pk PRIMARY KEY,
Pay_rate varchar(10),
Offer_status varchar(10)
);
INSERT ALL
INTO  OFFER (Offer_id, Pay_rate, Offer_status) VALUES('2001','55000','NA')
INTO  OFFER (Offer_id, Pay_rate, Offer_status) VALUES('2002','62000','Accepted')
INTO  OFFER (Offer_id, Pay_rate, Offer_status) VALUES('2003','45000','Denied')
INTO  OFFER (Offer_id, Pay_rate, Offer_status) VALUES('2004','67000','Accepted')
INTO  OFFER (Offer_id, Pay_rate, Offer_status) VALUES('2005','65000','Accepted')
INTO  OFFER (Offer_id, Pay_rate, Offer_status) VALUES('2006','50000','NA')
INTO  OFFER (Offer_id, Pay_rate, Offer_status) VALUES('2007','60000','Accepted')
INTO  OFFER (Offer_id, Pay_rate, Offer_status) VALUES('2008','61000','NA')
INTO  OFFER (Offer_id, Pay_rate, Offer_status) VALUES('2009','54000','Denied')
INTO  OFFER (Offer_id, Pay_rate, Offer_status) VALUES('2010','58000','Denied')
select * from dual;

CREATE TABLE INTERVIEW(
Interview_id number(10) CONSTRAINT Interview_id_pk PRIMARY KEY,
Employee_id number(10),
Offer_id number(10),
Date_of_Interview DATE,
Rating number(10),
Status varchar(10)
);
INSERT ALL
INTO  INTERVIEW (Interview_id, Employee_id, Offer_id, Date_of_Interview, Rating, Status) VALUES('201', '145', '2001', TO_DATE('2021-11-02','YYYY-MM-DD'),'2','No Offer')
INTO  INTERVIEW (Interview_id, Employee_id, Offer_id, Date_of_Interview, Rating, Status) VALUES('202', '545', '2002', TO_DATE('2021-12-07','YYYY-MM-DD'),'4','Offered')
INTO  INTERVIEW (Interview_id, Employee_id, Offer_id, Date_of_Interview, Rating, Status) VALUES('203', '130', '2003', TO_DATE('2021-11-10','YYYY-MM-DD'),'4','Offered')
INTO  INTERVIEW (Interview_id, Employee_id, Offer_id, Date_of_Interview, Rating, Status) VALUES('204', '745', '2004', TO_DATE('2021-11-23','YYYY-MM-DD'),'5','Offered')
INTO  INTERVIEW (Interview_id, Employee_id, Offer_id, Date_of_Interview, Rating, Status) VALUES('205', '845', '2005', TO_DATE('2021-10-20','YYYY-MM-DD'),'1','No Offer')
INTO  INTERVIEW (Interview_id, Employee_id, Offer_id, Date_of_Interview, Rating, Status) VALUES('206', '245', '2006', TO_DATE('2021-11-08','YYYY-MM-DD'),'3','Offered')
INTO  INTERVIEW (Interview_id, Employee_id, Offer_id, Date_of_Interview, Rating, Status) VALUES('207', '345', '2007', TO_DATE('2021-11-19','YYYY-MM-DD'),'5','Offered')
INTO  INTERVIEW (Interview_id, Employee_id, Offer_id, Date_of_Interview, Rating, Status) VALUES('208', '145', '2008', TO_DATE('2021-11-04','YYYY-MM-DD'),'2','No Offer')
INTO  INTERVIEW (Interview_id, Employee_id, Offer_id, Date_of_Interview, Rating, Status) VALUES('209', '140', '2009', TO_DATE('2021-10-01','YYYY-MM-DD'),'3','Offered')
INTO  INTERVIEW (Interview_id, Employee_id, Offer_id, Date_of_Interview, Rating, Status) VALUES('210', '130', '2010', TO_DATE('2021-11-02','YYYY-MM-DD'),'5','Offered')
select * from dual;

CREATE TABLE EMPLOYEE(
Employee_id number(10) CONSTRAINT Employee_id_pk PRIMARY KEY,
Dep_id number(10),
First_Name varchar(30),
Last_Name varchar(30),
SSN varchar(11),
Date_of_Birth DATE,
Email varchar(30),
hire_date DATE,
pay_rate varchar(10),
office_number number(10)
);
INSERT ALL
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('445','5008','John','Smith','799-86-9297', TO_DATE('1979-08-05', 'YYYY-MM-DD'),'j.smith@matchmark.com', TO_DATE('2020-12-21', 'YYYY-MM-DD'),'98000','1600')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('545','5009','Lily','Appleseed','890-10-9299', TO_DATE('1986-12-28', 'YYYY-MM-DD'),'l.appleseed@matchmark.com', TO_DATE('2018-05-05', 'YYYY-MM-DD'),'100000','1700')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('645','5005','Dwight','Shrute','335-89-9899', TO_DATE('1979-07-06', 'YYYY-MM-DD'),'d.shrute@matchmark.com', TO_DATE('2019-11-21', 'YYYY-MM-DD'),'85000','1800')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('745','5006','Pamela','Brown','539-17-0835', TO_DATE('1978-06-30', 'YYYY-MM-DD'),'p.brown@matchmark.com', TO_DATE('2020-11-15', 'YYYY-MM-DD'),'86500','1900')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('845','5004','Ted','Mosby','414-26-3001', TO_DATE('1993-09-26', 'YYYY-MM-DD'),'t.mosby@matchmark.com', TO_DATE('2019-10-13', 'YYYY-MM-DD'),'88000','2000')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('245','5001','Cheryl','Dickenson','999-10-6775', TO_DATE('1982-09-24', 'YYYY-MM-DD'),'c.dickenson@matchmark.com', TO_DATE('2021-02-09', 'YYYY-MM-DD'),'95000','2100')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('345','5003','Joey','Parker','400-33-5541', TO_DATE('1984-01-18', 'YYYY-MM-DD'),'j.parker@matchmark.com', TO_DATE('2019-06-5', 'YYYY-MM-DD'),'100000','2200')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('145','5002','Lisa','Clemens','875-01-7822', TO_DATE('1991-05-19', 'YYYY-MM-DD'),'l.clements@matchmark.com', TO_DATE('2020-09-24', 'YYYY-MM-DD'),'95000','2300')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('140','5000','Mark','Johnson','871-44-5561', TO_DATE('1983-02-10', 'YYYY-MM-DD'),'m.johnson@matchmark.com', TO_DATE('2019-12-26', 'YYYY-MM-DD'),'90000','2400')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('130','5007','Jill','Bonora','450-11-6578', TO_DATE('1988-06-03', 'YYYY-MM-DD'),'j.bonora@matchmark.com', TO_DATE('2021-10-20', 'YYYY-MM-DD'),'98000','2500')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('210','5008','Bobby','Richards','992-86-2806', TO_DATE('1994-04-04', 'YYYY-MM-DD'), 'b.richards@matchmark.com', TO_DATE('2021-11-19', 'YYYY-MM-DD'),'60000','1601')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('220','5007','Michael','Starke','301-73-9466', TO_DATE('1997-08-26', 'YYYY-MM-DD'),'m.starke@matchmark.com', TO_DATE('2021-11-23', 'YYYY-MM-DD'),'57000','2501')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('230','5002','Cindy','Restrepo','702-42-5454', TO_DATE('1982-12-06', 'YYYY-MM-DD'),'c.restrepo@matchmark.com', TO_DATE('2021-09-22', 'YYYY-MM-DD'),'65000','2301')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('235','5001','Alexis','Reeds','871-00-2399', TO_DATE('1995-05-20', 'YYYY-MM-DD'),'a.reeds@matchmark.com', TO_DATE('2021-11-07', 'YYYY-MM-DD'),'62000','2101')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('170','5003','Kelly','Bluebook','761-00-9945', TO_DATE('1981-03-14', 'YYYY-MM-DD'),'k.bluebook@matchmark.com', TO_DATE('2020-05-14', 'YYYY-MM-DD'),'71000', '2201')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('150','5005','Betty','Crocker','881-47-2233', TO_DATE('1985-06-27', 'YYYY-MM-DD'),'b.crocker@matchmark.com', TO_DATE('2020-08-29', 'YYYY-MM-DD'),'75000','1801')
INTO EMPLOYEE (Employee_id, Dep_id, First_Name, Last_Name, SSN, Date_of_Birth, Email, Hire_date, Pay_rate, Office_number) VALUES('160','5000','Ariana','Grande','140-62-2445', TO_DATE('1995-03-11', 'YYYY-MM-DD'),'a.grande@matchmark.com', TO_DATE('2020-09-18', 'YYYY-MM-DD'),'64000','2401')
select * from dual;

CREATE TABLE APPLICATION(
Application_id number(10) CONSTRAINT Application_id_pk PRIMARY KEY,
Interview_id number(10),
Employee_id number(10),
Years_of_experience varchar(30),
Completed varchar(3)
);
INSERT ALL
INTO  APPLICATION (Application_id, Interview_id, Employee_id, Years_of_experience, Completed) VALUES('1001','201','245','0-2','No')
INTO  APPLICATION (Application_id, Interview_id, Employee_id, Years_of_experience, Completed) VALUES('1002','202','245','3-5','Yes')
INTO  APPLICATION (Application_id, Interview_id, Employee_id, Years_of_experience, Completed) VALUES('1003','203','645','3-5','No')
INTO  APPLICATION (Application_id, Interview_id, Employee_id, Years_of_experience, Completed) VALUES('1004','204','645','0-2','Yes')
INTO  APPLICATION (Application_id, Interview_id, Employee_id, Years_of_experience, Completed) VALUES('1005','205','745','5+','No')
INTO  APPLICATION (Application_id, Interview_id, Employee_id, Years_of_experience, Completed) VALUES('1006','206','845','3-5','No')
INTO  APPLICATION (Application_id, Interview_id, Employee_id, Years_of_experience, Completed) VALUES('1007','207','140','0-2','Yes')
INTO  APPLICATION (Application_id, Interview_id, Employee_id, Years_of_experience, Completed) VALUES('1008','208','145','5+','Yes')
INTO  APPLICATION (Application_id, Interview_id, Employee_id, Years_of_experience, Completed) VALUES('1009','209','130','0-2','Yes')
INTO  APPLICATION (Application_id, Interview_id, Employee_id, Years_of_experience, Completed) VALUES('1010','210','130','3-5','Yes')
select * from dual;

alter table EMPLOYEE
add foreign key (Dep_id) references DEPARTMENT(Dep_id)
;
alter table CONTAINS 
add foreign key (Dep_id) references DEPARTMENT(Dep_id)
;
alter table CONTAINS
add foreign key (Position_id) references POSITION(Position_id)
;
alter table INTERVIEW
add foreign key (Employee_id) references EMPLOYEE(Employee_id)
;
alter table INTERVIEW
add foreign key (Offer_id) references OFFER(Offer_id)
;
alter table REQUIRES
add foreign key (Position_id) references POSITION(Position_id)
;
alter  table REQUIRES
add foreign key (Skill_id) references SKILLS(Skill_id)
;
alter table APPLICATION
add foreign key (Interview_id) references INTERVIEW(Interview_id)
;
alter table APPLICATION
add foreign key (Employee_id) references EMPLOYEE(Employee_id)
;
alter table APPLICANT
add foreign key (Application_id) references APPLICATION(Application_id)
;
alter table POSSESSES
add foreign key (Skill_id) references SKILLS(Skill_id)
;
alter table POSSESSES
add foreign key (Applicant_id) references APPLICANT(Applicant_id)
;


select *
from user_constraints;

ALTER TABLE INTERVIEW
DROP CONSTRAINT SYS_C00927989;

select * from contains;

drop table interview;

--reports

select sum(order_total) as TOTAL, 
count(case when sales_rep_id = '153' then 1 end)as "153", 
count(case when sales_rep_id = '154' then 1 end)as "154",
count(case when sales_rep_id = '155' then 1 end)as "155", 
count(case when sales_rep_id = '156' then 1 end)as "156",
count(case when sales_rep_id = '158' then 1 end)as "158",
count(case when sales_rep_id = '159' then 1 end)as "159", 
count(case when sales_rep_id = '160' then 1 end)as "160",
count(case when sales_rep_id = '161' then 1 end)as "161",
count(case when sales_rep_id = '163' then 1 end)as "163",
count(case when sales_rep_id is null then 1 end) as "NA"
from orders 
;

select CONCAT('$',round(avg(case when offer_status='Denied' then pay_rate
    else null
	end),-2)) as "Avg Denied Salary", CONCAT('$',round(avg(case when offer_status='Accepted' then pay_rate
    else null
	end),-2)) as "Avg Accepted Salary"
from APPLICANT
join APPLICATION on APPLICANT.application_id=APPLICATION.application_id
join INTERVIEW on APPLICATION.interview_id=INTERVIEW.interview_id
join OFFER on INTERVIEW.offer_id=OFFER.offer_id
;
---report 1
select first_name, last_name, INTERVIEW.Status, OFFER.offer_status, INTERVIEW.Rating, CONCAT('$',OFFER.pay_rate) AS OfferedSalary
from APPLICANT
join APPLICATION on APPLICANT.application_id=APPLICATION.application_id
join INTERVIEW on APPLICATION.interview_id=INTERVIEW.interview_id
join OFFER on INTERVIEW.offer_id=OFFER.offer_id
join POSSESSES on APPLICANT.applicant_id=POSSESSES.applicant_id
where INTERVIEW.Status='No Offer' AND INTERVIEW.Rating>3 OR OFFER.offer_status='Denied'
order by last_name
;

---report 2
select * from skills;
select Position_name, Available, skill_name
from POSITION 
JOIN CONTAINS on POSITION.position_id=CONTAINS.position_id
JOIN REQUIRES on POSITION.position_id=REQUIRES.position_id
JOIN SKILLS on REQUIRES.skill_id=SKILLS.skill_id
where available = 'Open' and skill_name ='Management Skills' 
OR 
available = 'Open' and skill_name ='Interpersonal Skills'
order by skill_name
;

---report 3
select first_name, last_name, date_of_birth, substr(SSN,8) AS SSN, department_name, hire_date, CONCAT('$',pay_rate) AS Salary
from employee
join DEPARTMENT on employee.dep_id=DEPARTMENT.dep_id
where pay_rate<80000 AND hire_date > sysdate-365
order by hire_date desc
;

---report 4
select CONCAT('$',round(avg(case when offer_status='Denied' then pay_rate
    else null
	end),-2)) as "Avg Denied Salary", CONCAT('$',round(avg(case when offer_status='Accepted' then pay_rate
    else null
	end),-2)) as "Avg Accepted Salary"
from APPLICANT
join APPLICATION on APPLICANT.application_id=APPLICATION.application_id
join INTERVIEW on APPLICATION.interview_id=INTERVIEW.interview_id
join OFFER on INTERVIEW.offer_id=OFFER.offer_id
;

---report 5
select last_name, CONCAT('$',pay_rate) AS Salary, department_name
from employee
join department on employee.dep_id=department.dep_id
where pay_rate < ANY (
                   select pay_rate
                   from employee
                   where department_name='Marketing' 
                   );
                   
SELECT department.Dep_id, department.department_name, CONCAT('$',avg(pay_rate))as Salary, count(*)as "Employee Count"
FROM department
join employee on department.dep_id=employee.dep_id
group by Department.department_name, department.dep_id
HAVING avg(pay_rate) <>ALL (
                        SELECT avg(pay_rate)
                        FROM employee);
                        
                        select sum(order_total) as TOTAL, 
count(case when sales_rep_id = '153' then 1 end)as "153", 
count(case when sales_rep_id = '154' then 1 end)as "154",
count(case when sales_rep_id = '155' then 1 end)as "155", 
count(case when sales_rep_id = '156' then 1 end)as "156",
count(case when sales_rep_id = '158' then 1 end)as "158",
count(case when sales_rep_id = '159' then 1 end)as "159", 
count(case when sales_rep_id = '160' then 1 end)as "160",
count(case when sales_rep_id = '161' then 1 end)as "161",
count(case when sales_rep_id = '163' then 1 end)as "163",
count(case when sales_rep_id is null then 1 end) as "NA"
from orders 
;

                        
select dep_id, department_name
from department;
  
select dep_id
from employee;
                 
select first_name, last_name, department_name, CONCAT('$',pay_rate) AS Salary
from employee
JOIN DEPARTMENT on employee.dep_id=DEPARTMENT.dep_id
where pay_rate < ANY (
                    select pay_rate
                    from employee
                    where first_name='Dwight'
                    );
