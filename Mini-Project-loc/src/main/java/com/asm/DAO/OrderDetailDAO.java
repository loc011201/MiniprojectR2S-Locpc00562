package com.asm.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.asm.Entity.OrderDetail;


public interface OrderDetailDAO extends JpaRepository<OrderDetail, String>{

}
