package com.asm.Serivce.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asm.DAO.AccountDAO;
import com.asm.Entity.Account;
import com.asm.Entity.Product;
import com.asm.Service.AccountService;
@Service
public class AccountImpl implements AccountService{
	@Autowired
	AccountDAO dao;
	@Override
	public Account findById(String name) {
		// TODO Auto-generated method stub
		return dao.findById(name).get();
	}
	@Override
	public List<Account> getAdministrators() {
		// TODO Auto-generated method stub
		return dao.getAdministrators();
	}
	@Override
	public List<Account> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}
	@Override
	public Account create(Account account) {
		// TODO Auto-generated method stub
		return dao.save(account);
	}
	@Override
	public Account update(Account account) {
		// TODO Auto-generated method stub
		return dao.save(account);
	}
	@Override
	public void deletefindById(String id) {
		// TODO Auto-generated method stub
		dao.deleteById(id);
	}
	

}
