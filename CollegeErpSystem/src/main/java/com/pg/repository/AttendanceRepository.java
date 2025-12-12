package com.pg.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pg.entity.Attendance;

public interface AttendanceRepository extends JpaRepository<Attendance, Integer>
{ 
	
	public List<Attendance>  findByStudent_Faculty_Fid(Integer fid);

}
