package com.pg.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Table(name="Attendance_Erp")
@Data
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class Attendance 
{
	 @Id
	 @SequenceGenerator(name="aaseq" , sequenceName = "seq5" , initialValue = 100 , allocationSize = 1)
	 @GeneratedValue(generator = "aaseq", strategy = GenerationType.SEQUENCE)
     private Integer aid;
	 
	 @NonNull
	 private LocalDate attendance_date;
	 
	 @NonNull
	 private String status;
	 
	 @ManyToOne
	 @JoinColumn(name="sid")
	 private Student student;
}












