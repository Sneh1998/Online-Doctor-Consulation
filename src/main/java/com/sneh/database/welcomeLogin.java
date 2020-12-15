package com.sneh.database;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="valid_users")
public class welcomeLogin {
	
	@Id
	@Column(name="vid")
	private int id;
	
	@Column(name="v_email")
	private String username;
	
	@Column(name="v_password")
	private String password;
	
//	@Column(name="status")
//	private boolean status;
//	
//	public boolean isStatus() {
//		return status;
//	}
//	public void setStatus(boolean status) {
//		this.status = status;
//	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	@Override
	public String toString() {
		return "welcomeLogin [id=" + id + ", username=" + username + ", password=" + password + "]";
	}
	
}
