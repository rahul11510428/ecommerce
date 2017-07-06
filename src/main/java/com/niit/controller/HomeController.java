package com.niit.controller;

import  org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;

  @Controller 	
  public class HomeController {

@RequestMapping("/")
  public String home()
  {
 	 return "index";
  }	   
  @RequestMapping("/index")
  public String homePage()
  {
	 return "index";
  }
	  
  @RequestMapping("/registration")
  public String registrationPage()
   {
		
	 return "registration";
   }
  
  @RequestMapping("/navbar")
  public String navbarPage()
  {
	return "navbar";  
  }

  
  @RequestMapping("/login")
  public String loginPage()
  {
	  return "login";
  }
 
	
 



}
	