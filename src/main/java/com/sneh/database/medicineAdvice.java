package com.sneh.database;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="medicine_list")
public class medicineAdvice {
	
	@Id
	@Column(name="med_id")
	private int medId;
	
	@Column(name="disease_name")
	private String diseaseName;
	
	@Column(name="med_name")
	private String medName;
	
	@Column(name="med_price")
	private String medPrice;
	
	public String getMedName() {
		return medName;
	}
	public void setMedName(String medName) {
		this.medName = medName;
	}
	public String getMedPrice() {
		return medPrice;
	}
	public void setMedPrice(String medPrice) {
		this.medPrice = medPrice;
	}
	public int getMedId() {
		return medId;
	}
	public void setMedId(int medId) {
		this.medId = medId;
	}
	public String getDiseaseName() {
		return diseaseName;
	}
	public void setDiseaseName(String diseaseName) {
		this.diseaseName = diseaseName;
	}

	@Override
	public String toString() {
		return "medicineAdvice [medId=" + medId + ", diseaseName=" + diseaseName + ", medName=" + medName
				+ ", medPrice=" + medPrice + "]";
	}
}
