--changes related to student table
ALTER TABLE STUDENTS RENAME COLUMN ST_ID TO STUDENT_ID; 
ALTER TABLE STUDENTS ALTER COLUMN ST_NAME TYPE VARCHAR(30);
ALTER TABLE STUDENTS ALTER COLUMN ST_LAST TYPE VARCHAR(30);
 
 
-- changes related to interests 
ALTER TABLE INTERESTS RENAME COLUMN INTEREST TO INTERESTS;


CREATE TABLE INTERESTS_TMP AS
SELECT STUDENT_ID,
    CONCAT('{',STRING_AGG(CONCAT('"', INTERESTS, '"'), ','), '}') AS INTERESTS --adds {} and " "
FROM INTERESTS GROUP BY STUDENT_ID ORDER BY STUDENT_ID ASC;

--  replacing old interests with created table 
DROP TABLE INTERESTS;
ALTER TABLE INTERESTS_TMP RENAME TO INTERESTS;
