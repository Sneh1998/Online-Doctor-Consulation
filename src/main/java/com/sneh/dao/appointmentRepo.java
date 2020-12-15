package com.sneh.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sneh.database.bookAppointment;

@Repository
public interface appointmentRepo extends JpaRepository<bookAppointment, Integer>{

	@Override
	List<bookAppointment> findAll();
	
	//bookAppointment findByNamePhoneDoctorEmail(String name, long phone,String DoctorName, String Email);

	//bookAppointment findByEmail(String email);
}
