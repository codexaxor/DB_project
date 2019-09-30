Create Table Patient
(
   patientID int primary key identity (1,1),
   firstName varchar(50),
   lastName varchar(50),
   bloodGroup varchar(50),
   sex varchar(50),
   dateOFBirth date,
   contact varchar(50),
   country varchar(50),
   division varchar(50),
   district varchar(50),
   village varchar(50),
   thana varchar(50),
   road varchar(50),
   houseNo varchar(50),
)

select * from patient 

create table PatientLogIn
(
	patientId int foreign key references Patient(PatientID),
	email varchar(50),
	password varchar(50),
)
select * from PatientLogIn

insert into patient 
values('Sabbir','Ahmed','A+','Male','1998-01-01','01911000000','Bangladesh','Dhaka','Dhaka','Dhaka','Rampura','Ulon Road','272')

Create Table Doctor
(
   DoctorID int primary key identity (1,1),
   firstName varchar(50),
   lastName varchar(50),
   speciality varchar(50),
   degree varchar(50),
   graduatedFrom varchar(50),
   currentWorkingPlace varchar(50),
   BDMCNO varchar(50),
   bloodGroup varchar(50),
   sex varchar(50),
   dateOFBirth date,
   contact varchar(50),
   country varchar(50),
   division varchar(50),
   district varchar(50),
   village varchar(50),
   thana varchar(50),
   road varchar(50),
   houseNo varchar(50),
)

select * from Doctor

Create Table DiagnosticCenter
(
   centerID int primary key identity (1,1),
   name varchar(50),
   established date,
   contact varchar(50),
   country varchar(50),
   division varchar(50),
   district varchar(50),
   village varchar(50),
   thana varchar(50),
   road varchar(50),
   houseNo varchar(50),
)

select * from DiagnosticCenter

Create Table Test
(
   patientId int foreign key references Patient(patientId),
   doctorId int foreign key references Doctor(doctorId),
   document text,
   date datetime,
)

Create Table Report
(
   patientId int foreign key references Patient(patientId),
   CenterId int foreign key references DiagnosticCenter(centerId),
   document text,
   date datetime,
)

Create Table Prescription
(
   patientId int foreign key references Patient(patientId),
   doctorId int foreign key references Doctor(doctorId),
   document text,
   date datetime,
)

select * from Prescription




create table DoctorLogIn
(
	DoctorId int foreign key references Doctor(DoctorID),
	email varchar(50),
	password varchar(50),
)
select * from DoctorLogIn

create table DiagnosticCenterLogIn
(
	CenterId int foreign key references DiagnosticCenter(centerID),
	email varchar(50),
	password varchar(50),
)
select * from PatientLogIn