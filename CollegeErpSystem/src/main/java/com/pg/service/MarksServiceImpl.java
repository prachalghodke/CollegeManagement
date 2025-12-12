package com.pg.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pg.entity.Marks;
import com.pg.entity.Student;
import com.pg.repository.MarksRepository;
import com.pg.repository.StudentRepository;

@Service
public class MarksServiceImpl implements IMarkServiceImpl
{
	@Autowired
	private MarksRepository markRepo;
	
	@Autowired
	private StudentRepository studRepo;

	@Override
	public String addMarks(Marks marks, Integer sid) 
	{
		Student stud = studRepo.findById(sid).orElseThrow(() -> new IllegalArgumentException("invalid id"));
		
		marks.setStudent(stud);
		
		markRepo.save(marks);
		
		return " Marks are Added Successfully";
	}

}
