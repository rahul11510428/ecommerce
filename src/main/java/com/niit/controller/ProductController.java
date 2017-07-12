package com.niit.controller;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.configuration.DBConfiguration;
import com.niit.model.Product;
import com.niit.service.ProductService;
import com.niit.service.ProductServiceImpl;
import com.nitt.dao.ProductDaoImpl;

@Controller
public class ProductController {
	
     
	ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,ProductServiceImpl.class,ProductDaoImpl.class);
   	 
   	 ProductService productService = (ProductService)context.getBean("productServiceImpl");
           
           
	
	@RequestMapping("/getproductform")
	public String getProductForm(Model model)
	{
		model.addAttribute("product",new Product()); // Product product =new Product();
		return "productform";
	}

	@RequestMapping("/saveproduct")
	public String saveProduct(@ModelAttribute(name="product") Product product)
	{
		productService.saveProduct(product);
		return "success";
	}
	
	@RequestMapping("getallproducts")
	public String getAllProducts(Model model)
	{
		List<Product> products =productService.getAllProducts();
		model.addAttribute("products",products); // 1st Parameter is Key and 2nd Parameter is value;
		return "productlist";
	}
	
	@RequestMapping("viewproduct/{id}")
	public String getProductById(@PathVariable int id,Model model)
	{
		Product product = productService.getProductById(id);
		model.addAttribute("product",product);
		return "viewproduct";
		
	}
	
	@RequestMapping("deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id)
	{
		productService.deleteProduct(id);
		return "redirect:/getallproducts";
	}
}
