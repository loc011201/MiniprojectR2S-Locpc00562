package com.asm.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.asm.Entity.Category;



public interface CategoryDAO extends JpaRepository<Category, String>{

}
