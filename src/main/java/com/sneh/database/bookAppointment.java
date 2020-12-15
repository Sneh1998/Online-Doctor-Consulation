package com.sneh.database;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="boookedappointment")
public class bookAppointment {
	
	@Id
	@Column(name="id")
	private int b_id;
	
	@Column(name="discuss_about")
	private String discussChoice;
	
	@Column(name="user_name")
	private String userName;
	
	@Column(name="user_phone")
	private long userPhone;
	
	@Column(name="doctor_name")
	private String doctorName;
	
	@Column(name="user_email")
	private String userEmail;
	
	@Column(name="module_name")
	private String moduleName;
	

	public int getB_id() {
		return b_id;
	}
	public void setB_id(int b_id) {
		this.b_id = b_id;
	}
	public String getDiscussChoice() {
		return discussChoice;
	}
	public void setDiscussChoice(String discussChoice) {
		this.discussChoice = discussChoice;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public long getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(long userPhone) {
		this.userPhone = userPhone;
	}
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getModuleName() {
		return moduleName;
	}
	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	
}
