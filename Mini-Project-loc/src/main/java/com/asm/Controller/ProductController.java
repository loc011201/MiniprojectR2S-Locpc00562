package com.asm.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asm.Entity.Product;
import com.asm.Service.ProductService;


@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	
	@RequestMapping("/product/list")
	public String list(Model m, @RequestParam("cid") Optional<String> cid) {	
		if(cid.isPresent()) {
			List<Product> list = productService.findByCategoryId(cid.get());
			m.addAttribute("items", list);
		}
		else {
		List<Product> list = productService.findAll();
		m.addAttribute("items", list);
		}
		return "product/list";
		
	}
	
	@RequestMapping("/product/detail/{id}")
	public String detail(Model model, @PathVariable("id") Integer id ){
		Product item = productService.findById(id);
		model.addAttribute("item",item);
		return "product/detail";
	}
}

