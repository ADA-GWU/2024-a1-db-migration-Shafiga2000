 --revert changes for students table
ALTER TABLE STUDENTS RENAME COLUMN STUDENT_ID TO ST_ID;
ALTER TABLE STUDENTS ALTER COLUMN ST_NAME TYPE VARCHAR(20);
ALTER TABLE STUDENTS ALTER COLUMN ST_LAST TYPE VARCHAR(20);

--revert changes for interests table
-- temp table to take data and return to previous from from uppdated interests
CREATE TABLE INTERESTS_TMP AS -- unnest from array to row
SELECT STUDENT_ID, -- replacing all  , '' {} 
    UNNEST(string_to_array(REPLACE(REPLACE(REPLACE(interests, '"', ''), '{', ''), '}', ''), ',')) AS INTEREST FROM INTERESTS;

-- clear original table and return data to it 
TRUNCATE TABLE INTERESTS;
INSERT INTO INTERESTS  SELECT * FROM INTERESTS_TMP;

-- drop the temporary table and change column
DROP TABLE INTERESTS_TMP;
ALTER TABLE INTERESTS RENAME COLUMN INTERESTS TO INTEREST;
