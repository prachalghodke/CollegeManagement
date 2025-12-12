package com.pg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pg.entity.Admin;
import com.pg.entity.Faculty;
import com.pg.repository.AdminRepository;
import com.pg.repository.FacultyRepository;
import com.pg.repository.StudentRepository;

@Service
public class AdminServiceImpl implements IAdminServiceImpl
{
	@Autowired
	private AdminRepository adminRepo;
	
	@Override
	public String addAdminDetails(Admin admin) 
	{
	    for(Admin a : adminRepo.findAll())
	    {
	    	if(a.getEmail().equalsIgnoreCase(admin.getEmail()))
	    	{
	    		return "failed";
	    	}
	    }
		int id = adminRepo.save(admin).getAid();
		
		return "Succesfully Added having id val :: " + id;
	}

	@Override
	public boolean loginAdminDetails(String email, String pass) 
	{
		List<Admin> listofAdmin = adminRepo.findAll();
		
		for(Admin a : listofAdmin)
		{
			if(a.getEmail().equalsIgnoreCase(email) && a.getPassword().equals(pass))
			{
			return true;
			}
		}
		
		return false;
	}

	

}
