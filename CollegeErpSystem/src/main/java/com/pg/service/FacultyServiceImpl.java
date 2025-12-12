package com.pg.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pg.entity.Faculty;
import com.pg.repository.FacultyRepository;

@Service
public class FacultyServiceImpl implements IFacultyServiceImpl
{
	  @Autowired
      private FacultyRepository factRepo;
	  
	  @Override
		public String addFaculty(Faculty faculty) 
		{
			for(Faculty f : factRepo.findAll())
			{
				if(f.getEmail().equalsIgnoreCase(faculty.getEmail()))
				{
					return "failed";
				}
			}
			
			int idVal = factRepo.save(faculty).getFid();
			
			return "New Faculty Added Having id val :: " + idVal;
		}

	@Override
	public List<Faculty> showAllFaculty() 
	{
	     List<Faculty> listOfFaculty = factRepo.findAll();
	     
		return listOfFaculty;
	}

	@Override
	public String updateFaculty(Faculty faculty) 
	{
		
		Faculty fact = factRepo.findById(faculty.getFid()).orElseThrow(() -> new IllegalArgumentException("Invalid id"));
		
		//BeanUtils.copyProperties(faculty,fact);
		fact.setFname(faculty.getFname());
		fact.setEmail(faculty.getEmail());
		fact.setSubject(faculty.getSubject());
		
		factRepo.save(fact);
		
		return "Faculty updated successfully";
	}

	@Override
	public Faculty showFacultyById(int id) 
	{
		Faculty faculty = factRepo.findById(id).orElseThrow(() -> new IllegalArgumentException("invalid id"));
		
		return faculty;
	}

	@Override
	public String deleteById(int id) 
	{
		Faculty faculty = factRepo.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid id"));
		
		factRepo.deleteById(id);
		
		return id + " faculty is deleted";
	}

	@Override
	public Optional<Faculty> loginFacultyDetails(String email, String pass)
	{
		Optional<Faculty> ff=null;
		List<Faculty> listOfFaculty = factRepo.findAll();
		
		for(Faculty f : listOfFaculty)
		{
			/*System.out.println(email+" "+pass);
			System.out.println(f.getEmail()+" "+f.getPassword());*/
			if(f.getEmail().equalsIgnoreCase(email) && f.getPassword().equalsIgnoreCase(pass))
			{
				ff= factRepo.findById(f.getFid());
			}
		}
		return  ff;
	}
	
	@Override
	public Faculty findByEmail(String email) {
		
		return factRepo.findByEmail(email);
	}
}
