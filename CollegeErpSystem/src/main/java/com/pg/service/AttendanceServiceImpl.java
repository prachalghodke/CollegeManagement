package com.pg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pg.entity.Attendance;
import com.pg.repository.AttendanceRepository;

@Service
public class AttendanceServiceImpl implements IAttendanceServiceImpl 
{
	@Autowired
	private AttendanceRepository attendanceRepo;

	@Override
	public String saveAttendance(Attendance attendance) 
	{
		int idVal = attendanceRepo.save(attendance).getAid();
		
		return " Attendance is Saved which id Value is :: " + idVal;
	}

	@Override
	public List<Attendance> showAllAttendance() 
	{
		List<Attendance> list = attendanceRepo.findAll();
		
		return list;
	}

}











