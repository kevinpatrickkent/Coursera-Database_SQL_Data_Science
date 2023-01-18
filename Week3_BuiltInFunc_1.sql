/* Exercise 1: Create the Pet Rescue table
Rather than create the table manually by typing the DDL commands in the SQL editor, you will execute a script containing the create table command.

Download the script file PETRESCUE-CREATE.sql
Note: To download, just right-click on the link above and click on Save As.. or Save Link As... depending on your browser. Save the file as a .sql file and not HTML.

Login to IBM Cloud and go to the Resources Dashboard: https://cloud.ibm.com/resources where you can find the Db2 service that you created in a previous Lab. Click on the Db2-xx service. Next, open the Db2 Console by clicking on Open Console button. Go to the Run SQL page. The Run SQL tool enables you to run DDL and SQL statements.

Click on the + (Add New Script) icon.

Click on From File.

Locate the file PETRESCUE-CREATE.sql that you downloaded to your computer earlier and open it.

Once the statements are in the SQL Editor tool, you can run the queries against the database by selecting the Run all button.

On the right side of the SQL editor window you will see a Result section. Clicking on a query in the Result section will show the execution details of the job - whether it ran successfully or had any errors or warnings. Ensure your queries ran successfully and created all the tables.

Now you can look at the tables you created. Navigate to the three-bar menu icon, select Explore, then click on Tables.

Select the Schema corresponding to your Db2 userid. Then on the right side of the screen you should see the newly created PETRESCUE table listed (plus any other tables you may have created in previous labs e.g. INSTRUCTOR, TEST, etc.).

Click on any of the tables and you will see its SCHEMA definition (that is list of columns, their data types, and so on). You can also click View Data to view the content of the table.

Exercise 2: Aggregate Functions
Query A1: Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table.

Query A2: Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST.

Query A3: Enter a function that displays the maximum quantity of animals rescued.

Query A4: Enter a function that displays the average cost of animals rescued.

Query A5: Enter a function that displays the average cost of rescuing a dog. */

SELECT * FROM PETRESCUE;

SELECT SUM(COST) AS SUM_OF_COST FROM PETRESCUE;

SELECT MAX(QUANTITY) AS MAX_QUANT_ANMLS_RESC FROM PETRESCUE;

-- Solution in training: select AVG(COST) from PETRESCUE
-- I interpreted this question as the average cost per pet saved
-- not the average of the column as calculated in the solution.

SELECT SUM(COST)/SUM(QUANTITY) AS AVG_COST_RESCUE FROM PETRESCUE;

SELECT SUM(COST)/SUM(QUANTITY) AS AVG_COST_RESCUE FROM PETRESCUE WHERE ANIMAL = 'Dog';

