spool insertdatas
column cl_gender format a10
column ls_case_type format a15
column lyr_name format a20
column lyr_qual format a23
column lyr_lf_name format a25
column ls_status format a15
column ls_cl_lname format a15
column ls_cl_fname format a15
column ls_lyr_name format a20
column ls_role format a10
column lf_name format a25
column owner format a20
column table_name format a15
column constraint_name format a20
set linesize 180
set pagesize 50
set feedback on
set echo on
insert into law_firm values ('Parks, Skinner, and Jiang', '280 Melcher Hall', 'Houston, Texas');
insert into law_firm values ('Attar, Kelley, and Valmoores', '262 Melcher Hall', null);
insert into law_firm values ('Miller and Wayhan', '270 Melcher Hall', 'Calgary, Alberta');
insert into law_firm values ('Newman and Newman', '1714 Palasades Parkway','San Diego, California');
insert into law_firm values ('Khumawala and Khumawala', null, 'Houston, Texas');
insert into law_firm values ('Newman and Newman', '3131 West Holcombe', 'Houston, Texas');
insert into law_firm values ('Hickman and Moore', '44 Thornhill Drive', 'Enid, Oklahoma');
insert into law_firm values ('Yang and Zhang', '2121 Fannin', 'Houston, Texas');
insert into law_firm values ('Belinne and Felvegi', null, null);
insert into law_firm values ('Abramowitz and Goffman', '8443 Katy Freeway', 'Houston, Texas');
insert into law_firm values ('Umanath and Nilakanta', '362 Aberdeen', 'Mason, Ohio');
insert into law_firm values ('Doerr and Mathur', '6440 Fannin', 'Houston, Texas');
select * from law_firm;
insert into lawyer values ('Yang and Zhang', 'K Zhang', 'T2341', 'Duke Law School', 13);
insert into lawyer values (null, 'M Crimi', 'T3243', 'UH Law School', 1);
insert into lawyer values ('Parks, Skinner, and Jiang', 'D Rickard', 'T1221', 'South Texas Law School', 9);
insert into lawyer values ('Parks, Skinner, and Jiang', 'L Silva', 'T3245', 'INCAE Law School', 11);
insert into lawyer values ('Khumawala and Khumawala', 'M Khumawala', 'T1221', 'Michigan Law School', 3);
insert into lawyer values (null, 'Z Zhang', 'T5787', 'Michigan Law School', 13);
insert into lawyer values ('Attar, Kelley, and Valmoores', 'R Attar', 'T6119', 'UH Law School', 4);
insert into lawyer values (null, 'A Li', 'T2323', 'Yale Law School', 2);
insert into lawyer values ('Newman and Newman', 'M Newman', 'T3783', 'UH Law School', 20);
insert into lawyer values ('Abramowitz and Goffman', 'J Mosby', 'T3800', 'SMU Law School', 4);
insert into lawyer values ('Abramowitz and Goffman', 'S Sundar', 'T2511', 'UH Law School', 2);
select * from lawyer;
insert into client values ('Ly', 'Mai', 'F', '7137654234', '235 Aberdeen', 'K Zhang');
insert into client values ('Steven', 'Thomsen', 'M','2815328954', '3722 Georgetown', 'K Zhang');
insert into client values ('Diane', 'Macedo', 'f', '8326442378', '7500 Brompton', 'R Attar');
insert into client values ('Nick', 'Wallace', 'M', '7134659023', '6102 Wake Forest', 'M Khumawala');
insert into client values ('Binh', 'Nguyen', 'F', '8325470987', '6312 Westchester', 'L Silva');
insert into client values ('Nader', 'Badderine', 'M', null, '1403 Goldsmith', 'L Silva');
insert into client values ('Jessie', 'Penilla', 'M', '7135479823', '6504 Edloe', null);
insert into client values ('Chris', 'Ming', 'M', '7134659023', '4770 Calhoun', 'P Pressler');
insert into client values ('Clara', 'Bellman', 'F', '5128963421', '4770 Calhoun', 'Z Zhang');
insert into client values ('Wilson', 'Pfung', 'M', '2815643276', '4770 Calhoun', 'D Rickard');
insert into client values ('Iggy', 'Harrison', 'M', '7132437895', '432 Canyon Lake', 'D Rickard');
insert into client values ('Samuel', 'Castillo', 'm', '7138261890', '4110 Fannin', 'A Li');
select * from client;
insert into law_suit values ('Ly', 'Mai', 'P', 'C2313', 'Civil', 'Pending', 'K Zhang');
insert into law_suit values ('Clara', 'Bellman', 'D', 'C1234', 'Civil', 'Trial', 'Z Zhang');
insert into law_suit values ('Richard', 'Scamell', 'D', 'C7723', 'Criminal', 'Pending', 'D Rickard');
insert into law_suit values ('Steven', 'Thomsen', 'P', 'C3245',  'Civil', 'Pending', null);
insert into law_suit values ('Clara', 'Bellman', 'D', 'C1235', 'Civil', 'Pending', 'Z Zhang');
insert into law_suit values ('Gloria', 'Morris', 'P', 'C1567', 'Civil', 'Trial', 'K Zhang');
insert into law_suit values ('Nader', 'Badderine', 'D', 'C4389',  'Civil', 'Pending', null);
insert into law_suit values ('Binh', 'Nguyen', 'P',  'C2783',  'Civil', 'Trial', 'Zhang and Yang');
insert into law_suit values ('Binh', 'Nguyen', 'P', 'C1211',  'Civil', 'Pending', 'L Silva');

select * from law_suit;
column cl_gender format a10
column ls_case_type format a15
column lyr_name format a20
column lyr_qual format a23
column lyr_lf_name format a25
column ls_status format a15
column ls_cl_lname format a15
column ls_cl_fname format a15
column ls_lyr_name format a20
set linesize 180
set pagesize 50
set feedback on
set echo on
select * from law_firm;
select * from lawyer;
select * from client;
select * from law_suit;
delete from law_firm where lf_name like ('%Abramowitz and Goffman%');
delete from law_firm where lf_name like ('%Newman and Newman');
delete from lawyer where lyr_name like ('%Z Zhang');
delete from lawyer where lyr_name like ('%Li%');
delete from law_firm where lf_name like ('%Newman and Newman');
delete from client where cl_lname like ('%Mai%');
delete from client where cl_lname like ('%Pfung%');
delete from law_suit where ls_case_num = 'C1235';
update client set cl_lyr_nm = 'L Zhang' where cl_lname like ('%Castillo%');
update lawyer set lyr_lf_name = 'Yang and Zhang' where lyr_name = 'A Li';
update lawyer set lyr_emp# = 'T1221' where lyr_name = 'K Zhang';
select * from law_firm;
select * from lawyer;
select * from client;
select * from law_suit;
column constraint_type format a15
column column_name format a25
select owner, constraint_name, constraint_type, table_name, status from user_constraints
where table_name in ('LAW_FIRM', 'LAWYER', 'CLIENT', 'LAW_SUIT');
select * from user_cons_columns
WHERE TABLE_NAME IN ('LAW_FIRM', 'LAWYER', 'CLIENT', 'LAW_SUIT');
commit;
spool off






 


