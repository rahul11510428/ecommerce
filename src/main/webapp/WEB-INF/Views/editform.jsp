<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Edit Product</title>
</head>
<body>

 
<div class="container" style="width:30%; margin-top:100px">
   <div class="panel panel-success" style="width:100%"> 
     <div class="panel-heading">
       <b><h2>Details About the Product</h2></b>
     </div> <!-- End of panel-heading -->
     <div class="panel-body" style="padding-top:50px;">
        
         <c:url value="/editproduct" var="url1"/>
         <form:form action="${url1}" method="post"  modelAttribute="productObj" enctype="multipart/form-data">
         
             <form:hidden path="id"/>
                              
             <label>Product Name :</label> 
             <br>
             <form:input path="productname" style="width:94%" /><br>
             <form:errors path="productname" cssStyle="color:red" ></form:errors>
             <br>
             <label> Price :</label>
             <br> 
             <form:input path="price" style="width:94%" /><br>
             <form:errors path="price" cssStyle="color:red"></form:errors>
             <br>
                               
             <label>Quantity :</label>
             <br>
             <form:input path="quantity" style="width:94%" /><br>
             <form:errors path="quantity" cssStyle="color:red"></form:errors> 
               <br>
            <label>Description :</label>  
            <br>
             <form:input path="description" style="width:94%"/><br>
             <form:errors path="description" cssStyle="color:red" ></form:errors>    
            <br>
            <div class="form-group">
             Upload an image
             <input type="file"  name="image">
            </div>
            <input type="submit" class="btn btn-success"  value="Edit Product"/> 
            
            <c:forEach items="${categories}" var="c">
            <form:radiobutton path="category.id" value="${c.id}"/>
            ${c.categoryname}   
            </c:forEach>
        
         </form:form> <!-- End Form -->
         
     </div> <!-- End of panel-body --> 
   </div> <!-- End of panel -->
</div> <!-- End of Container -->

</body>
</html>