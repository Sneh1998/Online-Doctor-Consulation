package com.sneh.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sneh.database.RegisteredUsers;
//import com.sneh.database.bookAppointment;
import com.sneh.database.medicineAdvice;

public interface medicineRepo extends JpaRepository<medicineAdvice, Integer>{
	@Override
	List<medicineAdvice> findAll();

	//medicineAdvice findAllBydiseaseName(String diseaseName);

	List<medicineAdvice> findBydiseaseName(String diseaseName);
}
