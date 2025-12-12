package com.pg.service;

import java.util.List;

import com.pg.entity.Notification;

public interface INotificationServiceImpl 
{
     public String addNotification(Notification n);
     
     public List<Notification> showAllNotification();
}
