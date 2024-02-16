[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/JwSLLxUh)

<h1>Database Migration and Rollback Instructions</h1>

The following set of instructions provides a way for moving database. The migration applies to renaming columns, modifying column lengths, and changing the structure of one table. A rollback method is also available to reverse changes if required.


<h2>Connection to database</h2> <br>
•	Terminal or command prompt should be opened <br>
•	Enter the psql command: psql -U username -d database_name<br>
•	It will be required to write the password of postgres user<br>
•	After finishing mentioned steps,  you are connected to your database<br>


<h2>Creation of required tables for database</h2> <br>
•	It is required to write in the terminal the command :  \i  path/to/creation_insert_tables.sql <br>
•	The second example is provided for better clarification  <br>
\i  C:/Users/gsrus/Desktop/University/creation_insert_tables.sql

<h2>Instruction to run scripts for migration.sql and rollback.sql</h2>
•	It is required to write in the terminal the command :  \i  path/to/migration.sql <br>
•	It is required to write in the terminal the command :  \i  path/to/rollback.sql <br>
