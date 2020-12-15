package com.sneh.database;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class adminSection {
	
	@Id
	@Column(name="id")
	private int adminId;
	
	@Column(name="name")
	private String adminName;
	
	@Column(name="email")
	private String adminEmail;
	
	@Column(name="password")
	private String adminPass;
	
	@Column(name="Admin_key")
	private String adminKey;
	
	
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getAdminPass() {
		return adminPass;
	}
	public void setAdminPass(String adminPass) {
		this.adminPass = adminPass;
	}
	public String getAdminKey() {
		return adminKey;
	}
	public void setAdminKey(String adminKey) {
		this.adminKey = adminKey;
	}
	
	@Override
	public String toString() {
		return "adminSection [adminId=" + adminId + ", adminName=" + adminName + ", adminEmail=" + adminEmail
				+ ", adminPass=" + adminPass + ", adminKey=" + adminKey + "]";
	}
}
