package com.asm.restcontroll;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.asm.Entity.Account;
import com.asm.Entity.Product;
import com.asm.Service.AccountService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/account")


public class AccountsRestController {
	@Autowired
	AccountService accountService;
	
	@GetMapping("{username}")
	public Account getOne(@PathVariable("username") String username) {
		return accountService.findById(username);
	}

	@GetMapping()
	public List<Account> getAll() {
		return accountService.findAll();

	}
	@PostMapping
	public Account create(@RequestBody Account account) {
		return accountService.create(account);
	}

	@PutMapping("{username}")
	public Account update(@PathVariable("username") String id, @RequestBody Account account) {
		return accountService.update(account);
	}

	@DeleteMapping("/delete/{username}")
	public void delete(@PathVariable("username") String id) {
		System.out.println("Username: "+id);
		accountService.deletefindById(id);
	}
}
