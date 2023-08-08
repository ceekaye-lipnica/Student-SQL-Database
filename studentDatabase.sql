/*
CHELSEA KATE M. LIPNICA
BERNADETTE V. NUNEZ
KENNETH M. ANONUEVO
*/

Create Database Studentt;
Drop Database Studentt;
Use Studentt;

Create Table Student (

	Stud_ID varchar (50) not null,
	Fname varchar (50) not null,
	Lname varchar (50) not null,
	Year_lvl varchar (50),
	Stud_Status varchar (50),
	Gender varchar (50),
	Contact_No varchar (50),
	Email_Add varchar (50),
	
 Constraint pk_StID Primary Key (Stud_ID), -- PRIMARY KEY
 constraint uc_studID unique (Stud_ID, Contact_No, Email_Add), -- UNIQUE CONSTRAINT
 constraint chck_Gender check (Gender= 'Female' or Gender= 'Male'), -- CHECK CONSTRAINT
 constraint chck_StudStat check (Stud_Status= 'Irregular' or Stud_Status= 'Regular') -- CHECK CONSTRAINT
);

Create Table Professor (
	
	Prof_ID varchar (50),
	Fname varchar (50),
	Lname varchar (50),
	Gender varchar (50),
	Contact_No varchar (50),
	Email_Add varchar (50),
	Course varchar (50),
	Subj_Desc varchar (50),


	Constraint pk_PrID Primary Key (Prof_ID), -- PRIMARY KEY
	constraint UC_ProfID unique (Prof_ID, Contact_No, Email_Add) --UNIQUE CONSTRAINT
);

Create Table Subject_tbl (
	
	Prof_ID varchar (50),
	Sub_Code varchar (50),
	Sub_Desc varchar (50),
	

	Constraint pk_SubC Primary Key (Sub_Code), -- PRIMARY KEY
	constraint UC_SubID unique (Sub_Code), -- UNIQUE CONSTRAINT
	constraint fk_ProfID foreign key (Prof_ID) references Professor (Prof_ID), -- FOREIGN KEY
);

Create Table Course (
	
	Stud_ID varchar (50),
	Course_ID varchar (50),
	Course_Desc varchar (50),
	Sub_Code varchar (50),

	Constraint pk_CID Primary Key (Course_ID), -- PRIMARY KEY
	constraint fk_StudID foreign key (Stud_ID) references Student (Stud_ID), -- FOREIGN KEY
	constraint fk_SubCode foreign key (Sub_Code) references Subject_tbl (Sub_Code), -- FOREIGN KEY
	constraint UC_CourseID unique (Course_ID) -- UNIQUE CONSTRAINT
);


Create Table Grade (
	
	Stud_ID varchar (50),
	Sub_Code varchar (50),
	Sub_Desc varchar (50),
	F_Grade decimal (18,2),
	G_Status varchar (50),
	
	
	constraint fk_StudentID foreign key (Stud_ID) references Student (Stud_ID), -- FOREIGN KEY
	constraint fk_Sub_Code foreign key (Sub_Code) references Subject_tbl (Sub_Code), -- FOREIGN KEY
	constraint chck_GrdStat check (G_Status= 'Failed' or G_Status= 'Passed' or G_Status= 'Incomplete' or G_Status= 'Inc') -- CHECK CONSTRAINT
);



