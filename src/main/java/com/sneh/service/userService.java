/*package com.sneh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sneh.dao.welcomeLoginRepo;
import com.sneh.database.RegisteredUsers;
import com.sneh.database.welcomeLogin;

@Service
public class userService {
	
	private welcomeLoginRepo welcomeRepo;

	
	@Autowired
	public userService(welcomeLoginRepo welcomeRepo) {
		this.welcomeRepo=welcomeRepo;
	}
	
	public welcomeLogin findByUsername(String username)	{
		return welcomeRepo.findByUsername(username);
	}	
	
	public welcomeLogin saveLoginUser(welcomeLogin user) {
		user.setPassword(user.getPassword());
		user.setStatus(true);
		return welcomeRepo.save(user);
	}
}*/
