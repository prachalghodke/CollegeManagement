package com.pg.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pg.entity.Attendance;
import com.pg.entity.Student;
import com.pg.repository.StudentRepository;
import com.pg.service.IAttendanceServiceImpl;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AttendanceController 
{
	
	  @Autowired
	  public StudentRepository studRepo;
	  
	  @Autowired
	  public IAttendanceServiceImpl attendSerice;
	
	  @GetMapping("/attendance")
      public String showAttendanceFormPage(Map<String , Object> map)
      {
    	  List<Student> list = studRepo.findAll();
    	  
    	  map.put("students", list);
    	  
    	  return "take_attendance";
      }
	  
	    @PostMapping("/saveattendance")
	    public String saveAttendance(HttpServletRequest req, RedirectAttributes attrs)
	    {

	        List<Student> list = studRepo.findAll();

	        for (Student s : list) {
	            String status = req.getParameter("status_" + s.getSid());

	            Attendance att = new Attendance();
	            att.setAttendance_date(LocalDate.now());
	            att.setStatus(status);
	            att.setStudent(s);

	            attendSerice.saveAttendance(att);
	        }

	        attrs.addFlashAttribute("msg", "Attendance Saved Successfully!");

	        return "redirect:attendancereport";
	    }
	    
	    @GetMapping("/attendancereport")
	    public String attendanceReport(Map<String , Object> map)
	    {
	    	List<Attendance> lists = attendSerice.showAllAttendance();
	    	
	    	map.put("attendanceList", lists);
	    	
	    	return "attendance_report";
	    }
      
} 











