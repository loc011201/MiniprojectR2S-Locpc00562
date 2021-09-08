package com.asm.Service;

import java.util.List;

import com.asm.Entity.Order;
import com.asm.Entity.Product;
import com.fasterxml.jackson.databind.JsonNode;

public interface OrderService {



	Order create(JsonNode orderData);

	Order findById(Long id);

	List<Order> findByUsername(String username);

}
