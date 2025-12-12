package com.pg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pg.entity.Notification;
import com.pg.repository.NotificationRepository;

@Service
public class NotificationServiceImpl implements INotificationServiceImpl
{
	
	@Autowired
	private NotificationRepository notRepo;

	@Override
	public String addNotification(Notification n) 
	{
		notRepo.save(n);
		
		return "Notification is added!!!";
	}

	@Override
	public List<Notification> showAllNotification() 
	{
		List<Notification> listOfNotification = notRepo.findAll();
		
		return listOfNotification; 
	}

}
