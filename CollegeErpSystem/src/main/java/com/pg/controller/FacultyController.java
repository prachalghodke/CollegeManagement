package com.pg.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.pg.CollegeErpSystemApplication;
import com.pg.entity.Faculty;
import com.pg.service.IFacultyServiceImpl;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class FacultyController
{

	@Autowired
	private IFacultyServiceImpl factService;

	
   
	
	@GetMapping("/f_dashboard")
	public String showFacultyDashBoard(Map<String , Object> map, HttpSession hs)
	{
		      Object ob = hs.getAttribute("fact");
		      
		     map.put("loginMsg", ob);
		return "faculty_dashboard";
	}
	
	 @GetMapping("/faculty_login")
	 public String facultyLogin(@ModelAttribute("fmsg") Faculty faculty)
	 {
		 return "f_login";
	 }
	
	@PostMapping("/faculty_login")//faculty_login
	public String loginFaculty(@ModelAttribute("fmsg") Faculty faculty , RedirectAttributes attrs , Map<String , Object> map, HttpServletRequest req)
	{
		System.out.println(faculty);
		System.out.println(faculty.getEmail()+" "+faculty.getPassword());
	Optional<Faculty> opt = factService.loginFacultyDetails(faculty.getEmail(), faculty.getPassword());
		
	      HttpSession hs = req.getSession();
	      if(opt!=null) {
	      if(opt.isPresent()) {
	    	  map.put("loginMsg", opt.get());
				hs.setAttribute("fact", opt.get());
				
				 return "faculty_dashboard";
	      }} {
	    	 
	    	 attrs.addFlashAttribute("loginMsg", "invalid user and pass");
			
				
			 return "redirect:faculty_login";
		}
	}
	
	 @GetMapping("/addfaculty")
	 public String registerFacultyFormPage(@ModelAttribute("fmsg") Faculty Faculty)
	 {
		 return "add_faculty";
	 }
	 
	 @PostMapping("/addfaculty")
	 public String addFaculty(@ModelAttribute("fmsg") Faculty faculty , RedirectAttributes attrs)
	 {
		 String msg = factService.addFaculty(faculty);
		 
		 attrs.addFlashAttribute("resultMsg" , msg);
		 
		 return "redirect:facultyreport";
	 }
	 
	 @GetMapping("/facultyreport")
	 public String showFacultyReport(Map<String , Object> map)
	 {
		 List<Faculty> lists = factService.showAllFaculty();
		 
		 map.put("facultylists", lists);
		 
		 return "faculty_report";
	 }
	 
	 @GetMapping("/edit")
	 public String showEditFacultyFormPage(@ModelAttribute("fact") Faculty faculty , @RequestParam("no") int no )
	 {
		 Faculty fact = factService.showFacultyById(no);
		
		 BeanUtils.copyProperties(fact, faculty);
		 
		 return "update_faculty";
		 
	 }
	 
	 @PostMapping("/edit")
	 public String editFaculty(@ModelAttribute("fact") Faculty faculty , RedirectAttributes attrs)
	 {
		 String msg = factService.updateFaculty(faculty);
		 
		 attrs.addFlashAttribute("resultMsg",msg);
		 
		 return "redirect:facultyreport";
	 }
	 
	 @GetMapping("/delete")
	 public String removeFaculty(@RequestParam("no") int no , RedirectAttributes attrs)
	 {
		 String msg = factService.deleteById(no);
		 
		 attrs.addFlashAttribute("resultMsg",msg);
		 
		 return "redirect:facultyreport";
	 }
	 
	 
}






