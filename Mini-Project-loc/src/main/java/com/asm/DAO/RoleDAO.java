package com.asm.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.asm.Entity.Role;

public interface RoleDAO extends JpaRepository<Role, Integer>{

}
