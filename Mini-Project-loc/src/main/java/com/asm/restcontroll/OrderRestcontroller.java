package com.asm.restcontroll;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.asm.Entity.Order;
import com.asm.Entity.Product;
import com.asm.Service.OrderService;
import com.fasterxml.jackson.databind.JsonNode;


@CrossOrigin
@RestController
@RequestMapping("/rest/orders")
public class OrderRestcontroller {
	@Autowired
	OrderService ordersv;
	
	@PostMapping()
	public Order getOne (@RequestBody JsonNode orderData) {
		System.out.println("Success1");
		return ordersv.create(orderData);	
	}

}
