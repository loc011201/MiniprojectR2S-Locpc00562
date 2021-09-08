package com.asm.Service;

import java.util.List;

import com.asm.Entity.Authority;

public interface AuthorityService {

	public List<Authority> findAll();

	public List<Authority> findAuthoritiesOfAdministrators();

	public Authority create(Authority auth);

	public void delete(Integer id);

}
