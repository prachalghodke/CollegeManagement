package com.pg.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pg.entity.Marks;

public interface MarksRepository extends JpaRepository<Marks, Integer>
{

}
