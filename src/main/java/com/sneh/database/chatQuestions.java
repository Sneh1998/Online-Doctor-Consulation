package com.sneh.database;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="chatquestions")
public class chatQuestions {
	
	@Id
	@Column(name="id")
	private int c_id;
	
	@Column(name="question")
	private String c_questions;

	public int getC_id() {
		return c_id;
	}

	public void setC_id(int c_id) {
		this.c_id = c_id;
	}

	public String getC_questions() {
		return c_questions;
	}

	public void setC_questions(String c_questions) {
		this.c_questions = c_questions;
	}
	
	@Override
	public String toString() {
		return "chatQuestions [c_id=" + c_id + ", c_questions=" + c_questions + "]";
	}

}
