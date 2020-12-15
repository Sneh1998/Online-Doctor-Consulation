package com.sneh.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sneh.database.welcomeLogin;

@Repository
public interface welcomeLoginRepo extends JpaRepository<welcomeLogin, Integer>{
	//List<welcomeLogin> findByUsername(String username);
	
	welcomeLogin findByUsername(String username);
	
	public welcomeLogin findByUsernameAndPassword(String username,String password);
}
