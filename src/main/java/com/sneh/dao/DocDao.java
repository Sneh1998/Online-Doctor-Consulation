package com.sneh.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sneh.database.RegisteredUsers;

@Repository 
public interface DocDao extends JpaRepository<RegisteredUsers, Integer>{

	@Override
	List<RegisteredUsers> findAll();
	
	
	RegisteredUsers findByEmailAndPassword(String email, String password);
	
}


