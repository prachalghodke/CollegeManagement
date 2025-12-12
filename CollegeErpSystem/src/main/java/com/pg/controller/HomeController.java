package com.pg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.pg.entity.Admin;
import com.pg.entity.Faculty;

@Controller
public class HomeController 
{
	 @GetMapping("/")
     public String home()
     {
    	 return "welcome";
     }
	 
	 @GetMapping("/admin_login")
	 public String adminLogin(@ModelAttribute("amsg") Admin admin)
	 {
		 return "a_login";
	 }
	 
	
}
