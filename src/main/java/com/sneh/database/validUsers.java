package com.sneh.database;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="valid_users")
public class validUsers {
	
	@Id
	@Column(name="vid")
	private int vid;
	
	@Column(name="v_email")
	private String email;
	
	@Column(name="v_password")
	private String password;
	
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@ManyToMany(mappedBy = "validusers")
	private Set<RegisteredUsers> registeredusers;
	
	public Set<RegisteredUsers> getRegisteredUsers(){
		return registeredusers;
	}
	
	public void setRegisteredUsers(Set<RegisteredUsers> registeredusers) {
		this.registeredusers=registeredusers;
	}
	
	@Override
	public String toString() {
		return "validUsers [vid=" + vid + ", email=" + email + ", password=" + password + "]";
	}
	

}
