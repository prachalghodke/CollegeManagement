package com.pg.service;

import java.util.List;
import java.util.Optional;

import com.pg.entity.Faculty;
import com.pg.entity.Student;

public interface IStudentServiceImpl 
{
    public String addStudent(Student student);
    
    public List<Student> showAllStudents();
    
    public String updateStudent(Student stud);
    
    public Student showStudentById(int id);
    
    public String deleteStudentById(int id);
    
    public Student studentLogin(String email , String password);
    
   // public Optional<Faculty> loginStudentDetails(String email , String pass);
}
