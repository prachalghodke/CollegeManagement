package com.pg.entity;

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
@Table(name="Marks_Erp")
@Data
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class Marks 
{
	 @Id
	 @SequenceGenerator(name="mseq",sequenceName = "seq4" , initialValue = 100, allocationSize = 1)
	 @GeneratedValue(generator = "mseq" , strategy = GenerationType.SEQUENCE)
     private Integer mid;
	 
	 @NonNull
	 private Integer marks;
	 
	 @NonNull
	 private String examtype;
	 
	 @ManyToOne
	 @JoinColumn(name="sid")
	 private Student student;
	 
}






