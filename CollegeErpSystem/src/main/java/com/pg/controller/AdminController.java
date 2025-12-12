package com.pg.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pg.entity.Admin;
import com.pg.entity.Faculty;
import com.pg.service.IAdminServiceImpl;

@Controller
public class AdminController
{
	@Autowired
	private IAdminServiceImpl adminService;
	
	@GetMapping("/a_dashboard")
	public String showAdminDashBoard()
	{
		return "admin_dashboard";
	}
	
	 @PostMapping("/admin_login")
	 public String loginAdmin(@ModelAttribute("amsg") Admin admin , RedirectAttributes attrs)
	 {
		 boolean isvalid = adminService.loginAdminDetails(admin.getEmail() , admin.getPassword());
		 
		 if(isvalid)
		 {
			 attrs.addFlashAttribute("loginMsg" , "Login Successful!");
			 return "admin_dashboard";
		 }	
		 else
		 {
			 attrs.addFlashAttribute("resultMsg" , "Invalid email or password");
			 return "redirect:admin_login";
		 }
		 
	 }
	
	 @GetMapping("/admin_register")
     public String registerAdminFormpage( @ModelAttribute("amsg") Admin admin)
     {
    	 return "register";
     }
	 
	 @PostMapping("/admin_register")
	 public String saveAdmin(@ModelAttribute("amsg") Admin admin , RedirectAttributes attrs , Map<String ,Object> map)
	 {
		 String msg = adminService.addAdminDetails(admin);
		 
		 if(msg.equals("failed"))
		 {
			 map.put("resultMsg", "Already Registered this email");
			 return "register";
		 }
		 
		 attrs.addFlashAttribute("resultMsg" , msg);
		 
		 return "redirect:admin_login";
	 }
	 
	
}








