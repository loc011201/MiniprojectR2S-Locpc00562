package com.asm.DAO;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.asm.Entity.Product;




public interface ProductDAO extends JpaRepository<Product, Integer>{

	Optional<Product> findById(Integer id);

	@Query("SELECT p FROM Product p WHERE p.category.id=?1" )
	List<Product> findByCategoryId(String cid);
	

}
;