package com.sneh.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sneh.database.chatQuestions;

public interface chatDao extends JpaRepository<chatQuestions, Integer> {
	 
	@Override
	List<chatQuestions> findAll();
}
