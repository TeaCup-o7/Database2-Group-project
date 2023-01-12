spool CreateTableSpool
drop table client cascade constraints purge;
drop table lawyer cascade constraints purge;
drop table law_firm cascade constraints purge;
drop table law_suit cascade constraints purge;

CREATE TABLE law_firm
(Lf_name varchar2(45) CONSTRAINT pk_Lf_name PRIMARY KEY NOT NULL,
Lf_address varchar2(30) NOT NULL,
Lf_location varchar2(30) NOT NULL,
CONSTRAINT chk_loc CHECK (Lf_location LIKE '%Ohio%' OR Lf_location LIKE '%Texas%' OR Lf_location LIKE '%California%')
);

CREATE TABLE lawyer
(Lyr_firm varchar2(45),
Lyr_name varchar2(30) CONSTRAINT pk_Lyr_name PRIMARY KEY NOT NULL,
Lyr_emp# varchar2(11) NOT NULL CONSTRAINT uq_Lyr_emp# UNIQUE,
Lyr_qual varchar2(37) NOT NULL,
Lyr_exp smallint NOT NULL,
CONSTRAINT fl_Lyr_firm FOREIGN KEY (Lyr_firm) REFERENCES law_firm (Lf_name) ON DELETE CASCADE
);

CREATE TABLE client
(Cl_fname varchar2(15) NOT NULL,
Cl_lname varchar2(23) NOT NULL,
Cl_gender varchar2(1),
Cl_ph# number(10) NOT NULL,
Cl_address varchar2(30) NOT NULL,
Cl_lawyer varchar2(45) NOT NULL,
CONSTRAINT pk_Cl_name PRIMARY KEY (Cl_fname, Cl_lname),
CONSTRAINT fk_Cl_lawyer FOREIGN KEY (Cl_lawyer) REFERENCES lawyer (Lyr_name),
CONSTRAINT chk_gndr CHECK (Cl_gender IN ('f', 'm', 'F', 'M'))
);

CREATE TABLE law_suit
(Ls_client_fname varchar2(40) NOT NULL,
Ls_client_lname varchar2(40) NOT NULL,
Ls_role varchar2(1) NOT NULL,
Ls_case_num varchar2(17) CONSTRAINT pk_Ls_case_num PRIMARY KEY NOT NULL,
Ls_case_type varchar2(11),
Ls_status varchar2(7) NOT NULL,
Ls_lawyer_name varchar2(45) NOT NULL,
CONSTRAINT fk_Ls_name FOREIGN KEY (Ls_client_fname, Ls_client_lname) REFERENCES client (Cl_fname, Cl_lname),
CONSTRAINT fk_Ls_lawyer_name FOREIGN KEY (Ls_lawyer_name) REFERENCES lawyer (Lyr_name),
CONSTRAINT chk_role CHECK (Ls_role IN ('P','D'))
);

spool off

select * from lawyer;

