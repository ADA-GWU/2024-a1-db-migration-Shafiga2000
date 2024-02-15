[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/JwSLLxUh)

                                        #Database Migration and Rollback Instructions

The following set of instructions provides a way for moving database. The migration applies to renaming columns, modifying column lengths, and changing the structure of one table. A rollback method is also available to reverse changes if required.

Connection to database 
•	Terminal or command prompt should be opened
•	Enter the psql command: psql -U username -d database_name
•	It will be required to write the password of postgres user
•	After finishing mentioned steps,  you are connected to your database


Creation of required tables for database
•	It is required to write in the terminal the command :  \i  path/to/creation_insert_tables.sql
•	The second example is provided for better clarification
\i  C:/Users/gsrus/Desktop/University/creation_insert_tables.sql

Instruction to run scripts for migration.sql and rollback.sql
•	It is required to write in the terminal the command :  \i  path/to/migration.sql
•	It is required to write in the terminal the command :  \i  path/to/rollback.sql
