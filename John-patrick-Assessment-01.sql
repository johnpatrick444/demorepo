#sample work

create database Indium_Evall;
use Indium_Evall;
# use keyword, used to  creating table in which db .  
create table Recruitment
(
    EmpID int not null ,
    Firstname varchar(80) not null,
	Lastname varchar(80) not null,
    Designation varchar(80) not null,
    Qualification varchar(80) not null,
	Base_location varchar(80) not null
    );
    
    # above table is created now to insert values in the table
    insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1000,'Dr.uma','pavan','Manager','PhD','Pondicherry');
    insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1001,'christian','grey','employee','B.E','seattle');
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1002,'john','patrick','employee','B.E','pondicherry');
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1003,'johnny','tapia','assistant manager','m.tech','miami');    
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1004,'taylor hill','employee','team lead','BBA','chennai');   
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1005,'sajin','k','assistant manager','b.tech','');
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1006,'tom','cruise','employee','ece','banglore');
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1007,'daniel','craig','employee','ece','chennai');
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1008,'nate','jacob','assistant manager','b.e','pondicherry');
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1009,'daenerys','targaryen','employee','b.tech','usa');
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1010,'cameron','m','employee','B.E','florida');
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1011,',mallory','c','employee','B.E','florida');   
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1012,'arjun','m','employee','B.E','pondicherry');    
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1013,'aravind','r','employee','B.E','villupuram');    
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1014,'sirikki','vinod','employee','b.tech','banglore');
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1015,'madaline','swan','trainee','B.E','UK');	
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1016,'jamie','dornan','employee','B.E','ireland');
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1017,'greta ','f','employee','B.tech','UK');
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1018,'marcella','g','employee','B.tech','Uk');
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1019,'brindha','b','hr','B.E','chennai');
	insert into Recruitment( EmpID,Firstname, Lastname, Designation,Qualification,Base_location) values(1020,'milwin','m','hr','B.E','chennai');
     use Indium_EvaLL;               
    select * from Recruitment;
    
    
    update Recruitment
set Qualification='M.Tech'
WHERE EmpID='1001';
# above qualification is updated

update Recruitment
set Base_location='chennai', Designation='data scientist', Qualification='PhD'
where EmpID='1002';

# empid 2 is updated 
use Indium_Evall;
select * from Recruitment;


# will see rollback

start transaction;
use Indium_Evall;
delete from Recruitment
where EmpID='1020';
 
 use Indium_Evall;
 select * from Recruitment;
 
 rollback;
use  Indium_Evall;
select * from Recruitment;
# rollbacked 1020 successfully

start transaction;
use Indium_Evall;
delete from Recruitment;

use Indium_Evall;
select * from Recruitment;


 rollback;
use  Indium_Evall;
select * from Recruitment;
# over all table rollbacked successfully

update Recruitment
set Base_location='Banglore'
where Qualification='phD';

use  Indium_Evall;
select * from Recruitment;


# all the given queries are executed succesfully without any errors 
