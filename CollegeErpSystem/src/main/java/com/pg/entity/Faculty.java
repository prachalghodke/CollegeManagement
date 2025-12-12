package com.pg.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Table(name="Faculty_Erp")
@Data
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class Faculty 
{
	 @Id
	 @SequenceGenerator(name="fseq",sequenceName = "seq2" , initialValue = 100 , allocationSize = 1)
	 @GeneratedValue(generator = "fseq" , strategy = GenerationType.SEQUENCE)
     private Integer fid;
	 
	 @Column(length = 30)
	 @NonNull
	 private String fname;
	 
	 @Column(length = 50)
	 @NonNull
	 private String email;
	 
	 @Column(length = 30)
	 @NonNull
	 private String password;
	 
	 @Column(length = 30)
	 @NonNull
	 private String subject;
	 
	 @OneToMany(mappedBy = "faculty" , cascade = CascadeType.ALL)
	 private List<Student> students;
}
