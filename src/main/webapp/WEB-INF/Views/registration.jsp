 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width,initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Registration page</title>
</head>
<body>
   <jsp:include page="navbar.jsp"/>  
 
 
<div class="container" style="width:35%">
 <div class="panel panel-success">
   <div class="panel-heading">
     <h4>Sign up</h4>
   </div> <!-- end of panel header -->
   
   <div class="panel-body" style="padding-top:40px:">
       
          <form>
    <label>First Name</label> <br>
    <input type="text" class="form-control" name="firstname"  >
        
    <label>Last Name</label> <br>
    <input type="text" class="form-control" name="lastname"    >
         
    <label>Email Address</label> <br>
    <input type="text" class="form-control" name="email"    >
       
    
    <label>Mobile number</label>
    
    <input type="text" class="form-control" name="mobile"  >
           
    <label>Username</label> <br>
    <input type="text" class="form-control" name="username"   >
          
    <label>Password</label> <br>
    <input type="password" class="form-control" name="password" >
     <br>
     <input type="checkbox"  name="terms"> I agree with the <a href="#">Terms and Conditions</a>. 
   
   <br>
    <input type="submit" value="Sign up" class="btn btn-primary ">
   
    </form>
     
   </div>  <!-- end of  panel-body -->
   
 </div> <!-- end of panel -->

</div>  <!-- end of container class -->
  
</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>