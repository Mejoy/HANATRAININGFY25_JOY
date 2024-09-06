--Activity 6: User Defined Functions

--a. Table function (.hdbfunction) which returns list of employees per PROJECT.

SELECT * FROM "11435202_1"."HANA_TRAINING.functions::TF_GET_EMPLOYEE"();

--. Table function (.hdbfunction) which returns total count of resources of each manager.
SELECT * FROM "11435202_1"."HANA_TRAINING.functions::TF_GET_COUNT_RESOURCES"();

--c. Scalar function (.hdbfunction) which returns concatenation of first name and last name of each employee.
SELECT "11435202_1"."HANA_TRAINING.functions::SF_GET_FULNAME_EMPLOYEE"('Joy'/*X <NVARCHAR(50)>*/,
                                                                       'Jacusalem'/*Y <NVARCHAR(50)>*/).FULLNAME AS FULLNAME
FROM DUMMY;

--d. Table function (.hdbfunction) that will display all the sap no, employee name, skill info, and manager name of each inputted EMPEID referring to skillset table.
SELECT * FROM "11435202_1"."HANA_TRAINING.functions::TF_GET_FULLLIST_EMPLOYEE"('raymond.c.mediarito'/*EMPEID <NVARCHAR(100)>*/)

--e. Table function (.hdbfunction) which returns list of employees at a given Roll-in date and Roll-off date.
SELECT * FROM "11435202_1"."HANA_TRAINING.functions::TF_GET_RIRO_DETAILS"()

--f. Scalar function (.hdbfunction) that will compute the total number skills of each resource that have date end on skill set is Current referring to skillset table.
SELECT "11435202_1"."HANA_TRAINING.functions::SF_TOTAL_SKILLS"('Vera'/*FIRSTNAME <NVARCHAR(50)>*/).LV_COUNT AS LV_COUNT
FROM DUMMY
--g. Table function (.hdbfunction) that will display the list of employee age is greater than 20 and less than 29.
SELECT * FROM "11435202_1"."HANA_TRAINING.functions::TF_GET_AGE"()

--h. Table function (.hdbfunction) that will return employee names where skill name is SAP HANA and Testing then proficiency level is P2 or P1 referring to skillset tablei. 
SELECT * FROM "11435202_1"."HANA_TRAINING.functions::TF_GET_SKILL"()

--i. Table function (.hdbfunction) that will display all names of employees on ascending order and group by skill id.
SELECT * FROM "11435202_1"."HANA_TRAINING.functions::TF_GET_GROUP_SKILL"()

