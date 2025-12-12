package com.pg.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Table(name="Student_Erp")
@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class Student
{
	 @Id
	 @SequenceGenerator(name="sseq" , sequenceName = "seq3" , initialValue = 100 , allocationSize = 1)
	 @GeneratedValue(generator = "sseq" , strategy = GenerationType.SEQUENCE)
     private Integer sid;
	 
	 @Column(length = 30)
	 @NonNull
	 private String sname;
	 
	 @Column(length = 50)
	 @NonNull
	 private String email;
	 
	 @Column(length = 30)
	 @NonNull
	 private String password;
	 
	 @ManyToOne
	 @JoinColumn(name="fid")
	 private Faculty faculty;
	 
	 @OneToMany(mappedBy = "student", cascade = CascadeType.ALL)
	    private List<Marks> marks;
}



