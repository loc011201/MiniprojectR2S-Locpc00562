package com.asm.Service;

import java.util.List;
import java.util.Optional;

import com.asm.Entity.Product;


public interface ProductService {

	List<Product> findAll();

	Product findById(Integer id);

	List<Product> findByCategoryId(String cid);

	Product create(Product product) ;

	Product update(Product product);

	
	void deletefindById(Integer id);
		
	


}