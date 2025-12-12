package com.pg.entity;

import java.time.LocalDate;

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
@Table(name="Notification_Erp")
@Data
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class Notification 
{
	 @Id
	 @SequenceGenerator(name="nseq" , sequenceName = "seq4" , initialValue = 100 , allocationSize = 1)
	 @GeneratedValue(generator = "nseq",strategy = GenerationType.SEQUENCE)
     private Integer nid;
	 
	 @Column(length = 30)
	 @NonNull
	 private String message;
	 
	 @NonNull
	 private LocalDate notifiydate;
}
