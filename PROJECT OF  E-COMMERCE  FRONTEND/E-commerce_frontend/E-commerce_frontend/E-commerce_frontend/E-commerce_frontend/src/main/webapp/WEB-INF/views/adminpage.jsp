

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>
<div class="container">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-10">

<h1>

    Add a Product
</h1>
<c:url var="addAction" value="/admin/add" ></c:url>
<form:form action="${addAction}" commandName="product" modelAttribute="product"  method="post">
<table>
   <%--  <c:if test="${!empty product.ProductName}">
    
    <tr>
        <td>
            <form:label path="Id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="Id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="Id" />
        </td> 
    </tr>
    </c:if> --%>
    <%--  <tr>
        <td>
            <form:label path="productName">
                <spring:message text="Name"/>
            </form:label>
        </td>
     
          
      
    </tr> --%>
  
    <tr>
        <td>
            <form:label path="price">
                <spring:message text="Price"/>
            </form:label>
        </td>
      
        
    </tr>
    
  
    
   
    
  
   
    
    
    
     
       
 <%--   </tr>--%>
  <%--   <tr>
        <td colspan="2">
            <c:if test="${!empty product.productName}">
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty product.ProductName}">
                <input type="submit"
                    value="<spring:message text="Add Product"/>" />
         </c:if>
        </td>
    </tr> --%>
    
</table>  
</form:form>
<br>
<h3>Product List</h3>


<c:if test="${!empty product}"> 
<div class="table-responsive"> 
   <!--  <table class="table table-bordered"> -->
  <table class="table table-bordered">
   <%--  <table class="tg">--%>
    <thead>
    <tr>
        <th width="80">ID</th>
         <th width="120">Name</th>
       
           <th width="120">Price</th>
   
        <th width="120">Edit</th>
         <th width="120">Delete</th>
    </tr>
    </thead>
    <c:forEach items="${product}" var="product">
    <tbody>
        <tr>
            <td>${product.Id}</td>
          
           
          <td>${product.name}</td>
         
                
              <td>${product.price}</td>
            
          
              
            
            <td><a href="<c:url value='/edit/${product.Id}'/>" >Edit</a></td>
            <td><a href="<c:url value='/remove/${product.Id}'/>" >Delete</a></td>
            
        </tr>
        </tbody>
    </c:forEach>
    </table>
 </c:if>  
 </div>
 
 </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
 <script src="resource/bootstrap/js/bootstrap.min.js"></script>
<!-- </body>
  
  
  
</html> -->