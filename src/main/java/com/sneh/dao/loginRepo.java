package com.sneh.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sneh.database.validUsers;
import com.sneh.database.welcomeLogin;

public interface loginRepo extends JpaRepository<validUsers, Integer> {
	
}
