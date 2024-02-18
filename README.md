[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/JwSLLxUh)

<h1>Database Migration and Rollback Instructions</h1>

<p>This README document contains detailed instructions for migrating and rolling back database changes.The migration applies to renaming columns, modifying column lengths, and changing the structure of table. A rollback method is also available to reverse changes if required.</p><br>

<p>This README provides two methods for executing the SQL scripts:</p>
1.Running Scripts from Terminal<br>
2.Running Scripts from pgAdmin (Alternative way)<br>

<h2>Prerequisites:</h2><br>
•PostgreSQL Database: Verify that the system has PostgreSQL installed.<br>
•Ensure that pgAdmin has been configured up and installed on your system (nedeed for Alternative way).<br>
•Details of the database connection: To connect to your PostgreSQL database, prepare the login, password, and database name.<br>
•Access Permissions: Make that the PostgreSQL user you are using has the necessary permissions to create and edit tables.<br>


<h2>Running Scripts from Terminal</h2><br>
<h3>Downloading the SQL scripts.</h3><br>
<p>To get started with the migration, download the necessary SQL scripts (creation_insert_tables.sql, migration.sql, and rollback.sql) from the GitHub repository. Following is way to obtain  scripts:</p><br>
1.Visit the GitHub repository that contains files.  https://github.com/ADA-GWU/2024-a1-db-migration-Shafiga2000 <br>
2.Download scripts from GitHub repository <br>
3.Locate the following SQL files: creation_insert_tables.sql, migration.sql, and rollback.sql.<br>

<h3>Connection to database</h3> <br>
To get started, verify that you can access the terminal or command prompt. Follow the following steps to connect to your database:<br>
1.Open the terminal or command prompt on your system. <br>
2.In the terminal or command prompt, run the following command: psql -U username -d database_name<br>
3.It will be required to write the password of postgres user<br>
After authorization, you will be able to connect to your database<br>

<h3>Creation of required tables for database</h3> <br>
Before beginning with the migration, make sure that the correct tables have been established in your database. Complete these steps:<br>
1.In the terminal or command prompt, run the following command:  \i  path/to/creation_insert_tables.sql <br>
2.Replace path/to/creation_insert_tables.sql with the actual path to the SQL script that generates and adds data into the specified tables.<br>
This command runs the SQL script, which creates and fills all required tables. Example from my system:<br>
\i  C:/Users/gsrus/Desktop/University/creation_insert_tables.sql

<h3>Running Migration and Rollback Scripts</h3>
Let's begin to execute the migration and rollback scripts.<br>

<h4>Migration Script</h4><br>
To implement database migration changes, perform the following steps:<br>
1. In the terminal or command prompt, run the following command:  <br>
\i  path/to/migration.sql <br>
2.Replace path/to/migration.sql with the correct path to the SQL migration script.<br>

This script performs  the required database adjustments.<br>

<h4>Rollback Script</h4><br>
To reverse the changes made during migration, use the rollback script. Below is how to perform this operation:<br>
1.In the terminal or command prompt, run the following command:  
\i  path/to/rollback.sql <br>
2.Replace path/to/rollback.sql with the correct path to the SQL rollback script.<br>
Executing this script will reverse the migration changes and return the database to its earlier state.


<h2>Running Scripts from pgAdmin (Alternative way)</h2><br>
These instructions will allow you to use pgAdmin to run the SQL scripts, giving you an alternate way to work with your PostgreSQL database.<br>

1.Open pgAdmin: Open pgAdmin and provide your password  to establish a connection to your PostgreSQL server.<br>
2.To access the Query Tool:  find your database in the Object Browser (click Servers), then right-click and select "Query Tool" to launch a new query window.<br>
3.Open SQL Script: To run the SQL script you want to run (such as creation_insert_tables.sql, migration.sql, or rollback.sql), use the Query Tool's "Open File" option.<br>
4.Execute Script: To execute the SQL script  when it has loaded in the Query Tool, click the "Execute" button or press F5.<br>
5.Analyze Output: To be sure the script executed successfully, check through the output messages once it has been run.<br>

