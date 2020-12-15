package com.sneh.service;

import java.util.List;

//import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sneh.dao.DocDao;
import com.sneh.dao.appointmentRepo;
import com.sneh.dao.welcomeLoginRepo;
import com.sneh.database.RegisteredUsers;
import com.sneh.database.bookAppointment;
import com.sneh.database.welcomeLogin;

@Service
public class docService {
	
	@Autowired
	private DocDao docDao;
	
	@Autowired
	private appointmentRepo appoRepo;
	
	@Autowired
	private welcomeLoginRepo welcomeRepo;
	
	/*public List<RegisteredUsers> findAll(){
		List<RegisteredUsers> r1=docDao.findAll();
		System.out.println("registered user's list..");
		return r1;
	}*/
	
	public String login() {
		return "login.jsp";
	}
	
	public String main() {
		return "main.jsp";
	}
	
	public String addEntity(RegisteredUsers r1) {
		docDao.save(r1);
		System.out.println("Registered...");
		return "Welcome.jsp";
	}
	
	public void save(RegisteredUsers user) {
		user.setFirstName(user.getFirstName());
		user.setLastName(user.getLastName());
		docDao.save(user);
	}

	public void getDeleteAppointments(int id) {
		appoRepo.deleteById(id);
	}
	
	public List<bookAppointment> showAllAppointments() {
		List<bookAppointment> leftAppointments=appoRepo.findAll();
		return leftAppointments;
	}
	
	public welcomeLogin findByUsernameAndPassword(String username,String password) {
		
		return welcomeRepo.findByUsernameAndPassword(username, password);
	}
}
