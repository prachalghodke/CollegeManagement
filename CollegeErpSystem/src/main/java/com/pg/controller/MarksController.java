package com.pg.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pg.entity.Marks;
import com.pg.entity.Student;
import com.pg.repository.StudentRepository;
import com.pg.service.IMarkServiceImpl;

@Controller
public class MarksController 
{
	@Autowired
	private StudentRepository studRepo;
	
	@Autowired
	private IMarkServiceImpl markService;
	
	 @GetMapping("/assginmark")
     public String showFormPage(@RequestParam("no") Integer no , Map<String , Object> map)
     {
    	 Student stud = studRepo.findById(no).orElseThrow(() -> new IllegalArgumentException("Invalid id"));
    	 
    	 map.put("student", stud);
    	 
    	 return "assign_marks";
    	 
     }
	 
	 @PostMapping("/assginmark")
	 public String saveMarks(@ModelAttribute("mmsg") Marks mark , @RequestParam ("sid") Integer sid , RedirectAttributes attrs)
	 {
		 String msg = markService.addMarks(mark, sid);
		 
		 attrs.addFlashAttribute("msg" , msg);
		 
		 return "redirect:studentreport";
	 }
	 
	 @GetMapping("/viewmarks")
	 public String viewMarks(@RequestParam("sid") Integer sid , Map<String , Object> map)
	 {
		 Student stud  = studRepo.findById(sid).orElseThrow(() -> new IllegalArgumentException("Invalid id"));
		 
		 map.put("student", stud);
		 map.put("marksList", stud.getMarks());
		 
		 return "view_marks";
	 }
	 
	 
}






