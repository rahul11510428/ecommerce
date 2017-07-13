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
import com.niit.dao.ProductDaoImpl;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.ProductService;
import com.niit.service.ProductServiceImpl;

@Controller
public class ProductController {
	
     
	ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,ProductServiceImpl.class,ProductDaoImpl.class);
   	 
   	 ProductService productService = (ProductService)context.getBean("productServiceImpl");
           
           
	
	@RequestMapping("/getproductform")
	public String getProductForm(Model model)
	{   
		List<Category> categories =productService.getAllCategories();
		model.addAttribute("categories",categories);
		model.addAttribute("product",new Product()); // Product product =new Product();
		return "productform";
	}

	@RequestMapping("/saveproduct")
	public String saveProduct(@ModelAttribute(name="product") Product product)
	{
		productService.saveProduct(product);
		return "redirect:/getallproducts";
	}
	
	@RequestMapping("/getallproducts")
	public String getAllProducts(Model model)
	{
		List<Product> products =productService.getAllProducts();
		List<Category> categories =productService.getAllCategories();
		model.addAttribute("categories",categories);
		model.addAttribute("products",products); // 1st Parameter is Key and 2nd Parameter is value;
		return "productlist";
	}
	
	@RequestMapping("/viewproduct/{id}")
	public String getProductById(@PathVariable int id,Model model)
	{
		Product product = productService.getProductById(id);
		model.addAttribute("product",product);
		return "viewproduct";
		
	}
	
	@RequestMapping("/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id)
	{
		productService.deleteProduct(id);
		return "redirect:/getallproducts";
	}
	
	@RequestMapping("/geteditform/{id}")
	public String getEditForm(@PathVariable int id,Model model)
	{
		Product product =productService.getProductById(id);
		List<Category> categories =productService.getAllCategories();
		model.addAttribute("categories",categories);
		model.addAttribute("productObj",product);
		return "editform";
	}
	
	@RequestMapping("/editproduct")
	public String editproduct(@ModelAttribute(name="productObj") Product product)
	{
		
	  productService.editProduct(product);
	  return "redirect:/getallproducts"; //redirecting to handler get all products to retrieve left products 
	  
	}
	
	
	
	
}
