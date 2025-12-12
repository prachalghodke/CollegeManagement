package com.pg.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pg.entity.Notification;

public interface NotificationRepository extends JpaRepository<Notification, Integer>
{

}