-- INSERTING 10 RECORDS TO 3 TABLES -- 


	-- STUDENT TABLE --
		insert into Student (Stud_ID,Fname,Lname,Year_lvl,Stud_Status,Gender,Contact_No,Email_Add)
			values ('S001','DENVER','CELIZ','3RD YEAR','REGULAR','MALE','09424871526','deverB00@gmail.com')
		insert into Student (Stud_ID,Fname,Lname,Year_lvl,Stud_Status,Gender,Contact_No,Email_Add)
			values ('S002','HAROLD','GABRIEL','3RD YEAR','REGULAR','MALE','09424238926','johnG@gmail.com')
		insert into Student (Stud_ID,Fname,Lname,Year_lvl,Stud_Status,Gender,Contact_No,Email_Add)
			values ('S003','MIGUEL','SALAS','3RD YEAR','REGULAR','MALE','09424897326','miggySlS@gmail.com')
		insert into Student (Stud_ID,Fname,Lname,Year_lvl,Stud_Status,Gender,Contact_No,Email_Add)
			values ('S004','MARIE','SAYNO','3RD YEAR','REGULAR','FEMALE','09278371526','anntrisha@gmail.com')
		insert into Student (Stud_ID,Fname,Lname,Year_lvl,Stud_Status,Gender,Contact_No,Email_Add)
			values ('S005','GIA','LABSO','3RD YEAR','REGULAR','FEMALE','09424298426','giaMarque@gmail.com')
		insert into Student (Stud_ID,Fname,Lname,Year_lvl,Stud_Status,Gender,Contact_No,Email_Add)
			values ('S006','BERNADETTE','NUNEZ','3RD YEAR','IRREGULAR','FEMALE','09424298675','BNunez@gmail.com')
		insert into Student (Stud_ID,Fname,Lname,Year_lvl,Stud_Status,Gender,Contact_No,Email_Add)
			values ('S007','KENNETH','ANONUEVO','3RD YEAR','IRREGULAR','MALE','09424345675','kenneth032@gmail.com')
		insert into Student (Stud_ID,Fname,Lname,Year_lvl,Stud_Status,Gender,Contact_No,Email_Add)
			values ('S008','CEEKAYE','LIPNICA','3RD YEAR','REGULAR','FEMALE','09214298675','cklipnica40@gmail.com')
		insert into Student (Stud_ID,Fname,Lname,Year_lvl,Stud_Status,Gender,Contact_No,Email_Add)
			values ('S009','DIEGO','CANTRE','3RD YEAR','IRREGULAR','MALE','09478798675','diegocantre@gmail.com')
		insert into Student (Stud_ID,Fname,Lname,Year_lvl,Stud_Status,Gender,Contact_No,Email_Add)
			values ('S010','MARCELO','CASTANEDA','3RD YEAR','IRREGULAR','MALE','09424765675','marcelo002@gmail.com')


	-- PROFESSOR --
		insert into Professor (Prof_ID,Fname,Lname,Gender,Contact_No,Email_Add,Course,Subj_Desc)
			values ('P1231','ANDREA','ZURBANO','FEMALE','09376289711','zurbanoA@gmail.com','BSIT','DATABASE ADMINISTRATION')
		insert into Professor (Prof_ID,Fname,Lname,Gender,Contact_No,Email_Add,Course,Subj_Desc)
			values ('P1232','LYNEL','TABIEN','MALE','09973629711','lynelTabien@gmail.com','BSIT','INTEGRATED PROGRAMMING')
		insert into Professor (Prof_ID,Fname,Lname,Gender,Contact_No,Email_Add,Course,Subj_Desc)
			values ('P1233','LUISA','FRANCISCO','FEMALE','09376348611','franciscoluisaA@gmail.com','DICT','SYSTEM INTEGRATION AND ARCHITECTURE')
		insert into Professor (Prof_ID,Fname,Lname,Gender,Contact_No,Email_Add,Course,Subj_Desc)
			values ('P1234','TITO','LORETO','MALE','09376283496','titoLoreto98@gmail.com','DCET','IT ELECTIVE')
		insert into Professor (Prof_ID,Fname,Lname,Gender,Contact_No,Email_Add,Course,Subj_Desc)
			values ('P1235','ICON','OBMERGA','FEMALE','099357889711','Obmerga100@gmail.com','BSCS','DATA COMMUNICATION AND ADMINISTRATION')
		insert into Professor (Prof_ID,Fname,Lname,Gender,Contact_No,Email_Add,Course,Subj_Desc)
			values ('P1236','Kenneth','Lazaro','MALE','09837327711','kenL@gmail.com','BSEE','Math in the Modern World')
		insert into Professor (Prof_ID,Fname,Lname,Gender,Contact_No,Email_Add,Course,Subj_Desc)
			values ('P1237','Camille','Sayno','FEMALE','09837322341','kAmmiL@gmail.com','BPA','World of Literature')
		insert into Professor (Prof_ID,Fname,Lname,Gender,Contact_No,Email_Add,Course,Subj_Desc)
			values ('P1238','Harold','Marquez','MALE','09839736211','Marquez986@gmail.com','BSST','Programming 1')
		insert into Professor (Prof_ID,Fname,Lname,Gender,Contact_No,Email_Add,Course,Subj_Desc)
			values ('P1239','Diego','Lopez','MALE','09837486341','Lopezdd9@gmail.com','BSIT','Programming 2')
			insert into Professor (Prof_ID,Fname,Lname,Gender,Contact_No,Email_Add,Course,Subj_Desc)
			values ('P123901','Kenneth','Lazaro','MALE','09837312311','keNNtL@gmail.com','BSCE','CALCULUS')

	-- SUBJECT --
		insert into Subject_tbl(Prof_ID,Sub_Code,Sub_Desc)
			values ('P1231','COMP 20213','DATABASE ADMINISTRATION')
		insert into Subject_tbl (Prof_ID,Sub_Code,Sub_Desc)
			values ('P1232','COMP 20211','INTEGRATED PROGRAMMING')
		insert into Subject_tbl(Prof_ID,Sub_Code,Sub_Desc)
			values ('P1233','INTE 30033','SYSTEM INTEGRATION AND ARCHITECTURE')
		insert into Subject_tbl (Prof_ID,Sub_Code,Sub_Desc)
			values ('P1234','INTE-E1','IT ELECTIVE')
		insert into Subject_tbl (Prof_ID,Sub_Code,Sub_Desc)
			values ('P1235','COMP 202156','DATA COMMUNICATION AND ADMINISTRATION')
		insert into Subject_tbl (Prof_ID,Sub_Code,Sub_Desc)
			values ('P1236','INTE 30043','MATH IN THE MODERN WORLD')
		insert into Subject_tbl (Prof_ID,Sub_Code,Sub_Desc)
			values ('P1237','GEED 10073','WORLD OF LITERATURE')
		insert into Subject_tbl (Prof_ID,Sub_Code,Sub_Desc)
			values ('P1238','COMP 20163','PROGRAMMING 1')
		insert into Subject_tbl (Prof_ID,Sub_Code,Sub_Desc)
			values ('P1239','COMP 20093','PROGRAMMING 2')
		insert into Subject_tbl (Prof_ID,Sub_Code,Sub_Desc)
			values ('P123901','COMP 20193','CALCULUS')

	-- COURSE --
		insert into Course (Stud_ID,Course_ID,Course_Desc,Sub_Code)
			values ('S001','DA483','DATABASE ADMINISTRATION','COMP 20213')
		insert into Course (Stud_ID,Course_ID,Course_Desc,Sub_Code)
			values ('S002','IP295','INTEGRATED PROGRAMMING','COMP 20211')
		insert into Course (Stud_ID,Course_ID,Course_Desc,Sub_Code)
			values ('S003','DS400','SYSTEM INTEGRATION AND ARCHITECTURE','INTE 30033')		
		insert into Course (Stud_ID,Course_ID,Course_Desc,Sub_Code)
			values ('S004','STRUC439','IT ELECTIVE','INTE-E1')
		insert into Course (Stud_ID,Course_ID,Course_Desc,Sub_Code)
			values ('S005','DCN987','DATA COMMUNICATION AND ADMINISTRATION','COMP 202156')



	-- GRADE --
		insert into Grade (Stud_ID,Sub_Code,Sub_Desc,F_Grade,G_Status)
			values ('S001','COMP 20213','DATABASE ADMINISTRATION',1.50,'PASSED')
		insert into Grade (Stud_ID,Sub_Code,Sub_Desc,F_Grade,G_Status)
			values ('S002','COMP 20211','INTEGRATED PROGRAMMING',1.5,'PASSED')
		insert into Grade (Stud_ID,Sub_Code,Sub_Desc,F_Grade,G_Status)
			values ('S003','INTE 30033','SYSTEM INTEGRATION AND ARCHITECTURE',1.75,'PASSED')	
		insert into Grade (Stud_ID,Sub_Code,Sub_Desc,F_Grade,G_Status)
			values ('S004','INTE-E1','IT ELECTIVE',1.5,'PASSED')
		insert into Grade (Stud_ID,Sub_Code,Sub_Desc,F_Grade,G_Status)
			values ('S005','INTE-E1','DATA COMMUNICATION AND ADMINISTRATION',1.25,'PASSED')



