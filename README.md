# IT635FinalProject
My project i present to my viewers is SQL Injection project for an employees Database. 
For my project I construct a database, using PHP, and HTML form  a front back end to use the data.
This Database permits administrators to view each and every employees detai information such as their department, salary, employeeid, and even their passwords.
The intention of this projects is to unauthorized personell to go into the database and actually increase their salary, and vice versa.

 I started this project by first cloning with the following command "git clone https://github.com/FaroukGhana/IT635FnalProject"
  
 After cloning  I changed my directory folder and run docker with this command," docker-compose up" This command allows me to start the docker and keep
 my project running. Once the project is running within the terminal, i open up and new browser, and visited this URL  https://http://192.168.99.100:8080/

The localhost window opens and prompt a log in. One would log into the system with one of the employees username and password created in the database.
for example; In the database I created Abdul Farouk with "abdul1" as his username and "A123" as his password. This login will open up Abdul's personal information is as follows:
Employee_ID:1
First_Name:Abdul
Last_Name:Farouk
salary:28600
Department ID:5
Department Name:Cybersecurity
Department Location:New Jersey

 The following information is shown above is abdul's data created in the database. The only way one could have access to Abdul's data would be Abdul himself, HR administrator or Abdul's superiors at work. In a nutshell, those who are required to view Abdul's data.
 
 In this project, I am going to use sql injection to ifiltrate Abdul's data and do some changes or even add records to the company database. 
 
I created 'anything' OR 'X' = 'X' as a SQL Injection password for all the employees username and password. This injection will by pass all the 
all the password and log in into the employee database. This sql injection allows someone to enter into salary section and actually increase
their salary or view important information of the employees that they dont have permission to do so.

Link: https://github.com/FaroukGhana/IT635FnalProject
Adminer Link : https://http://192.168.99.101:8080 - Making sure you running docker terminal with root as a password.

