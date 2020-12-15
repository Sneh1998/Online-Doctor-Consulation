package com.sneh.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sneh.database.adminSection;

@Repository
public interface adminDao extends JpaRepository<adminSection, Integer> {
	adminSection findByAdminKey(String adminKey);
}
