package com.pg.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pg.entity.Faculty;

public interface FacultyRepository extends JpaRepository<Faculty, Integer>
{
     public Faculty findByEmail(String email);
}
