package com.pg.service;

import java.util.List;

import com.pg.entity.Attendance;
import com.pg.entity.Marks;
import com.pg.entity.Student;

public interface IStudentServiceImpl 
{
    public String addStudent(Student student);
    
    public List<Student> showAllStudents();
    
    public String updateStudent(Student stud);
    
    public Student showStudentById(int id);
    
    public String deleteStudentById(int id);
    
    public Student studentLogin(String email , String password);
    
    public List<Marks> findStudentMarks(Student student);
    
    public List<Attendance> findStudentsAttendance(Student student);
    
   // public Optional<Faculty> loginStudentDetails(String email , String pass);
}
