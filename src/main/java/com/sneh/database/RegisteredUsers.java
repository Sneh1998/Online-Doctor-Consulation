package com.sneh.database;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

//import lombok.Data;

@Entity
@Table(name = "registered_users")
public class RegisteredUsers {

	@Id
	@Column(name = "id")
	// @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@NotNull(message = "name cannot be null")
	@Size(min = 2, max = 20)
	@Column(name = "first_name")
	private String firstName;

	@NotNull(message = "last name cannot be null")
	@Size(min = 2, max = 25)
	@Column(name = "last_name")
	private String lastName;

	@NotNull(message = "gender must be male or female")
	@Column(name = "gender")
	private String gender;

	@NotNull(message = "height cannot be null")
	@Column(name = "height")
	private float height;

	@NotNull(message = "weight cannot be null")
	@Column(name = "weight")
	private int weight;

	@NotNull(message = "status cannot be null")
	@Column(name = "marital_status")
	private String maritalStatus;

	@NotNull(message = "zipcode cannot be null")
	@Column(name = "zipcode")
	private int zipcode;

	@NotNull(message = "place cannot be null")
	@Column(name = "place")
	private String place;

	@NotNull(message = "country cannot be null")
	@Column(name = "country")
	private String country;

	@NotNull(message = "code cannot be null")
	@Column(name = "code")
	private int code;

	@NotNull(message = "phone cannot be null")
	@Column(name = "phone")
	private double phone;

	@Email(message = "email should be valid")
	@Size(min = 2, max = 30)
	@Column(name = "email")
	private String email;

	@NotNull(message = "password cannot be null")
	@Column(name = "password")
	private String password;

	@ManyToMany
	private Set<validUsers> validusers;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public float getHeight() {
		return height;
	}

	public void setHeight(float height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public double getPhone() {
		return phone;
	}

	public void setPhone(double phone) {
		this.phone = phone;
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

	public Set<validUsers> getValidUsers() {
		return validusers;
	}

	public void setValidUsers(Set<validUsers> validusers) {
		this.validusers = validusers;
	}

	@Override
	public String toString() {
		return "RegisteredUsers [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", gender="
				+ gender + ", height=" + height + ", weight=" + weight + ", maritalStatus=" + maritalStatus
				+ ", zipcode=" + zipcode + ", place=" + place + ", country=" + country + ", code=" + code + ", phone="
				+ phone + ", email=" + email + ", password=" + password + ", validusers=" + validusers + "]";
	}

}
