package com.pg.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pg.entity.Attendance;
import com.pg.entity.Marks;
import com.pg.entity.Student;
import com.pg.service.IStudentServiceImpl;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController 
{
	 @Autowired
     private IStudentServiceImpl studService;
	 
	 @GetMapping("/addstudent")
	 public String registerStudentFormPage(@ModelAttribute("smsg") Student student)
	 {
		 return "add_student";
	 }
	 
	 @PostMapping("/addstudent")
	 public String addStudent(@ModelAttribute("smsg") Student student , RedirectAttributes attrs)
	 {
		 String msg = studService.addStudent(student);
		 
		 attrs.addFlashAttribute("resultMsg",msg);
		 
		 return "redirect:studentreport";
	 }
	 
	 @GetMapping("/studentreport")
	 public String studentReport(Map<String , Object> map)
	 {
		 List<Student> lists = studService.showAllStudents();
		 
		 map.put("studentlists", lists);
		 
		 return "student_report";
	 }
	 
	 @GetMapping("/sedit")
	 public String showEditStudentFormPage(@ModelAttribute("stud") Student student  , @RequestParam("no") int no)
	 {
		 Student stud = studService.showStudentById(no);
		 BeanUtils.copyProperties(stud, student);
		 
		 return "update_student";
	 }
	 
	 @PostMapping("/sedit")
	 public String updateStudent(@ModelAttribute("stud") Student student , RedirectAttributes attrs)
	 {
		 String msg = studService.updateStudent(student);
		 
		 attrs.addFlashAttribute("resultMsg" , msg);
		 
		 return  "redirect:studentreport";
	 }
	 
	 @GetMapping("sdelete")
	 public String deleteStudent(@RequestParam("no") int no , RedirectAttributes attrs)
	 {
		 String msg = studService.deleteStudentById(no);
		 
		 attrs.addFlashAttribute("resultMsg",msg);
		 
		 return  "redirect:studentreport";
	 }
	 
		 @GetMapping("/student_login")
		 public String showStudenLoginForm()
		 {
			return "s_login";
		 }
		 
		 @PostMapping("/student_login")
		 public String doLogin(@RequestParam String email , @RequestParam String password , HttpSession session , Map<String,Object> map)
		 {
			 Student stud = studService.studentLogin(email, password);
			 
			 if(stud != null)
			 {
				session.setAttribute("studentData", stud);
				 return "student_dashboard";
			 }
			 else
			 {
				 map.put("errorMsg", "Invalid email or password");
				 return "redirect :student_login";
			 }
		 }
		 
		 @GetMapping("/view_dashboard")
		 public String viewDashBoard()
		 {
			 return "student_dashboard";
		 }
		 
		 @GetMapping("/viewMarks")
		 public String viewMarks(HttpSession session , Map<String ,Object> map)
		 {
			Student student  = (Student) session.getAttribute("studentData");
			
			List<Marks> marksList = studService.findStudentMarks(student);	
			
			map.put("marksList", marksList);
			
			return "view_marks";
		 }
		 
		 
		 @GetMapping("/viewAttendance")
		 public String viewAttendance(HttpSession session , Map<String , Object> map)
		 {
			 Student student = (Student) session.getAttribute("studentData");
			 
			 if(student == null)
			 {
				 return "redirect:student_login";
			 }
			 
			 List<Attendance> attendanceList = studService.findStudentsAttendance(student);
			
			 map.put("attendance", attendanceList);
			 
			 return "view_attendance";
		 }
}































