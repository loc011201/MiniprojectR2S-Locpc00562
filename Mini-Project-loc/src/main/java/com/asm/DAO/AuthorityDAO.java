package com.asm.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.asm.Entity.Account;
import com.asm.Entity.Authority;
import com.asm.Entity.Category;

public interface AuthorityDAO  extends JpaRepository<Authority, Integer>{

	
@Query("SELECT DISTINCT a FROM Authority a where a.account IN ?1 ")
List<Authority> AuthorityOf(List<Account> accounts);




}
