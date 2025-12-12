package com.pg.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Table(name="Admin_Erp1")
@Data
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class Admin 
{
	 @Id
	 @SequenceGenerator(name="aseq" ,sequenceName = "seq1" , initialValue = 100 , allocationSize = 1)
	 @GeneratedValue(generator = "aseq" , strategy = GenerationType.SEQUENCE)
     private Integer aid;
	 
	 @Column(length = 30)
	 @NonNull
	 private String aname;
	 
	 @Column(length = 50)
	 @NonNull
	 private String email;
	 
	 @Column(length = 60)
	 @NonNull
	 private String password;
	 
	 @Column(length = 10)
     private String active_SW = "active";
}





