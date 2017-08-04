<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<%@ include file="AdminHome.jsp" %>
<title>Insert title here</title>
</head>
<body>
<%@ include file="AdminHome.jsp" %>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<br>
<br>
<br>
<br>
<br>
<br>
<br>	

<div>

	<form:form action="${pageContext.request.contextPath}/newSupplier" method="POST" commandName="supplier">
	
	
		<table>
			<tr>
				<td>Supplier ID :</td>
				<td><input type="text" name="id"/></td>
			</tr>
			<tr>
				<td>Supplier Name :</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Supplier Address :</td>
				<td><input type="text" name="address"/></td>
			</tr>
	
			<tr>
				<td></td>
				<td><input type="submit" value="Add Supplier" class = "btn btn-success"/></td>
			</tr>
		</table>
	</form:form>
</div>
<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<%@ include file="footer.jsp" %>
</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page isELIgnored ="false" %>

<%@ include file="AdminHome.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<br><br><br><br>
 <h1>
 Add Supplier
</h1>

<c:url var="addsupplier" value="/newSupplier" ></c:url>
<form:form action="${addsupplier}" commandName="supplier" modelAttribute="supplier" method="post" >
<table>
    <c:if test="${!empty supplier.name}">
    
    <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
    </tr>
    </c:if> 
     <tr>
        <td>
            <form:label path="name">
                  <spring:message text="name"/>
            </form:label>
        </td>
        <td> <form:input path="name" /></td>
         
      
    </tr>
  
    <tr>
        <td>
            <form:label path="address">
                <spring:message text="address"/>
            </form:label>
        </td>
        <td>
            <form:input path="address" />
        </td>
       
    </tr>
  
 <%--   </tr>--%>
    <tr>
        <td colspan="2">
            <c:if test="${!empty supplier.name}">
                <input type="submit"
                    value="<spring:message text="Edit Supplier"/>" />
            </c:if>
            <c:if test="${empty supplier.name}">
                <input type="submit"
                    value="<spring:message text="Add Supplier"/>" />
         </c:if>
        </td>
    </tr>
    
</table>  
</form:form>
<center><h3>List of Supplier</h3></center>

<c:if test="${not empty suppliers}">
<div class="container">
<table class="table table-bordered">

<!-- <table class="table table-striped"> -->
<thead>
    <!-- <table class="userTable"> -->
    <!-- <tr> -->
     <tr class="info">
    
        <th width="160">Name</th>
       <th width="100">Address</th>
        <th width="120">Action</th>
        <th width="140">Action</th>
       
    </tr>
    
    <c:forEach items="${suppliers}" var="supplier">
        <tr>
         
            <td>${supplier.name}</td>
            
       
             <td>${supplier.address}</td>
       
           <td><a href="<c:url value='/editSupplier/${supplier.id}'/>" >Edit</a></td>
            <td><a href="<c:url value='/deleteSupplier/${supplier.id}'/>" >Delete</a></td>
          
        </tr>
    </c:forEach>
    </thead>
   
    </table>
    </div>
</c:if>

  
</body>
</html>