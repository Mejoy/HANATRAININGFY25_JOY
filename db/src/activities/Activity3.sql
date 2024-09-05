--Activity 3: Data Manipulation

--Change the PROFLEVEL “P0” to “P1” for the SAPNO with the value 10002 and SKILLID with the value 2.

UPDATE "11435202_1"."HANA_TRAINING.data::TB_SKILLSET"
SET PROFLEVEL = 'P1'
where SAPNO = '10002' and SKILLID = '2' ;

--Modify the column value of SKILLNAME to Functional Testing where the SKILLID is 2

UPDATE "11435202_1"."HANA_TRAINING.data::TB_SKILL_INFO"
SET SKILLNAME = 'Functional Testing'
where SKILLID = '2' ;

--Remove the record with 10009 as SAPNO from table TB_EMPLOYEE
Delete from "11435202_1"."HANA_TRAINING.data::TB_EMLOYEE" where SAPNO = 10009; 


--Soft delete records with 10010 as SAPNO from the tables TB_PROJECT and TB_SKILLSET. Soft delete means updating the DELETEFLAG column to value ‘1’.
UPDATE "11435202_1"."HANA_TRAINING.data::TB_EMLOYEE"
SET DELETEFLAG = '1'
where SAPNO = '10010' ;

UPDATE "11435202_1"."HANA_TRAINING.data::TB_SKILLSET"
SET DELETEFLAG = '1'
where SAPNO = '10010' ;
