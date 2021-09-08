package com.asm.Serivce.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asm.DAO.CategoryDAO;
import com.asm.Entity.Category;
import com.asm.Service.CategoryService;
@Service
public class CategoryImpl implements CategoryService {
@Autowired
CategoryDAO cdao;
	@Override
	public List<Category> findAll() {
	
		return cdao.findAll();
	}

}
