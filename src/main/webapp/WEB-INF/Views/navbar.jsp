<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
 

<div class="navbar  navbar-fixed-top" style="background-color:  #6666ff; height:50px;">
  <div class="container-fluid">
      <c:url value="resources/logo.png" var="logoUrl" ></c:url> 
      <a class="navbar-brand" href="index"> <img src="${logoUrl}" alt="alter" style="width:100px; length:100px; margin-top:-10px; margin-right:-20px ;margin-left:-10px" > </a>
    
   
    <ul class="nav navbar-nav">  
      <c:url value="index" var="homeUrl"></c:url>  
      <li ><a href="${homeUrl}"><span style="color:white">HOME</span></a></li>
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
       
       
       
     
    </ul>
     <form class="navbar-form pull-left">
        <input type="text" class="form-control" placeholder="Search here    " style=" width:250px "> 
          <button type="submit" class="btn btn-default"> 
           <span class="glyphicon glyphicon-search" ></span> 
          </button> 
      </form>  
       <a href="getproductform"><span class="btn btn-danger" style="padding:3px; margin-top:12px">Add Products</span></a>
       <a href="getallproducts"><span class="btn btn-danger" style="padding:3px; margin-top:12px">Browse Products</span></a>
        <ul class="nav navbar-nav navbar-right">
            <c:url value="registration" var="registrationUrl"/>
            <c:url value="login" var="loginUrl"/>
            <li><a href="${registrationUrl}"><span style="color:white" class="glyphicon glyphicon-user"></span> <span style="color:white">Sign Up </span></a></li>
            <li><a href="${loginUrl}"><span style="color:white" class="glyphicon glyphicon-log-in"></span> <span style="color:white"  >Login</span></a></li>
            <br>
            
        </ul>
     </div> <!-- End container-fluid -->
  </div> <!-- End navbar -->
</body>
</html>