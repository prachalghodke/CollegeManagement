package com.pg.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pg.entity.Notification;
import com.pg.service.INotificationServiceImpl;

@Controller
public class NotificationController 
{
	@Autowired
	private INotificationServiceImpl notService;
	
	 @GetMapping("/addNotification")
     public String showNotificationFormPage(@ModelAttribute("note") Notification  notifications)
     {
    	 return "add_notification";
     }
	 
	 @PostMapping("/addNotification")
	 public String addNotificationPage(@ModelAttribute("note") Notification notification , RedirectAttributes attrs)
	 {
		 String result = notService.addNotification(notification);
		 
		 attrs.addFlashAttribute("resultMsg",result);
		 
		 return "redirect:a_dashboard";
	 }
	
	 @GetMapping("/shownotification")
	 public String showNotification(@ModelAttribute ("fmsg")  Notification notification , Map<String, Object> map)
	 {
		 List<Notification> lists = notService.showAllNotification();
		 
		 map.put("notifList", lists);
		 
		 return "show_notification";
		 
		 
	 }
	 
}






