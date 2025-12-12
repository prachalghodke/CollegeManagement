package com.pg.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pg.entity.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer>
{
      
}
