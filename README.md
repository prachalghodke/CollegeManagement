# College Management System

A College Management (ERP) Web Application developed using Java, Spring MVC, Spring Data JPA, JSP, and Oracle Database. This application manages academic activities such as Student Management, Faculty Management, Course Management, and Attendance Tracking using MVC architecture.

## Modules Implemented

Student Management  
- Add new students  
- View student details  
- Update student information  
- Delete student records  

Faculty Management  
- Add faculty details  
- View and manage faculty information   

Attendance Management  
- Mark student attendance  
- Store attendance records in the database  
- View attendance details based on student 
- Helps in tracking student presence for academic monitoring  

## Architecture

This project follows the Model–View–Controller (MVC) architecture.  
Model: Entity classes like Student, Faculty, and Attendance  
View: JSP pages for user interface  
Controller: Spring MVC controllers handle requests  
Repository: Spring Data JPA for database operations  

## Technology Stack

Language: Java  
Backend Framework: Spring MVC  
ORM: Spring Data JPA  
Frontend: JSP  
Database: Oracle Database  
Build Tool: Maven  

## Project Structure

CollegeManagement  
src  
 └── main  
     ├── java  
     │    └── com  
     │         ├── controller  
     │         ├── model  
     │         ├── repository  
     │         └── service  
     └── webapp  
          └── WEB-INF  
               └── views  

pom.xml  

## How to Run the Project

1. Clone the repository  
git clone https://github.com/prachalghodke/CollegeManagement.git  

2. Import the project into Eclipse or IntelliJ as a Maven project  

3. Configure Oracle Database  
Create required tables and update database credentials in application.properties  

4. Build and run the project  
mvn clean install  
mvn spring-boot:run  

5. Open the application in browser  
http://localhost:8080  

## Key Learning Outcomes

- Spring MVC request handling  
- CRUD operations using Spring Data JPA  
- Attendance management logic  
- JSP integration with backend  
- Oracle Database connectivity  
- MVC architecture implementation  

## Future Enhancements

- Attendance percentage calculation  
- Role-based authentication (Admin, Faculty, Student)  
- Attendance report export  
- UI improvements  

## Support

If you find this project useful, please star the repository.

