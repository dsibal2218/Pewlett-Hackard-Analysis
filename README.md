# Pewlett-Hackard-Analysis
**Overview**: We were given 6 dataset(in csv format) listed as follows:
  1. Departments dataset with dept_no and dept_name fields
  2. Manager dataset with dept_no, emp_no, from_date, and to_date fields
  3. Employees dataset with emp_no, birth_date, first_name, last_name, gender and hire_date fields
  4. Department Employees dataset with emp_no,dept_no, from_date and to_date fields
  5. Salaries dataset with emp_no, salary, from_date, to_date
  6. Titles dataset with emp_no, title,from_date, and to_date fields

In addition to multiple analyses and queries already performed in the module, we were asked to provide additiona queries to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. We are then to write a report that summarizes our analysis that will hopefully help prepare the company plan for the "silver tsunami" as many current employees reach retirement age. 

## Requirements and Details of the Analysis

1. Using the ERD we created in the module as a reference (shown below) we are to create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. 


![EmployeeDB](https://user-images.githubusercontent.com/98235755/162637101-1f6ff308-0718-4791-97a7-d7bea040fbf9.png)


<img width="651" alt="Screen Shot 2022-04-10 at 3 56 56 PM" src="https://user-images.githubusercontent.com/98235755/162637398-e3fcbe19-51d2-4ca9-8d78-a7540926d2c3.png">


2. Alot of employees who have left the company are still showing up in the database. We will have to create a query that will only include those who are still currently employed. Additionally, some employees may have multiple titles in the database due to promotions and therefore, we’ll need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. 

<img width="651" alt="Screen Shot 2022-04-10 at 3 56 56 PM" src="https://user-images.githubusercontent.com/98235755/162637415-e7139a9f-b5dd-45ba-b0e7-ac2533964ec6.png">


4. Use the COUNT() function to create a table that has the number of retirement-age employees by most recent job title. 


<img width="719" alt="Screen Shot 2022-04-10 at 3 58 43 PM" src="https://user-images.githubusercontent.com/98235755/162637462-21244822-944b-4b2a-93f5-2a60c26b83b0.png">



5. Create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965


<img width="623" alt="Screen Shot 2022-04-10 at 4 00 20 PM" src="https://user-images.githubusercontent.com/98235755/162637510-5d223f19-1811-4678-a27f-4884325d5255.png">


## Results of the Analysis

1. There were 72,458 total employees who are eligible for retirement based on the birth date criteria, which is the potential amount of positions we will need to fill


2. The breakdown of the retirees by position/title is below:

<img width="222" alt="Screen Shot 2022-04-10 at 4 12 55 PM" src="https://user-images.githubusercontent.com/98235755/162637993-7b05db88-fce6-4958-91d9-c024a193632a.png">

3. The query on the number of eligible employees being eligible for mentorship program (criteria based on being born in 1965) only returned 1549 employees. Below is the breakdown by position. 

<img width="219" alt="Screen Shot 2022-04-10 at 4 20 44 PM" src="https://user-images.githubusercontent.com/98235755/162638242-d0168786-f908-4f86-9f14-8af778447613.png">

4. Summary: Based on the above findings, it is clearly not enough qualified, retirement-ready employees to mentor the next generation of PH. I think it would be worth looking into the mentorship eligibility (e.g. adjusting the age limit) or offering retiring age employees some casual hours (or asking for consultative service) to provide mentorship to the next generation. Moreover, an additional information I would look at is the breakdown of the retirement-eligible employees by dept by position to see an impact to each dept and perhaps help figure out which deparment/position will need to get prioritized as we recruit or train new employees. Below shows a section of the retiring employees total by dept and by title. The file is also saved in the Data folder. 

<img width="360" alt="Screen Shot 2022-04-10 at 4 53 41 PM" src="https://user-images.githubusercontent.com/98235755/162639409-01af16a9-6f0a-48fe-b073-0d597e8d9f07.png">
