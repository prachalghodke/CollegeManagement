package com.pg.service;

import java.util.List;

import com.pg.entity.Attendance;

public interface IAttendanceServiceImpl 
{
     public String saveAttendance(Attendance attendance);
     
     public List<Attendance> showAllAttendance();
}
