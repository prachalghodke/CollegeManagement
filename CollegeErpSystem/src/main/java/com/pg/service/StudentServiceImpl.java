package com.pg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pg.entity.Attendance;
import com.pg.entity.Marks;
import com.pg.entity.Student;
import com.pg.repository.AttendanceRepository;
import com.pg.repository.StudentRepository;

@Service	
public class StudentServiceImpl implements IStudentServiceImpl
{
	@Autowired
	private StudentRepository studRepo;
	
	@Autowired
	private AttendanceRepository attendRepo;

	@Override
	public String addStudent(Student student) 
	{
		for(Student s : studRepo.findAll())
		{
			if(s.getEmail().equalsIgnoreCase(student.getEmail()))
			{
				return "failed";
			}
		}
		
		int id = studRepo.save(student).getSid();
		
		return " Student Succesfully Added having id val :: " + id;
	}

	@Override
	public List<Student> showAllStudents() 
	{
		List<Student> listOfStudent = studRepo.findAll();
		
		return listOfStudent;
	}

	@Override
	public String updateStudent(Student stud) 
	{
		Student student = studRepo.findById(stud.getSid()).orElseThrow(() -> new IllegalArgumentException("Invalid Id"));
		
		student.setSname(stud.getSname());
		student.setEmail(stud.getEmail());
		
		studRepo.save(student);
		
		return "Student Details Updated Successfully";
	}
	
	@Override
	public Student showStudentById(int id) 
	{
		Student student = studRepo.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid id"));
		
		return student;
	}
	
	@Override
	public String deleteStudentById(int id) 
	{
		Student stud = studRepo.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid id"));
		
		studRepo.deleteById(id);
		
		return "Student deleted successfully";
	}

	@Override
	public Student studentLogin(String email, String password)
	{
		
		Student stud = studRepo.findByEmailAndPassword(email, password);
		
		return stud;
	}

	@Override
	public List<Marks> findStudentMarks(Student student) 
	{
		List<Marks> studentMarks = student.getMarks();
		
		return studentMarks;
	}

	@Override
	public List<Attendance> findStudentsAttendance(Student student) 
	{
		List<Attendance> studentsAttendance = attendRepo.findByStudent_Sid(student.getSid());
		
		return studentsAttendance;
	}
	
	

}