-- Writing 10 DML Commands for each record in a table -- 
	-- For Student Table -- 

	DELETE FROM Student
		WHERE Stud_ID = 'S001';
	DELETE FROM Student
		WHERE Stud_ID = 'S010';
	DELETE FROM Student
		WHERE Stud_ID = 'S005';
	DELETE FROM Student
		WHERE Stud_ID = 'S003';
	
	UPDATE Student
		SET Stud_Status = 'IRREGULAR'
		WHERE Stud_ID = 'S002';
	UPDATE Student
		SET Year_lvl = '4TH YEAR'
		WHERE Stud_ID = 'S004';
	UPDATE Student
		SET Fname = 'ALEXANDER'
		WHERE Stud_ID = 'S007';
	UPDATE Student
		SET Lname = 'DELA CRUZ'
		WHERE Stud_ID = 'S009';
	UPDATE Student
		SET Contact_No = '09123456789'
		WHERE Stud_ID = 'S008';
	UPDATE Student
		SET Email_Add = 'thisismyemail@gmail.com'
		WHERE Stud_ID = 'S006';

	-- For Profesor Table -- 

	DELETE FROM Professor
		WHERE Prof_ID = 'P1232';
	DELETE FROM Professor
		WHERE Prof_ID = 'P1233';
	DELETE FROM Professor
		WHERE Prof_ID = 'P1236';
	DELETE FROM Professor
		WHERE Prof_ID = 'P1237';
	DELETE FROM Professor
		WHERE Prof_ID = 'P1239';
	

	UPDATE Professor
		Set Fname = 'Liza'
		Where Prof_ID = 'P1231';
	UPDATE Professor
		Set Lname = 'Nantes'
		Where Prof_ID = 'P1232';
	UPDATE Professor
		Set Contact_No = '09782376128'
		Where Prof_ID = 'P1233'
	UPDATE Professor
		Set Email_Add = 'LoretoT33@gmail.com'
		Where Prof_ID = 'P1234';
	UPDATE Professor
		Set Course = 'BSIT'
		Where Prof_ID = 'P1235'



