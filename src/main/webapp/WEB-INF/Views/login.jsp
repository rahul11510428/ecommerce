<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width,initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<title>Login</title>
</head>
<body>
<jsp:include page="navbar.jsp"/>
 <div  class="container" style="margin-top:150px; width:30%; "  >                    
            <div class="panel  panel-info ">
                    <div class="panel-heading">
                         <h4>Sign In</h4>                   
                    </div>  <!-- end of pannel heading -->   

                    <div class="panel-body" style="padding-top:40px"  >

                                                                                                          
                            <div class="input-group" style="margin-bottom: 30px" >
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  type="text" class="form-control" name="username" value="" placeholder="username">                                        
                            </div>  <!-- input type for user name  -->
                                
                                
                            <div class="input-group"s style="margin-bottom: 25px" >
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input  type="password" class="form-control" name="password" placeholder="password">
                            </div>  <!--  input type for password -->
                                     
                                                                                            
                                        
                              <input  type="checkbox" name="remember" > Remember me
                                        
                                     
                                  
                                <div style="margin-top:10px"  >                                                                                                            
                                      <a   href="#" class="btn btn-success">Login  </a>    <!-- Button -->
                                       <a href="#">Forgot password?</a>   <!-- for forgot password  -->                                 
                                </div>  
                                                            
                                    <br> 
                                    
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                           <a href="registration">Sign Up Here </a>                                                           
                                        </div>        
                                                                                                                          
                        </div>   <!-- end of panel body -->   
                    </div>  <!-- end of panel -->
        </div> <!--  end of container -->


</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>