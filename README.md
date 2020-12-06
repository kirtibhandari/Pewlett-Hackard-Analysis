# **Pewlett-Hackard-Analysis**

## **Overview of the analysis:**

A company named Pewlett-Hackard is a large company which has several thousand employees. It has been existing around for a long time. Now that there is a time when the baby boomers begin to retire at a rapid rate, the company is looking towards providing solution to this situation is to offer retirement package of mentorship to employees who qualify certain criteria. Secondly, it wants to know which positions will need to be filled in near future.

### **Resources:**
We have been provided data about company employees in the form of 6 csv files namely
departments.csv, dept_manager.csv, employees.csv, dept_emp.csv, salaries.csv and titles.csv.

Also, we have been told how these csv files are related to each other in terms of primary and foreign key relationships, as represented below with the help of ERD (Entity Relationship Diagram).

**Entity- Relationship Diagram**

![Entity_Relationship_Diagram](https://github.com/kirtibhandari/Pewlett-Hackard-Analysis/blob/main/Resources/EmployeeDB.png)

We have been asked to find out 
1. The number of retiring employees by title
2. Employees Eligible for Mentorship Program
## **Results:**

To be able to find out number of retiring titles we had to perform certain steps to filter:
- Firstly, from available csv files, names of all employees who are going to retire, were filtered and stored into retirement_titles.csv

    **Retirement_titles**

    ![](https://github.com/kirtibhandari/Pewlett-Hackard-Analysis/blob/main/Resources/retirement_titles.png)

    But these had duplicate entries as many employees got changed their titles due to promotion or department supposedly during their service tenure.

- Thus, we need to find out employees, with most recent titles to remove duplicate employee data and the following table was obtained and results were stored in unique_titles.csv:

    **Unique_titles**

    ![](https://github.com/kirtibhandari/Pewlett-Hackard-Analysis/blob/main/Resources/unique_titles.png)

- Since, we need all the retiring titles in order to see which positions will be needed to be filled and how many, we obtained the following table which showed all the retiring employees by tiles as follows whose results were stored in retiring_titles.csv:

    **Retiring_titles**

    ![](https://github.com/kirtibhandari/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles.png)

- Also, we need to find out the employees who qualify for the mentorship where they can act as mentors consequent to their retirement, to the new intake of employees. Thus we created the following table that had the required information and results were stored in mentorship_eligibility.csv.

    **Mentorship_Eligibility**

    ![](https://github.com/kirtibhandari/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_eligibility.png)


    Hence, we have the data of retiring employees by titles , as retiring_titles.csv and employees who qualified for mentorship in mentorship_eligibility.csv.
## **Summary:**

**a. Number of roles which will need to be filled as the "silver tsunami" begins to make an impact**
- There will be 7 kinds of roles, 72458 in total, out of which will be required to be filled as "silver tsunami" begins to make impact such as 29414 Senior Engineers will be needed, 14222 Engineers, 28254 Senior Staff, 12243 Staff, 4502 Technique Leaders, 1761 Assistant Engineers and 2 Managers.

**b. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**
- Total 1549 employees qualify as per the eligibility criteria of the mentorship program, from the mentorship_eligibility table.

    To find out the total number of employees, who would be retiring, we obtained the following:
    **ADDITIONAL TABLE** named retiring_employees stored the same in retiring_employees.csv:

  
    **Retiring Employees**

    ![](https://github.com/kirtibhandari/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_employees.png)

    Total number of employees retiring were obtained in above retiring_employees, because unique_titles did not filter out the employees who were already retired.
    
- So, we can clearly see, to train total number of new 72458 employees, as these many employees are going to retire, as discovered from above table, 1549 mentors form mentorship_eligibility table, means that there are approximately 47 new employees per mentor. This ratio does not ensure that proper attention could be given to all of the new 72458 employees.

    Hence, there are not enough qualified retirement-ready employees in the departments to mentor the next generation of the company's employees.

- Secondly, we can see, department wise, how many , qualified retirement ready employees are there for mentorship, in which departments on the company, we created the below **additional table** and stored results in retiring_department_wise.csv:

    **Employees retiring department wise**

    ![](https://github.com/kirtibhandari/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_department_wise.png)

- Also, we created below **additional table** to find out department wise mentors available and stored results in  mentorship_eligibility_dept_wise.csv.

    **Mentors available Department wise**

    ![](https://github.com/kirtibhandari/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_eligibility_dept_wise.png)

    The above tables clearly show that lesser mentors available in comparison the the employees retiring from that department.