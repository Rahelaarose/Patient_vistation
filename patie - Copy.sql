use patient_visitation


--- Data Manuplation 
create table Vistors_info(ID int identity(1,1) Primary key not null,First_Name varchar(120) not null,Last_Name Varchar(120) not null,
Last_vist datetime,Payment int not null,Next_appointment datetime not null)

insert into Vistors_info([First_Name],[Last_Name],[Last_vist],[Payment],[Next_appointment])
values('Lina','Davis','02-10-2020','80','05-28-2020')
insert into Vistors_info([First_Name],[Last_Name],[Last_vist],[Payment],[Next_appointment])
values('Smith','Hugo','06-08-2020','115','10-20-2020')
insert into Vistors_info([First_Name],[Last_Name],[Last_vist],[Payment],[Next_appointment])
values('Keith','Lewis','04-02-2020','78','08-10-2020')
insert into Vistors_info([First_Name],[Last_Name],[Last_vist],[Payment],[Next_appointment])
values('Beni','Kebede','02-12-2020','92','05-10-2020')
insert into Vistors_info([First_Name],[Last_Name],[Last_vist],[Payment],[Next_appointment])
values('Kenneth','Ramirez','05-12-2020','56','08-10-2020')
insert into Vistors_info([First_Name],[Last_Name],[Last_vist],[Payment],[Next_appointment])
values('Rita','Hassen','01-01-2020','35','04-04-2020')
insert into Vistors_info([First_Name],[Last_Name],[Last_vist],[Payment],[Next_appointment])
values('Rohan','JImmy','03-01-2020','88','07-29-2020')






select * from dbo.Vistors_info
Alter table  Vistors_info
add Address_inf varchar(200)

select * from dbo.Vistors_info

select  *
from dbo.Vistors_info


update Vistors_info 
	set Address_inf ='7510 lyndale Ave,south,apt 106,5534'
 where Id = 1



update Vistors_info 
	set Address_inf ='401 7th St S #106,Waite Park, Minnesota(MN), 56387'
 where Id = 2

update Vistors_info 
	set Address_inf ='14996 Mustang PathSavage, Minnesota(MN), 55378'
 where Id = 3


update Vistors_info 
	set Address_inf ='1701 Karnis Dr NWAlexandria, Minnesota(MN), 56308'
 where Id = 4


update Vistors_info 
	set Address_inf ='128 9th Ave Waite Park, Minnesota(MN), 56387'
 where Id = 5


update Vistors_info 
	set Address_inf ='38125 Pine AveCenter City, Minnesota(MN), 55012'
 where Id = 6

 update Vistors_info 
	set Address_inf ='24 Fond Du Lac Homes StCloquet, Minnesota(MN), 55720'
 where Id = 7


 update Vistors_info 
	set Age ='82'
 where Id = 1

 update Vistors_info 
	set Age ='58'
 where Id = 2

 update Vistors_info 
	set Age ='67'
 where Id = 3

 update Vistors_info 
	set Age ='35'
 where Id = 4

 update Vistors_info 
	set Age ='42'
 where Id = 5

 update Vistors_info 
	set Age ='68'
 where Id = 6

 update Vistors_info 
	set Age ='76'
 where Id = 7

 alter Table vistors_info
 add Patient_care varchar(200)


 select * from dbo.Vistors_info

 update Vistors_info
 set Patient_care = 'Primarycare'
 where id =1 

 update Vistors_info
 set Patient_care = 'Longterm'
 where id =2

 update Vistors_info
 set Patient_care = 'Primarycare'
 where id =3

update Vistors_info
 set Patient_care = 'Primarycare'
 where id =4

 update Vistors_info
 set Patient_care = 'Emergecy'
 where id =5

 update Vistors_info
 set Patient_care = 'Urgentcare'
 where id =6 

 update Vistors_info
 set Patient_care = 'Emergency'
 where id =7
select * from dbo.Vistors_info

select * from dbo.Vistors_info 
where age between 67 and 83 


---Case queries 
Select Age,
case
	when Age >=65 then 'old adults'
	when age >= 45 then 'Middle aged adult'
	when age >= 29 then 'young aged adult'
end as age_group
from dbo.Vistors_info


---subqueries 

select age from dbo.Vistors_info
where Payment =(select payment from dbo.Vistors_info where Payment < 50)


select * from dbo.Vistors_info

select count(*) from dbo.Vistors_info

----Max function
select Max(payment)as maximum_payment  from dbo.Vistors_info

----Min Function

select Min(payment) as minumum_payment from dbo.Vistors_info

----Average function

select AVG(payment) as average_payment from dbo.Vistors_info

--- sum 

select sum(payment) as Revenue from dbo.Vistors_info

---Recency 
select first_name,Max(last_vist)from dbo.Vistors_info
group by First_Name
order by 1 desc

