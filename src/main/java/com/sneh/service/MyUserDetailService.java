/*package com.sneh.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.sneh.dao.loginRepo;
import com.sneh.dao.welcomeLoginRepo;
import com.sneh.database.validUsers;
import com.sneh.database.welcomeLogin;

@Service
public class MyUserDetailService implements UserDetailsService {

	@Autowired
	private welcomeLoginRepo welcomeRepo;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	
		List<welcomeLogin> userList =welcomeRepo.findByUsername(username);
		if(userList==null || userList.isEmpty()) {
			System.out.println(userList);
			throw new UsernameNotFoundException("User not Found");
		}
		return new userInfor(userList.get(0));
		
		
//		List<welcomeLogin> userList =welcomeRepo.findByUsername(username);
//		return new org.springframework.security.core.userdetails.User(userList.)
	}

}*/
