package com.pg.service;

import java.util.List;
import java.util.Optional;

import com.pg.entity.Faculty;

public interface IFacultyServiceImpl 
{
	  public String addFaculty(Faculty faculty);
	  
	  public List<Faculty> showAllFaculty();
	  
	  public String updateFaculty(Faculty faculty);
	  
	  public Faculty showFacultyById(int id);
	  
	  public String deleteById(int id);
	  
	  public Optional<Faculty> loginFacultyDetails(String email , String pass);
	  public Faculty findByEmail(String email);
}
