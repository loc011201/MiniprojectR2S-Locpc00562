package com.asm.Serivce.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asm.DAO.RoleDAO;
import com.asm.Entity.Role;
import com.asm.Service.RoleService;
@Service
public class RoleImpl implements RoleService {
	@Autowired
	RoleDAO dao ;
	@Override
	public List<Role> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

}
