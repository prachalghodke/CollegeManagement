package com.pg.service;

import com.pg.entity.Admin;
import com.pg.entity.Faculty;

public interface IAdminServiceImpl 
{
     public String addAdminDetails(Admin admin);
     
     public boolean loginAdminDetails(String email , String pass);
     
   
     
}
