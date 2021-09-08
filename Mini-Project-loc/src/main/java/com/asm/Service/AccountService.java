package com.asm.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.asm.DAO.AccountDAO;
import com.asm.Entity.Account;
import com.asm.Entity.Product;

public interface AccountService {
	
	
	public Account findById(String name);

	public List<Account> getAdministrators();

	public List<Account> findAll();

	public Account create(Account account);

	public Account update(Account account);

	public void deletefindById(String id);
}
