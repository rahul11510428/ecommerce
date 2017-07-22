 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<title>navbar.jsp</title>

</head>

<body>
 
<div class="navbar navbar-fixed-top" style="background-color:  #6666ff; border-radius: 0px 0 0 0px;">
 <div class="container-fluid">
  <c:url value="resources/logo.png" var="logoUrl" ></c:url> 
      <a class="navbar-brand" href="index"> <img src="${logoUrl}" alt="alter" style="width:135px; margin-top:-13px; ;margin-left:130px" > </a>
    
   <form class="navbar-form pull-left" style="margin-left:-15px;">
    <div class="input-group"  style="margin-top:1px;height:43px">
      <input id="password" type="text" class="form-control" name="password" placeholder="Search here" style="width:800px;height:43px"/>
       <span class="input-group-addon"  style="background-color:#ffe11b;width:70px"><i class="glyphicon glyphicon-search"></i></span> 
    </div>
    </form>  
     
      <a href="getproductform"><span class="btn btn-danger" style="margin-top:16px">Add Products</span></a>
      <a href="getallproducts"><span class="btn btn-danger" style="margin-top:16px">Browse Products</span></a> 
 </div>
</div>
 

<div class="navbar  navbar-light" style="background-color:  #6666ff;  border-radius: 2px 0 0 2px; margin-top:60.213px">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav" style="margin-left:282px">  
      
       
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="color:white">SHOES</span><span style="color:white" class="caret"></span> </a>
           <ul class="dropdown-menu">
            <li><a href="#">Running Shoes</a></li>
            <li><a href="#">Cricket Shoes</a></li>
            <li><a href="#">Football Shoes</a></li>
            <li><a href="#">Basketball Shoes</a></li>
            <li><a href="#">Tennis Shoes</a></li>
            <li><a href="#">Boxing Shoes</a></li>
            <li><a href="#">Squash Shoes</a></li>
           </ul>
         </li>
       
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="color:white">INDOOR SPORTS</span><span style="color:white" class="caret"></span></a>
       
        <ul class="dropdown-menu">
          <li><a href="#">Table-Tennis</a></li>
          <li><a href="#">Badminton</a></li>
          <li><a href="#">Boxing</a></li>
          <li><a href="#">Chess</a></li>
          <li><a href="#">Basketball</a></li>
          
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" ><span style="color:white">OUTDOOR SPORTS</span><span style="color:white" class="caret"></span> </a>
        <ul class="dropdown-menu">
          <li><a href="#">Cricket</a></li>
          <li><a href="#">Football</a></li>
          <li><a href="#">Rugby</a></li>
          <li><a href="#">Baseball</a></li>
          <li><a href="#">Tennis</a></li>
        </ul>
      </li>
       
        
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="color:white">GYM ACCESSORIES</span><span style="color:white" class="caret"></span> </a>
        <ul class="dropdown-menu">
          <li><a href="#">Gym Gloves</a></li>
          <li><a href="#">Dumbell Racks</a></li>
          <li><a href="#">Belts</a></li>
          <li><a href="#">Weight Plates</a></li>
          <li><a href="#">Weight Rods</a></li>
          <li><a href="#">Wrist Support</a></li>
          <li><a href="#">Ankle Support</a></li>
          <li><a href="#">Thigh Support</a></li>
          <li><a href="#">Waist Support</a></li>
          <li><a href="#">Knee support</a></li>
        </ul>
       </li>
       
       
       
       
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="color:white">CLOTHING</span><span style="color:white" class="caret"></span> </a>
           <ul class="dropdown-menu">
            <li><a href="#">Track-Suits</a></li>
            <li><a href="#">Lowers</a></li>
            <li><a href="#">T-Shirts</a></li>
           </ul>
         </li>
         
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="color:white">INFRASTRUCTURE</span><span style="color:white" class="caret"></span> </a>
           <ul class="dropdown-menu">
            <li><a href="#">Cricket-Pitch</a></li>
            <li><a href="#">Football Ground</a></li>
            <li><a href="#">Badminton-court</a></li>
           </ul>
         </li>
       
       
       
     
    </ul>
   
     
        <ul class="nav navbar-nav navbar-right">
            <c:url value="registrationform" var="registrationUrl"/>
            <c:url value="login" var="loginUrl"/>
            <li><a href="${registrationUrl}"><span style="color:white" class="glyphicon glyphicon-user"></span> <span style="color:white">Sign Up </span></a></li>
            <li><a href="${loginUrl}"><span style="color:white" class="glyphicon glyphicon-log-in"></span> <span style="color:white"  >Login</span></a></li>
            <br>
            
        </ul>
     </div> <!-- End container-fluid -->
  </div> <!-- End navbar -->
</body>
</html>