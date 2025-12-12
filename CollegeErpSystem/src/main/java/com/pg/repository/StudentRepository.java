package com.pg.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pg.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Integer>
{
     public Student findByEmailAndPassword(String email , String password);
}