-- Displaying records using different select clause --
	-- For Student Table -- 
	SELECT * FROM Student
		WHERE Stud_ID BETWEEN 'S005' AND 'S010';
	SELECT * FROM Student
		WHERE Lname LIKE '%o';
	SELECT * FROM Student
		WHERE Stud_Status IN ('REGULAR','IRREGULAR');
	
	/* ORDER BY CLAUSE */
	SELECT * FROM Student
		ORDER BY Stud_ID DESC;
	SELECT * FROM Student
		ORDER BY Fname ASC;
	SELECT * FROM Student
		ORDER BY Lname DESC;
		

	-- For Profesor Table -- 

	SELECT * FROM Professor
		WHERE Fname Like '%a';
	SELECT * FROM Professor
		WHERE Course IN ('BSIT');
	SELECT * FROM Professor
		WHERE Gender NOT IN ('Female');
 

		/* ORDER BY CLAUSE */
	SELECT * FROM Professor
		ORDER BY Fname ASC;
	SELECT * FROM Professor
		ORDER BY Lname ASC;
	SELECT * FROM Professor
		ORDER BY Course DESC;

	-- For Subject Table -- 

	SELECT * FROM Subject_tbl
		WHERE Prof_ID BETWEEN 'P1233' AND 'P1237';
	SELECT * FROM Subject_tbl
		WHERE Sub_Code Like 'I%';
	SELECT * FROM Subject_tbl
		WHERE Sub_Desc Like 'P%';



	/* ORDER BY CLAUSE */
	SELECT * FROM Subject_tbl
		ORDER BY Prof_ID DESC;
	SELECT * FROM Subject_tbl
		ORDER BY Sub_Code ASC;
	SELECT * FROM Subject_tbl
		ORDER BY Sub_Desc ASC;
	


-- VIEW TABLES--  

	Select Stud_ID as [STUDENT ID], 
	Fname + ' ' + Lname as [NAME], 
	Year_lvl as [YEAR LEVEL],
	Stud_Status as [STATUS],
	Gender as GENDER,
	Contact_No as [CONTACT NO.], 
	Email_Add as EMAIL  
	from Student;
	
	Select Stud_ID as [STUDENT ID],
	Course_ID as [COURSE ID],
	Course_Desc as [COURSE DESCRIPTION],
	Sub_Code as [SUBJECT CODE]
	from Course;

	Select Prof_ID as [PROFESSOR ID],
	Fname + ' ' + Lname as [NAME], 
	Gender as GENDER,
	Contact_No as [CONTACT NO.],
	Email_Add as EMAIL,
	Subj_Desc as [SUBJECT],
	Course as [COURSE]
	from Professor;

	Select Sub_Code as [SUBJECT CODE],
	Sub_Desc as [SUBJECT DESCRIPTION],
	Prof_ID as [PROFESSOR ID]
	from Subject_tbl;

	Select Stud_ID as [STUDENT ID],
	Sub_Desc as [SUBJECT],
	F_Grade as [FINAL GRADES],
	G_Status as [REMARKS]
	from Grade;